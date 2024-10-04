import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Using GetX for navigation

import '../helping_widgets/common_gradient_backgroud.dart';
import 'dashboard_page.dart'; // Import your dashboard page

class BookPage extends StatelessWidget {
  final List<Map<String, dynamic>> books = [
    {'title': 'Book 1', 'isAvailable': true},
    {'title': 'Book 2', 'isAvailable': false},
    {'title': 'Book 3', 'isAvailable': true},
  ];

  BookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Available Books'),
        backgroundColor: Colors.deepPurple,
        actions: [
          GestureDetector(
            onTap: () {
              // Navigate to Dashboard page when avatar is clicked
              Get.to(() => DashboardPage());
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person, // You can replace it with a profile image
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: gradientBackground(),
        child: ListView.builder(
          itemCount: books.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.all(10),
              color: books[index]['isAvailable'] ? Colors.white : Colors.grey,
              child: ListTile(
                title: Text(
                  books[index]['title'],
                  style: TextStyle(
                    color: books[index]['isAvailable'] ? Colors.black : Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: books[index]['isAvailable']
                    ? const Text('Available', style: TextStyle(color: Colors.green))
                    : const Text('Unavailable', style: TextStyle(color: Colors.red)),
              ),
            );
          },
        ),
      ),
    );
  }
}
