import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String name;
  final String savings;

  const HeaderWidget({required this.name, required this.savings});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome to", style: TextStyle(fontSize: 16, color: Colors.red)),
            Text("Dubai, UAE", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red)),
          ],
        ),
        // Column(
        //   children: [
        //     Text("Total Savings", style: TextStyle(fontSize: 12, color: Colors.black)),
        //     Text(savings, style: TextStyle(fontSize: 16, color: Colors.black26, fontWeight: FontWeight.bold)),
        //   ],
        //)
      ],
    );
  }
}
