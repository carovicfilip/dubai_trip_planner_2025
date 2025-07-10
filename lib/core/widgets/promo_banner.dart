import 'package:flutter/material.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.orange, Colors.pink]),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Discover Dubai", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)),
                Text("Find the best deals and attractions", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Search & Filter"))
        ],
      ),
    );
  }
}
