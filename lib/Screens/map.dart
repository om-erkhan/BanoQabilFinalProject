import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:uuid/uuid.dart';
import 'package:geocoding/geocoding.dart';

class MarkerProvider with ChangeNotifier {
  List<Marker> markers = [];

  Future<void> getCurrentLocation(BuildContext context) async {
    bool locationServiceEnabled;
    LocationPermission locationPermission;

    // Check if location services are enabled
    locationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!locationServiceEnabled) {
      // Handle location services disabled scenario
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Location Services Disabled'),
          content:
              const Text('Please enable location services to use this app.'),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      );
      return;
    }

    // Request location permission
    locationPermission = await Geolocator.checkPermission();
    if (locationPermission == LocationPermission.denied ||
        locationPermission == LocationPermission.deniedForever) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission != LocationPermission.whileInUse &&
          locationPermission != LocationPermission.always) {
        // Handle location permission denied scenario
        showDialog(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Location Permission Denied'),
            content:
                const Text('Please grant location permission to use this app.'),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
        return;
      }
    }

    // Get the current position
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
    );

    // Convert coordinates to an address
    List<Placemark> placemarks = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
    );
    String areaName = placemarks.first.subLocality ?? '';

    // Update the markers list with the current location
    markers = [
      Marker(
        markerId: const MarkerId('1'),
        position: LatLng(position.latitude, position.longitude),
        infoWindow: InfoWindow(
          title: 'My Position',
          snippet:
              'Lat: ${position.latitude.toStringAsFixed(6)}, Lng: ${position.longitude.toStringAsFixed(6)}, Area: $areaName',
        ),
      ),
    ];
    notifyListeners();
  }
}

class Map extends StatefulWidget {
  const Map({Key? key}) : super(key: key);

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  TextEditingController _locationController = TextEditingController();

  FocusNode _textFieldFocus = FocusNode();
  var uuid = Uuid();
  String _sessionToken = '1234';
  List<dynamic> _placesList = [];
  LatLng? selectedCoordinates;
  String? selectedLocationName;

  @override
  void initState() {
    super.initState();
    _locationController.addListener(() {
      onChange();
    });
  }

  void onChange() {
    if (_sessionToken == null) {
      setState(() {
        _sessionToken = uuid.v1();
      });
    }

    getSuggestion(_locationController.text);
  }

  void getSuggestion(String input) async {
    String api_key = "AIzaSyDdMbuQV_pdSotsuNcnf6t88p5J4sHLCWc";
    String baseURL =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json';
    String request =
        '$baseURL?input=$input&key=$api_key&sessiontoken=$_sessionToken';

    print('Request URL: $request');

    var response = await http.get(Uri.parse(request));
    var data = response.body.toString();
    print('data');
    print(data);
    if (response.statusCode == 200) {
      setState(() {
        _placesList = jsonDecode(response.body.toString())['predictions'];
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  void dispose() {
    _textFieldFocus.dispose();
    super.dispose();
  }

  void selectLocation(LatLng location, String name) {
    setState(() {
      selectedCoordinates = location;
      selectedLocationName = name;
      _locationController.text = ""; // Clear the text field
      _placesList = []; // Clear the places list
    });
    placeMarker(location); // Place a marker on the selected location
  }

  void placeMarker(LatLng location) {
    final markerProvider = Provider.of<MarkerProvider>(context, listen: false);
    markerProvider.markers = [
      Marker(
        markerId: const MarkerId('selected_location'),
        position: location,
        infoWindow: InfoWindow(
            title: 'Selected Location', snippet: selectedLocationName ?? ''),
      ),
    ];
    _locationController.text = selectedLocationName ?? '';
    markerProvider.notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    final markerProvider = Provider.of<MarkerProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Maps Screen',
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                GoogleMap(
                  zoomControlsEnabled: false,
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(0, 0),
                    zoom: 4,
                  ),
                  markers: Set<Marker>.of(markerProvider.markers),
                  onMapCreated: (controller) {
                    markerProvider.getCurrentLocation(context);
                  },
                  myLocationEnabled: true,
                  myLocationButtonEnabled: true,
                  padding: EdgeInsets.only(top: 570, left: 16),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xFFFF5C00)),
                      ),
                      onPressed: () {
                        // Add your onPressed logic here
                      },
                      child: const Text(
                        'CONFIRM YOUR ORDER?',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
