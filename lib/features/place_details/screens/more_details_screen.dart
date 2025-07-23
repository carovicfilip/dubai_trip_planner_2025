import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/place_model.dart';

class MoreDetailsScreen extends StatelessWidget {
  final Place place;

  const MoreDetailsScreen({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Image.network(
                place.imageUrl,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 40,
                left: 16,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
              ),
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
            child: Wrap(
              spacing: 8,
              children: place.categories
                  .map((cat) => Chip(label: Text(cat)))
                  .toList(),
            ),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Opening Hours",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(place.openingHours),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Location",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            height: 200,
            // child: GoogleMap(
            //   initialCameraPosition: CameraPosition(
            //     target: LatLng(place.latitude, place.longitude),
            //     zoom: 14,
            //   ),
            //   markers: {
            //     Marker(
            //       markerId: const MarkerId("place"),
            //       position: LatLng(place.latitude, place.longitude),
            //       infoWindow: InfoWindow(title: place.locationName),
            //     )
            //   },
            //   zoomControlsEnabled: false,
            //   myLocationButtonEnabled: false,
            // ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}