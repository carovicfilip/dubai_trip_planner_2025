import 'package:dubai_trip_planner_2025/features/explore/ui/widgets/popular_place_card.dart';
import 'package:dubai_trip_planner_2025/features/place_details/models/place_model.dart';
import 'package:dubai_trip_planner_2025/features/place_details/screens/more_details_screen.dart';
import 'package:flutter/material.dart';

class MostPopularSection extends StatelessWidget {
  const MostPopularSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Most Popular Places", style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 12),
        SizedBox(
          height: 300,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => MoreDetailsScreen(
                          place: Place(
                            title: 'Burj Al Arab',
                            imageUrl:
                            'https://cf.bstatic.com/xdata/images/hotel/max1024x768/675859513.jpg?k=cbb19bcc2fd1ab8b431d538e96cd0372c4738a46c69d9204d60649dcac98d843&o=',
                            categories: ['Luxury', 'Iconic', 'Beachfront'],
                            openingHours: 'Monday - Sunday: 12PM - 11PM',
                            locationName: 'Jumeirah Street, Dubai',
                            latitude: 25.1412,
                            longitude: 55.1853,
                          ),
                        ),
                      ),
                    );
                  },
                  child: PopularPlaceCard(
                    placeId: '1',
                    imageUrl:
                    'https://cf.bstatic.com/xdata/images/hotel/max1024x768/675859513.jpg?k=cbb19bcc2fd1ab8b431d538e96cd0372c4738a46c69d9204d60649dcac98d843&o=',
                    title: 'Burj Al Arab',
                    index: index,
                  ),
                ),
              );
            },
            separatorBuilder: (_, __) => const SizedBox(width: 12),
          ),
        ),
      ],
    );
  }
}