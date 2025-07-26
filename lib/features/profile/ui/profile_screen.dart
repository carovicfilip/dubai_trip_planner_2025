import 'package:dubai_trip_planner_2025/core/widgets/promo_banner.dart';
import 'package:dubai_trip_planner_2025/features/explore/ui/widgets/nearby_place_card.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        elevation: 0,
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              PromoBanner(),
              SizedBox(height: 20),
              Text(
                "Favorites",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return NearbyPlaceCardCard(
                      placeId: '1',
                      imageUrl:
                          'https://cf.bstatic.com/xdata/images/hotel/max1024x768/675859513.jpg?k=cbb19bcc2fd1ab8b431d538e96cd0372c4738a46c69d9204d60649dcac98d843&o=',
                      title: 'Burj Al Arab',
                      index: index,
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              ListTile(leading: Icon(Icons.privacy_tip), title: Text("Privacy Policy"), onTap: () {}),
              ListTile(leading: Icon(Icons.description), title: Text("Terms of use"), onTap: () {}),
              ListTile(leading: Icon(Icons.support_agent), title: Text("Support"), onTap: () {}),
              ListTile(leading: Icon(Icons.star_rate), title: Text("Rate the app"), onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
