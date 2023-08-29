import 'sushiRestaurant.dart';
import 'package:flutter/material.dart';

import 'Sakura.dart';
import 'catalogue.dart';
import 'edoJapeneseCuisine.dart';
import 'miyakoPanAsian.dart';

import 'package:provider/provider.dart';
import 'cartscreen.dart';

class CartModel extends ChangeNotifier {
  List<CartItem> cartItems = [];

  void addItem(CartItem item) {
    int existingItemIndex = cartItems.indexWhere(
      (cartItem) => cartItem.name == item.name,
    );

    if (existingItemIndex != -1) {
      // If the item exists, increase its quantity
      cartItems[existingItemIndex].quantity++;
    } else {
      // If the item doesn't exist, add it to the cart
      cartItems.add(item);
    }

    notifyListeners();
  }

  void removeItem(CartItem item) {
    cartItems.remove(item);
    notifyListeners();
  }

  List<CartItem> getItems() {
    return cartItems;
  }
}

class CartItem {
  final String name;
  final double price;
  int quantity; // Add a quantity field

  CartItem(
      {required this.name,
      required this.price,
      this.quantity = 1}); // Initialize quantity with 1
}

class Fujima extends StatefulWidget {
  const Fujima({super.key});

  @override
  State<Fujima> createState() => _FujimaState();
}

class _FujimaState extends State<Fujima> {
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
                "Karachi", // Replace with your desired text
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 230,
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
                    Icons.search,
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
                                  image: AssetImage("assets/Frame 5.png"),
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
                                      'MILLE FEUILLE'; // Replace with actual item name
                                  double itemPrice =
                                      70; // Replace with actual item price
                                  CartItem cartItem = CartItem(
                                      name: itemName, price: itemPrice);
                                  context.read<CartModel>().addItem(cartItem);
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
                                  image: AssetImage("assets/Frame 6.png"),
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
                                      'RICE BALLS'; // Replace with actual item name
                                  double itemPrice =
                                      80; // Replace with actual item price
                                  CartItem cartItem = CartItem(
                                      name: itemName, price: itemPrice);
                                  context.read<CartModel>().addItem(cartItem);
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
                                  image: AssetImage("assets/Frame 7.png"),
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
                                      'SUSHI SASHIMI'; // Replace with actual item name
                                  double itemPrice =
                                      90; // Replace with actual item price
                                  CartItem cartItem = CartItem(
                                      name: itemName, price: itemPrice);
                                  context.read<CartModel>().addItem(cartItem);
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
                                  image: AssetImage("assets/Frame 2.png"),
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
                                      'JAPANESE CUISINE'; // Replace with actual item name
                                  double itemPrice =
                                      100; // Replace with actual item price
                                  CartItem cartItem = CartItem(
                                      name: itemName, price: itemPrice);
                                  context.read<CartModel>().addItem(cartItem);
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
                            color: Color(0xFFFF5C00),
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
