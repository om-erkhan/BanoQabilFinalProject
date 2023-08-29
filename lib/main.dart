import 'package:provider/provider.dart';

import 'Screens/catalogue.dart';
import 'package:flutter/material.dart';
import 'Screens/first.dart';
import 'Screens/map.dart';
import 'Screens/catalogue.dart';
import 'Screens/cartscreen.dart';
import 'Screens/Fujima.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MarkerProvider()),
      ChangeNotifierProvider(create: (context) => CartModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const First(),
    );
  }
}
