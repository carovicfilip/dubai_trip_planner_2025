import 'package:dubai_trip_planner_2025/core/models/place.dart';
import 'package:flutter/material.dart';

class PopularPlaceCard extends StatelessWidget {
  final Place place;
  final int index;

  const PopularPlaceCard({
    super.key,
    required this.place,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 320,
          margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            border: Border.all( // 👈 beli border
              color: Colors.white,
              width: 4,
            ),
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: NetworkImage(place.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 4,
          child: Container(
            width: 320,
            padding: const EdgeInsets.all(12),
            // decoration: BoxDecoration(
            //   color: Colors.black26,
            //   borderRadius: const BorderRadius.vertical(bottom: Radius.circular(12)),
            // ),
            child: Text(
              place.title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
        ),
        Positioned(
          left: -35,
          bottom: 38,
          child: Stack(
            children: [
              Text(
                '${index + 1}',
                style: TextStyle(
                  fontSize: 160,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..shader = const LinearGradient(
                      colors: [
                        Color(0xFF101A26),
                        Color(0xFF003398),
                        Color(0xFFA3C8F8),
                      ],
                    ).createShader(const Rect.fromLTWH(0, 0, 120, 120))
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 6,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}