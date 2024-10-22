import 'package:calculator/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'cart_page.dart';
import 'create_account_page.dart';
import 'dashboard_page.dart';
import 'screens/sign_in_page.dart';  // Import your newly created screen
import 'screens/dashboard_page.dart';
import 'screens/create_account_page.dart';
import 'screens/cart_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multi Page App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Define your routes here
      initialRoute: '/',
      routes: {
        '/': (context) => SignInPage(),            // Home page (Sign In page)
        '/dashboard': (context) => DashboardPage(), // Dashboard screen
        '/create_account': (context) => CreateAccountPage(), // Create Account screen
        '/cart': (context) => CartPage(),           // Cart screen
      },
    );
  }
}
