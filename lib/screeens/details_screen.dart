import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details Screen")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "This is an intermediate-level Flutter App.",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              "You can expand this project by adding API calls, database, authentication, and more screens.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
