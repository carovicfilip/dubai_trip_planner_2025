import 'package:dubai_trip_planner_2025/features/home/ui/widgets/nearby_place_card.dart';
import 'package:flutter/material.dart';

class NearYouSection extends StatelessWidget {
  const NearYouSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Near You", style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 12),
        SizedBox(
          height: 180,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return NearbyPlaceCardCard(
                placeId: '1',
                imageUrl: 'https://cf.bstatic.com/xdata/images/hotel/max1024x768/675859513.jpg?k=cbb19bcc2fd1ab8b431d538e96cd0372c4738a46c69d9204d60649dcac98d843&o=',
                title: 'Burj Al Arab',
                index: index,
              );
            },
            separatorBuilder: (_, __) => const SizedBox(width: 12),
          ),
        ),

      ],
    );
  }
}
