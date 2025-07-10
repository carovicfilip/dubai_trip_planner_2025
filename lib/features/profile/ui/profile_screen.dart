import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String name = "Filip Čarović";
  final String email = "filip@example.com";

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        Center(child: CircleAvatar(radius: 50, backgroundColor: Colors.grey)),
        SizedBox(height: 16),
        Center(child: Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        Center(child: Text(email)),
        SizedBox(height: 24),
        ListTile(leading: Icon(Icons.settings), title: Text("Edit Profile"), onTap: () {}),
        ListTile(leading: Icon(Icons.book_online), title: Text("My Bookings"), onTap: () {}),
        ListTile(leading: Icon(Icons.logout), title: Text("Logout"), onTap: () {}),
      ],
    );
  }
}
