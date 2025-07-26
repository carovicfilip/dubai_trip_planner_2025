import 'package:flutter/material.dart';

class NearbyPlaceCardCard extends StatelessWidget {
  final String placeId;
  final String imageUrl;
  final String title;
  final int index;

  const NearbyPlaceCardCard({
    super.key,
    required this.placeId,
    required this.imageUrl,
    required this.title,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 180,
          margin: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
              image: NetworkImage(
                'https://media.cntravellerme.com/photos/6532393cb5ada0792cba9dae/16:9/w_2240,c_limit/Palm%20West%20Beach.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: 180,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: const BorderRadius.vertical(bottom: Radius.circular(12)),
            ),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
