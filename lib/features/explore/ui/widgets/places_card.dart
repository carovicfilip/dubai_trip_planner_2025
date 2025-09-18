import 'package:flutter/material.dart';

class PlacesCard extends StatelessWidget {
  final String placeId;
  final String imageUrl;
  final String title;
  final int index;

  const PlacesCard({
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
        // Background image
        Container(
          width: 220,
          margin: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all( // 👈 beli border
              color: Colors.white,
              width: 4,
            ),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Favorite button - top right
        Positioned(
          top: 10,
          right: 28,
          child: CircleAvatar(
            radius: 20, // smaller circle
            backgroundColor: Colors.white70,
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(
                Icons.favorite_border,
                color: Colors.black12,
                size: 24,
              ),
              onPressed: () {
                // TODO: handle favorite toggle
              },
            ),
          ),
        ),

        // Title at bottom
        Positioned(
          bottom: 0,
          child: Container(
            width: 220,
            padding: const EdgeInsets.all(12),
            // decoration: const BoxDecoration(
            //   color: Colors.black26,
            //   borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            // ),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}
