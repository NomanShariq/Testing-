import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String name = "Noman";
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Screen")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: $name", style: TextStyle(fontSize: 22)),
            SizedBox(height: 10),
            Text("Age: $age", style: TextStyle(fontSize: 22)),
            SizedBox(height: 30),

            Text(
              "Update Profile",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(labelText: "Enter Name"),
              onChanged: (value) => setState(() => name = value),
            ),

            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(labelText: "Enter Age"),
              keyboardType: TextInputType.number,
              onChanged: (value) =>
                  setState(() => age = int.tryParse(value) ?? age),
            ),

            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text("Save Changes")),
          ],
        ),
      ),
    );
  }
}
