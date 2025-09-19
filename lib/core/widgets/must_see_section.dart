import 'package:dubai_trip_planner_2025/features/explore/ui/widgets/places_card.dart';
import 'package:dubai_trip_planner_2025/features/place_details/models/place_model.dart';
import 'package:dubai_trip_planner_2025/features/place_details/screens/more_details_screen.dart';
import 'package:flutter/material.dart';

class MustSeeSection extends StatelessWidget {
  final bool isCategoryScreen;

  const MustSeeSection({
    super.key,
    this.isCategoryScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        if (!isCategoryScreen)
        Text("Must-See", style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 12),
        SizedBox(
          height: 300,
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
                child: PlacesCard(
                  placeId: '1',
                  imageUrl:
                      'https://cf.bstatic.com/xdata/images/hotel/max1024x768/507541990.jpg?k=4010e5d634e2336118fadba167b66feb9bf99ad830c7a06764eb471da19a7248&o=&hp=1',
                  title: 'Burj Al Arab',
                  index: index, description: 'dfsfdsfsf', distance: '3333', rate: '5.5 dfdjfskjl',
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
