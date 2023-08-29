import 'sushiRestaurant.dart';
import 'package:flutter/material.dart';
import 'edoJapeneseCuisine.dart';
import 'Fujima.dart';
import 'Sakura.dart';
import 'miyakoPanAsian.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/main.dart';
import 'catalogue.dart';
import 'map.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<CartItem> cartItems = context.watch<CartModel>().getItems();

    // Calculate the total sum of prices
    double totalSum = cartItems.fold(0.0, (sum, cartItem) {
      return sum + (cartItem.price * cartItem.quantity);
    });

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Cart Screen',
          style: TextStyle(
              color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
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
            Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartItems.length,
                    itemBuilder: (context, index) {
                      CartItem cartItem = cartItems[index];
                      return Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              cartItem.name,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.remove),
                                  onPressed: () {
                                    if (cartItem.quantity > 1) {
                                      cartItem.quantity--;
                                    }
                                    context.read<CartModel>().notifyListeners();
                                  },
                                ),
                                Text(
                                  '${cartItem.quantity}',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                IconButton(
                                  icon: Icon(Icons.add),
                                  onPressed: () {
                                    cartItem.quantity++;
                                    context.read<CartModel>().notifyListeners();
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.delete),
                                  onPressed: () {
                                    context
                                        .read<CartModel>()
                                        .removeItem(cartItem);
                                  },
                                ),
                              ],
                            ),
                            Text(
                              '\$${(cartItem.price * cartItem.quantity).toStringAsFixed(2)}',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total:',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '\$${totalSum.toStringAsFixed(2)}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              // Add your onPressed logic here
                            },
                            icon: Icon(
                              Icons.info, // Shopping cart icon
                              color: Color(0xFFFF5C00),
                            ),
                          ),
                          Text(
                            'WE DO ONLY C.O.D! ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            child: Text(
                              'GO TO MAP.',
                              style: TextStyle(
                                color: Color(0xFFFF5C00),
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Map(),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
