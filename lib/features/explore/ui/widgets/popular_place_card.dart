import 'package:flutter/material.dart';

class PopularPlaceCard extends StatelessWidget {
  final String placeId;
  final String imageUrl;
  final String title;
  final int index;

  const PopularPlaceCard({
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
          width: 200,
          margin: const EdgeInsets.only(right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
              image: NetworkImage(
                'https://cf.bstatic.com/xdata/images/hotel/max1024x768/675859513.jpg?k=cbb19bcc2fd1ab8b431d538e96cd0372c4738a46c69d9204d60649dcac98d843&o=',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: 200,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: const BorderRadius.vertical(bottom: Radius.circular(12)),
            ),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          left: -20,
          bottom: 10,
          child: Stack(
            children: [
              Text(
                '${index + 1}',
                style: TextStyle(
                  fontSize: 120,
                  fontWeight: FontWeight.bold,
                  foreground: Paint()
                    ..shader = const LinearGradient(
                      colors: [
                        Color(0xFF003398),
                        Color(0xFFA3C8F8),
                      ],
                    ).createShader(const Rect.fromLTWH(0, 0, 120, 120))
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}