import 'package:dubai_trip_planner_2025/core/widgets/promo_banner.dart';
import 'package:dubai_trip_planner_2025/features/explore/ui/widgets/places_card.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(fontSize: 22, color: Color(0xFF101A26)),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
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
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return PlacesCard(
                      placeId: '1',
                      imageUrl:
                          'https://cf.bstatic.com/xdata/images/hotel/max1024x768/675859513.jpg?k=cbb19bcc2fd1ab8b431d538e96cd0372c4738a46c69d9204d60649dcac98d843&o=',
                      title: 'Burj Al Arab',
                      index: index, description: 'ddfsfsdf', distance: '555', rate: '4.4 fjdlfjdl',
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
