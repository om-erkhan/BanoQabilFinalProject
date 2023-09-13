import 'package:flutter_application_1/Screens/restaurants/Fujima.dart';

import '../../backendservices/FirebaseServices.dart';
import '../landingscreen/first.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../cart/cartscreen.dart';

class Catalogue extends StatefulWidget {
  const Catalogue({Key? key}) : super(key: key);
  @override
  State<Catalogue> createState() => _CatalogueState();
}

double itemPrice = 50.0;
double itemPrice1 = 60.0;
double itemPrice2 = 70.0;
double itemPrice3 = 80.0;
double itemPrice4 = 90.0;
double itemPrice5 = 100.0;

class _CatalogueState extends State<Catalogue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
            color: Colors.white), // Set the back button color to white
        actions: [
          // Your other actions here
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Image.asset(
                  "assets/Frame 1.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 5),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Align(
                            alignment: Alignment.center,
                            child: Stack(children: [
                              Container(
                                width: 190, // Adjust the width as needed
                                height: 450, // Adjust the height as needed
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          30.0)), // Adjust the value as needed
                                  image: DecorationImage(
                                    image: AssetImage("assets/Frame 30.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 7,
                                left: 35,
                                right: 35,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    fixedSize: Size(80, 40),
                                  ),
                                  onPressed: () {
                                    String itemName =
                                        'EDO MISO'; // Replace with actual item name
                                    double itemPrice =
                                        50.0; // Replace with actual item price
                                    CartItem cartItem = CartItem(
                                        name: itemName, price: itemPrice);
                                    context.read<CartModel>().addItem(cartItem);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content:
                                            Text('$itemName added to cart.'),
                                        duration: Duration(
                                            seconds:
                                                2), // Adjust the duration as needed
                                        behavior: SnackBarBehavior.fixed,
                                        // This makes it appear at the top
                                      ),
                                    );
                                  },
                                  child: Text(
                                    '\$ ${itemPrice.toStringAsFixed(2)}',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ])),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Align(
                            alignment: Alignment.center,
                            child: Stack(children: [
                              Container(
                                width: 190, // Adjust the width as needed
                                height: 450, // Adjust the height as needed
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          30.0)), // Adjust the value as needed
                                  image: DecorationImage(
                                    image: AssetImage("assets/Frame 31.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 7,
                                left: 35,
                                right: 35,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    fixedSize: Size(80, 40),
                                  ),
                                  onPressed: () {
                                    String itemName =
                                        'PAN ASIAN'; // Replace with actual item name
                                    double itemPrice =
                                        30.0; // Replace with actual item price
                                    CartItem cartItem = CartItem(
                                        name: itemName, price: itemPrice);
                                    context.read<CartModel>().addItem(cartItem);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content:
                                            Text('$itemName added to cart.'),
                                        duration: Duration(
                                            seconds:
                                                2), // Adjust the duration as needed
                                        behavior: SnackBarBehavior.fixed,
                                        // This makes it appear at the top
                                      ),
                                    );
                                  },
                                  child: Text(
                                    '\$ ${itemPrice1.toStringAsFixed(2)}',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ])),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 5),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Align(
                            alignment: Alignment.center,
                            child: Stack(children: [
                              Container(
                                width: 190, // Adjust the width as needed
                                height: 450, // Adjust the height as needed
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          30.0)), // Adjust the value as needed
                                  image: DecorationImage(
                                    image: AssetImage("assets/Frame 3.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 7,
                                left: 35,
                                right: 35,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    fixedSize: Size(80, 40),
                                  ),
                                  onPressed: () {
                                    String itemName =
                                        'DISH YAKI SOBA'; // Replace with actual item name
                                    double itemPrice =
                                        50; // Replace with actual item price
                                    CartItem cartItem = CartItem(
                                        name: itemName, price: itemPrice);
                                    context.read<CartModel>().addItem(cartItem);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content:
                                            Text('$itemName added to cart.'),
                                        duration: Duration(
                                            seconds:
                                                2), // Adjust the duration as needed
                                        behavior: SnackBarBehavior.fixed,
                                        // This makes it appear at the top
                                      ),
                                    );
                                  },
                                  child: Text(
                                    '\$ ${itemPrice.toStringAsFixed(2)}',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ])),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Align(
                            alignment: Alignment.center,
                            child: Stack(children: [
                              Container(
                                width: 190, // Adjust the width as needed
                                height: 450, // Adjust the height as needed
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          30.0)), // Adjust the value as needed
                                  image: DecorationImage(
                                    image: AssetImage("assets/Frame 4.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 7,
                                left: 35,
                                right: 35,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    fixedSize: Size(80, 40),
                                  ),
                                  onPressed: () {
                                    String itemName =
                                        'MACKEREL FISH'; // Replace with actual item name
                                    double itemPrice =
                                        60; // Replace with actual item price
                                    CartItem cartItem = CartItem(
                                        name: itemName, price: itemPrice);
                                    context.read<CartModel>().addItem(cartItem);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content:
                                            Text('$itemName added to cart.'),
                                        duration: Duration(
                                            seconds:
                                                2), // Adjust the duration as needed
                                        behavior: SnackBarBehavior.fixed,
                                        // This makes it appear at the top
                                      ),
                                    );
                                  },
                                  child: Text(
                                    '\$ ${itemPrice1.toStringAsFixed(2)}',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ])),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 5),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Align(
                            alignment: Alignment.center,
                            child: Stack(children: [
                              Container(
                                width: 190, // Adjust the width as needed
                                height: 450, // Adjust the height as needed
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          30.0)), // Adjust the value as needed
                                  image: DecorationImage(
                                    image: AssetImage("assets/Frame 9.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 7,
                                left: 35,
                                right: 35,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    fixedSize: Size(80, 40),
                                  ),
                                  onPressed: () {
                                    String itemName =
                                        'RICE MEAT BALLS'; // Replace with actual item name
                                    double itemPrice =
                                        60; // Replace with actual item price
                                    CartItem cartItem = CartItem(
                                        name: itemName, price: itemPrice);
                                    context.read<CartModel>().addItem(cartItem);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content:
                                            Text('$itemName added to cart.'),
                                        duration: Duration(
                                            seconds:
                                                2), // Adjust the duration as needed
                                        behavior: SnackBarBehavior.fixed,
                                        // This makes it appear at the top
                                      ),
                                    );
                                  },
                                  child: Text(
                                    '\$ ${itemPrice1.toStringAsFixed(2)}',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ])),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Align(
                            alignment: Alignment.center,
                            child: Stack(children: [
                              Container(
                                width: 190, // Adjust the width as needed
                                height: 450, // Adjust the height as needed
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          30.0)), // Adjust the value as needed
                                  image: DecorationImage(
                                    image: AssetImage("assets/Frame 10.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 7,
                                left: 35,
                                right: 35,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    fixedSize: Size(80, 40),
                                  ),
                                  onPressed: () {
                                    String itemName =
                                        'RICE CUISINE'; // Replace with actual item name
                                    double itemPrice =
                                        70; // Replace with actual item price
                                    CartItem cartItem = CartItem(
                                        name: itemName, price: itemPrice);
                                    context.read<CartModel>().addItem(cartItem);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content:
                                            Text('$itemName added to cart.'),
                                        duration: Duration(
                                            seconds:
                                                2), // Adjust the duration as needed
                                        behavior: SnackBarBehavior.fixed,
                                        // This makes it appear at the top
                                      ),
                                    );
                                  },
                                  child: Text(
                                    '\$ ${itemPrice2.toStringAsFixed(2)}',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ])),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 5),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Align(
                            alignment: Alignment.center,
                            child: Stack(children: [
                              Container(
                                width: 190, // Adjust the width as needed
                                height: 450, // Adjust the height as needed
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          30.0)), // Adjust the value as needed
                                  image: DecorationImage(
                                    image: AssetImage("assets/Frame 15.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 7,
                                left: 35,
                                right: 35,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    fixedSize: Size(80, 40),
                                  ),
                                  onPressed: () {
                                    String itemName =
                                        'CHEESE BALLS '; // Replace with actual item name
                                    double itemPrice =
                                        60; // Replace with actual item price
                                    CartItem cartItem = CartItem(
                                        name: itemName, price: itemPrice);
                                    context.read<CartModel>().addItem(cartItem);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content:
                                            Text('$itemName added to cart.'),
                                        duration: Duration(
                                            seconds:
                                                2), // Adjust the duration as needed
                                        behavior: SnackBarBehavior.fixed,
                                        // This makes it appear at the top
                                      ),
                                    );
                                  },
                                  child: Text(
                                    '\$ ${itemPrice1.toStringAsFixed(2)}',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ])),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Align(
                            alignment: Alignment.center,
                            child: Stack(children: [
                              Container(
                                width: 190, // Adjust the width as needed
                                height: 450, // Adjust the height as needed
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          30.0)), // Adjust the value as needed
                                  image: DecorationImage(
                                    image: AssetImage("assets/Frame 16.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 7,
                                left: 35,
                                right: 35,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    fixedSize: Size(80, 40),
                                  ),
                                  onPressed: () {
                                    String itemName =
                                        'SPRING ROLLS'; // Replace with actual item name
                                    double itemPrice =
                                        70; // Replace with actual item price
                                    CartItem cartItem = CartItem(
                                        name: itemName, price: itemPrice);
                                    context.read<CartModel>().addItem(cartItem);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content:
                                            Text('$itemName added to cart.'),
                                        duration: Duration(
                                            seconds:
                                                2), // Adjust the duration as needed
                                        behavior: SnackBarBehavior.fixed,
                                        // This makes it appear at the top
                                      ),
                                    );
                                  },
                                  child: Text(
                                    '\$ ${itemPrice2.toStringAsFixed(2)}',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ])),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 5),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Align(
                            alignment: Alignment.center,
                            child: Stack(children: [
                              Container(
                                width: 190, // Adjust the width as needed
                                height: 450, // Adjust the height as needed
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          30.0)), // Adjust the value as needed
                                  image: DecorationImage(
                                    image: AssetImage("assets/Frame 24.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 7,
                                left: 35,
                                right: 35,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    fixedSize: Size(80, 40),
                                  ),
                                  onPressed: () {
                                    String itemName =
                                        'FIRE CHICKEN'; // Replace with actual item name
                                    double itemPrice =
                                        90; // Replace with actual item price
                                    CartItem cartItem = CartItem(
                                        name: itemName, price: itemPrice);
                                    context.read<CartModel>().addItem(cartItem);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content:
                                            Text('$itemName added to cart.'),
                                        duration: Duration(
                                            seconds:
                                                2), // Adjust the duration as needed
                                        behavior: SnackBarBehavior.fixed,
                                        // This makes it appear at the top
                                      ),
                                    );
                                  },
                                  child: Text(
                                    '\$ ${itemPrice4.toStringAsFixed(2)}',
                                    style: TextStyle(
                                      fontSize: 19,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ])),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Align(
                            alignment: Alignment.center,
                            child: Stack(children: [
                              Container(
                                width: 190, // Adjust the width as needed
                                height: 450, // Adjust the height as needed
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(
                                          30.0)), // Adjust the value as needed
                                  image: DecorationImage(
                                    image: AssetImage("assets/Frame 25.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 7,
                                left: 35,
                                right: 35,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    fixedSize: Size(80, 40),
                                  ),
                                  onPressed: () {
                                    String itemName =
                                        'BBQ CHICKEN'; // Replace with actual item name
                                    double itemPrice =
                                        100; // Replace with actual item price
                                    CartItem cartItem = CartItem(
                                        name: itemName, price: itemPrice);
                                    context.read<CartModel>().addItem(cartItem);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content:
                                            Text('$itemName added to cart.'),
                                        duration: Duration(
                                            seconds:
                                                2), // Adjust the duration as needed
                                        behavior: SnackBarBehavior.fixed,
                                        // This makes it appear at the top
                                      ),
                                    );
                                  },
                                  child: Text(
                                    '\$ ${itemPrice5.toStringAsFixed(2)}',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ])),
                      ),
                    ],
                  ),
                  SizedBox(height: 70)
                ],
              ),
            ),
            Positioned(
              bottom: 17,
              left: 0,
              right: 0,
              child: Row(
                children: [
                  SizedBox(width: 18),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                          Radius.circular(60.0)), // Adjust the value as needed
                    ),
                    height: 55,
                    width: 380,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Fujima()), // Replace NextScreen with the actual name of your next screen widget
                            );
                            // Add your onPressed logic here
                          },
                          icon: Icon(
                            size: 30,
                            Icons.home, // Shopping cart icon
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Catalogue()), // Replace NextScreen with the actual name of your next screen widget
                            );
                            // Add your onPressed logic here
                          },
                          icon: Icon(
                            size: 30,

                            Icons.view_list, // Shopping cart icon
                            color: Color(0xFFFF5C00),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CartScreen(),
                              ),
                            );
                          },
                          icon: Icon(
                            size: 30,

                            Icons.shopping_cart, // Shopping cart icon
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () async {
                            await FirebaseServices().signOut();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => First())));
                          },
                          icon: Icon(
                            size: 30,

                            Icons.logout, // Shopping cart icon
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
