import 'package:flutter/material.dart';
import 'package:restaurant_ui/views/restaurant_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.red),
        iconTheme: const IconThemeData(color: Colors.red),
        iconButtonTheme: IconButtonThemeData(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red))),
        textTheme: const TextTheme(bodyLarge: TextStyle(color: Colors.black,)),
        useMaterial3: true,
      ),
      home: const RestaurantHomePage(),
    );
  }
}

