import 'package:dubai_trip_planner_2025/core/models/place.dart';
import 'package:dubai_trip_planner_2025/core/widgets/custom_back_button.dart';
import 'package:dubai_trip_planner_2025/core/widgets/favorite_button.dart';
import 'package:flutter/material.dart';

class MoreDetailsScreen extends StatelessWidget {
  final Place place;

  const MoreDetailsScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none, // 👈 bitno da omogući prelaženje van Stack-a
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                child: Image.network(
                  place.imageUrl,
                  width: double.infinity,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                left: 10,
                child: CustomBackButton(),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: FavoriteButton(),
              ),
              // 👇 Tvoj container u donjem desnom uglu, koji prelazi ispod sadržaja
              // Positioned(
              //   bottom: -60,
              //   right: 28,
              //   child: Container(
              //     width: 130,
              //     height: 130,
              //     decoration: BoxDecoration(
              //       shape: BoxShape.circle,
              //       border: Border.all(
              //         color: Colors.white, // 👈 beli border
              //         width: 2,
              //       ),
              //       image: DecorationImage(
              //         image: NetworkImage(place.imageUrl),
              //         fit: BoxFit.cover, // 👈 da lepo popuni krug
              //       ),
              //     ),
              //   ),
              // ),

            ],
          ),


          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              place.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              place.description,
              style: const TextStyle(fontSize: 15, color: Colors.black87),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                if (place.reviewSummary != null)
                  _InfoChip(
                    icon: Icons.star_rounded,
                    label: place.reviewSummary!,
                  ),
                _InfoChip(
                  icon: Icons.access_time_rounded,
                  label: place.openingHours,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Location",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              place.locationName ?? 'Location details coming soon.',
              style: const TextStyle(color: Colors.black54),
            ),
          ),
          const SizedBox(height: 16),
          // Placeholder for future map integration
          // SizedBox(
          //   height: 200,
          //   child: GoogleMap(...)
          // ),
          const SizedBox(height: 8),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _InfoChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _InfoChip({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 18, color: Colors.black87),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(
              fontSize: 13,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}