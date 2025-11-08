import 'package:dubai_trip_planner_2025/core/repositories/place_repository.dart';
import 'package:dubai_trip_planner_2025/core/widgets/custom_app_bar.dart';
import 'package:dubai_trip_planner_2025/core/widgets/promo_banner.dart';
import 'package:dubai_trip_planner_2025/features/explore/ui/widgets/places_card.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favoritePlaces = PlaceRepository.getFeaturedPlaces();

    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Profile',
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              PromoBanner(),
              SizedBox(height: 20),
              Text(
                "Favorites",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 320,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: favoritePlaces.length,
                  itemBuilder: (context, index) {
                    return PlacesCard(
                      place: favoritePlaces[index],
                      index: index,
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              ListTile(leading: Icon(Icons.privacy_tip), title: Text("Privacy Policy"), onTap: () {}),
              ListTile(leading: Icon(Icons.description), title: Text("Terms of use"), onTap: () {}),
              ListTile(leading: Icon(Icons.support_agent), title: Text("Support"), onTap: () {}),
              // ListTile(leading: Icon(Icons.star_rate), title: Text("Rate the app"), onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
