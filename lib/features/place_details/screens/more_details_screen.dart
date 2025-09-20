import 'package:dubai_trip_planner_2025/core/widgets/custom_back_button.dart';
import 'package:dubai_trip_planner_2025/core/widgets/favorite_button.dart';
import 'package:flutter/material.dart';
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
              Positioned(
                bottom: -60,
                right: 28,
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white, // 👈 beli border
                      width: 2,
                    ),
                    image: DecorationImage(
                      image: NetworkImage(place.imageUrl),
                      fit: BoxFit.cover, // 👈 da lepo popuni krug
                    ),
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
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
          //   child: Wrap(
          //     spacing: 8,
          //     children: place.categories
          //         .map((cat) => Chip(label: Text(cat)))
          //         .toList(),
          //   ),
          // ),
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