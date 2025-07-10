import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Map<String, String>> favorites = [
    {"title": "Sky Lounge", "category": "Brunch", "image": "", "desc": "Rooftop dining with skyline view"},
    {"title": "Aqua Park", "category": "Leisure", "image": "", "desc": "Water fun for the whole family"},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16),
      itemCount: favorites.length,
      itemBuilder: (context, index) {
        final item = favorites[index];
        return Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: ListTile(
            leading: Container(width: 60, height: 60, color: Colors.grey),
            title: Text(item['title']!),
            subtitle: Text(item['desc']!),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        );
      },
    );
  }
}
