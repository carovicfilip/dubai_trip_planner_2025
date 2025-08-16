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
          width: 180,
          margin: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Favorite button - top right
        // Favorite button - top right
        Positioned(
          top: 6,
          right: 25,
          child: CircleAvatar(
            radius: 20, // smaller circle
            backgroundColor: Colors.black26,
            child: IconButton(
              padding: EdgeInsets.zero, // remove extra padding
              icon: const Icon(Icons.favorite_border, color: Colors.white, size: 20),
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
            width: 180,
            padding: const EdgeInsets.all(12),
            decoration: const BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(12)),
            ),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}
