import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/cart_provider.dart';
import 'package:shop_app/home_page.dart';
// import 'package:shop_app/global_variable.dart';
// import 'package:shop_app/product__details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: 'Shoping App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 62, 67, 214),
            primary: const Color.fromARGB(255, 167, 170, 248),
          ),
          appBarTheme: const AppBarTheme(
            titleTextStyle: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            prefixIconColor: Colors.grey.shade700,
          ),
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 45,
              fontWeight: FontWeight.w800,
            ),
            titleMedium: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 28,
            ),
            bodySmall: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18,
            ),
          ),
          useMaterial3: true,
        ),
        home: const HomePage(),
      ),
    );
  }
}
