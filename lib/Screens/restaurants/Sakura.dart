import 'package:provider/provider.dart';

import '../../backendservices/FirebaseServices.dart';
import '../cart/cartscreen.dart';
import '../landingscreen/first.dart';
import 'Fujima.dart';
import 'sushiRestaurant.dart';
import 'package:flutter/material.dart';

import '../catalogue/catalogue.dart';
import 'edoJapeneseCuisine.dart';
import 'miyakoPanAsian.dart';

class Sakura extends StatefulWidget {
  const Sakura({super.key});

  @override
  State<Sakura> createState() => _SakuraState();
}

class _SakuraState extends State<Sakura> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 150,
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Restaurants", // Replace with your desired text
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 165,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border:
                      Border.all(color: Colors.white, width: 3), // White border
                ),
                child: CircleAvatar(
                  radius: 23,
                  backgroundColor: Color(0xFFFF5C00), // Orange background
                  child: Icon(
                    Icons.food_bank,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  height: 295,
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFF5C00), // Set the background color here
                    fixedSize: Size(110, 0), // Set the desired width and height
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Sakura()), // Replace NextScreen with the actual name of your next screen widget
                    );
                  },
                  child: Text(
                    'Sakura',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Set the background color here
                    fixedSize:
                        Size(125, 30), // Set the desired width and height
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Fujima()), // Replace NextScreen with the actual name of your next screen widget
                    );
                  },
                  child: Text(
                    'Fujiyama',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Set the background color here
                    fixedSize:
                        Size(190, 30), // Set the desired width and height
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Sushi()), // Replace NextScreen with the actual name of your next screen widget
                    );
                  },
                  child: Text(
                    'Sushi restaurant',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Set the background color here
                    fixedSize:
                        Size(200, 30), // Set the desired width and height
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Miyako()), // Replace NextScreen with the actual name of your next screen widget
                    );
                  },
                  child: Text(
                    'Miyako Pan Asian',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // Set the background color here
                    fixedSize:
                        Size(250, 30), // Set the desired width and height
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              EdoJapanese()), // Replace NextScreen with the actual name of your next screen widget
                    );
                  },
                  child: Text(
                    'Edo Japanese Cuisine',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 180,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.center,
                          child: Stack(children: [
                            Container(
                              width: 240, // Adjust the width as needed
                              height: 520, // Adjust the height as needed
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    30.0)), // Adjust the value as needed
                                image: DecorationImage(
                                  image: AssetImage("assets/Frame 8.png"),
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
                                      'SAKURA STAKES'; // Replace with actual item name
                                  double itemPrice =
                                      50; // Replace with actual item price
                                  CartItem cartItem = CartItem(
                                      name: itemName, price: itemPrice);
                                  context.read<CartModel>().addItem(cartItem);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('$itemName added to cart.'),
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
                                    fontSize: 22,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ])),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.center,
                          child: Stack(children: [
                            Container(
                              width: 240, // Adjust the width as needed
                              height: 520, // Adjust the height as needed
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(
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
                                      content: Text('$itemName added to cart.'),
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
                                    fontSize: 22,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ])),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.center,
                          child: Stack(children: [
                            Container(
                              width: 240, // Adjust the width as needed
                              height: 520, // Adjust the height as needed
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(
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
                                      content: Text('$itemName added to cart.'),
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
                                    fontSize: 22,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ])),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.center,
                          child: Stack(children: [
                            Container(
                              width: 240, // Adjust the width as needed
                              height: 520, // Adjust the height as needed
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    30.0)), // Adjust the value as needed
                                image: DecorationImage(
                                  image: AssetImage("assets/Frame 11.png"),
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
                                      'GARLIC SALAD'; // Replace with actual item name
                                  double itemPrice =
                                      80; // Replace with actual item price
                                  CartItem cartItem = CartItem(
                                      name: itemName, price: itemPrice);
                                  context.read<CartModel>().addItem(cartItem);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('$itemName added to cart.'),
                                      duration: Duration(
                                          seconds:
                                              2), // Adjust the duration as needed
                                      behavior: SnackBarBehavior.fixed,
                                      // This makes it appear at the top
                                    ),
                                  );
                                },
                                child: Text(
                                  '\$ ${itemPrice3.toStringAsFixed(2)}',
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ])),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.center,
                          child: Stack(children: [
                            Container(
                              width: 240, // Adjust the width as needed
                              height: 520, // Adjust the height as needed
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    30.0)), // Adjust the value as needed
                                image: DecorationImage(
                                  image: AssetImage("assets/Frame 12.png"),
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
                                      'THAI CURRY'; // Replace with actual item name
                                  double itemPrice =
                                      90; // Replace with actual item price
                                  CartItem cartItem = CartItem(
                                      name: itemName, price: itemPrice);
                                  context.read<CartModel>().addItem(cartItem);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('$itemName added to cart.'),
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
                                    fontSize: 22,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ])),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.center,
                          child: Stack(children: [
                            Container(
                              width: 240, // Adjust the width as needed
                              height: 520, // Adjust the height as needed
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(
                                    30.0)), // Adjust the value as needed
                                image: DecorationImage(
                                  image: AssetImage("assets/Frame 13.png"),
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
                                      'SHRIMP ROLL'; // Replace with actual item name
                                  double itemPrice =
                                      100; // Replace with actual item price
                                  CartItem cartItem = CartItem(
                                      name: itemName, price: itemPrice);
                                  context.read<CartModel>().addItem(cartItem);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('$itemName added to cart.'),
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
                                    fontSize: 22,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ])),
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
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
                            // Add your onPressed logic here
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Catalogue()), // Replace NextScreen with the actual name of your next screen widget
                            );
                          },
                          icon: Icon(
                            size: 30,

                            Icons.view_list, // Shopping cart icon
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            // Add your onPressed logic here
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
              )
            ],
          )
        ],
      ),
    );
  }
}
