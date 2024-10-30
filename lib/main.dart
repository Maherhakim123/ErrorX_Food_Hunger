import 'package:errorx/mainpage.dart';
import 'package:flutter/material.dart';
import 'splash_screen.dart'; // Ensure this import is correct

void main() async {
  // Uncomment if you are using Firebase
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Food Hunger', // Add a title for the app
      theme: ThemeData(
        primarySwatch: Colors.orange, // Set a primary color
      ),
      home: const SplashScreen(), // Set SplashScreen as the initial widget
    );
  }
}