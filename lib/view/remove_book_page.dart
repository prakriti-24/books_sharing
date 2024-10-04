import 'package:flutter/material.dart';

class RemoveBookPage extends StatelessWidget {
  const RemoveBookPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Remove Books'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text('Book $index'),
              trailing: IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  // Handle book removal
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
