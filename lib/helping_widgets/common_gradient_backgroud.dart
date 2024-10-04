import 'package:flutter/material.dart';

BoxDecoration gradientBackground() {
  return BoxDecoration(
    gradient: LinearGradient(
      colors: [Color(0xFF004aad), Color(0xFFcb6ce6)],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );
}