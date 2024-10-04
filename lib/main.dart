import 'package:book_sharing/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(BookSharingApp());
}

class BookSharingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Sharing App',
      theme: ThemeData(
        fontFamily: 'Roboto',
        primaryColor: Colors.deepPurple,
      ),
      home: SplashScreen(),
    );
  }
}