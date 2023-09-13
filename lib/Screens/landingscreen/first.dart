import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/restaurants/Fujima.dart';
import 'package:flutter_application_1/backendservices/FirebaseServices.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/Untitled.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment(0.0, 0.90),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFFF5C00), // Set the background color here
              fixedSize: Size(300, 60), // Set the desired width and height
            ),
            onPressed: () async {
              await FirebaseServices().signInWithGoogle();

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Fujima()), // Replace NextScreen with the actual name of your next screen widget
              );
            },
            child: const Text(
              'Sign in with Google',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ]),
    );
  }
}
