import 'package:dubai_trip_planner_2025/features/explore/ui/widgets/nearby_place_card.dart';
import 'package:dubai_trip_planner_2025/features/place_details/models/place_model.dart';
import 'package:dubai_trip_planner_2025/features/place_details/screens/more_details_screen.dart';
import 'package:flutter/material.dart';

class NearbyPlacesSection extends StatelessWidget {
  const NearbyPlacesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Nearby Places", style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 12),
        SizedBox(
          height: 210,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MoreDetailsScreen(
                        place: Place(
                          title: 'Burj Al Arab',
                          imageUrl:
                              'https://cf.bstatic.com/xdata/images/hotel/max1024x768/675859513.jpg?k=cbb19bcc2fd1ab8b431d538e96cd0372c4738a46c69d9204d60649dcac98d843&o=',
                          categories: ['Beach', 'Luxury', 'Relax'],
                          // primer
                          openingHours: 'Open 24/7',
                          locationName: 'Jumeirah St, Dubai',
                          latitude: 25.1413,
                          longitude: 55.1853,
                        ),
                      ),
                    ),
                  );
                },
                child: NearbyPlaceCardCard(
                  placeId: '1',
                  imageUrl:
                      'https://cf.bstatic.com/xdata/images/hotel/max1024x768/675859513.jpg?k=cbb19bcc2fd1ab8b431d538e96cd0372c4738a46c69d9204d60649dcac98d843&o=',
                  title: 'Burj Al Arab',
                  index: index,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
