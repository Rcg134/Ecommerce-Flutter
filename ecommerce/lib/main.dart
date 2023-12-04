import 'package:ecommerce/Data/global_variables.dart';
import 'package:ecommerce/pages/product_details_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping App',
      debugShowCheckedModeBanner: false,
      home: ProductDetail(
        product: products[0],
      ),
      theme: ThemeData(
        fontFamily: 'lato',
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
          primary: Colors.red,
          secondary: Colors.white,
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 231, 228, 228),
        appBarTheme: const AppBarTheme(color: Colors.red),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          prefixIconColor: const Color.fromARGB(255, 0, 0, 0),
        ),
      ),
    );
  }
}
