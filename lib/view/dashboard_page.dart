import 'package:book_sharing/view/add_book_page.dart';
import 'package:book_sharing/view/remove_book_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'book_page.dart';
import 'chat_page.dart';
import 'profile_page.dart';


class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DASHBOARD'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Implement drawer functionality if needed
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          children: [
            _buildDashboardItem(Icons.person, 'Owner name', () {
              Get.to(() => const ProfilePage());
            }),
            _buildDashboardItem(Icons.add_box, 'Add book', () {
              Get.to(() => const AddBookPage());
            }),
            _buildDashboardItem(Icons.notifications, 'Remove books', () {
              Get.to(() => const RemoveBookPage());
            }),
            _buildDashboardItem(Icons.list_alt, 'All books', () {
              Get.to(() => BookPage());
            }),
            _buildDashboardItem(Icons.mail, 'Inbox', () {
              Get.to(() => const ChatPage());
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardItem(IconData icon, String label, Function() onTap) {
    return Card(
      elevation: 4.0,
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 50.0),
              const SizedBox(height: 8.0),
              Text(label),
            ],
          ),
        ),
      ),
    );
  }
}
