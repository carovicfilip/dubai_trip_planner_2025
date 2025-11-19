import 'package:dubai_trip_planner_2025/core/models/place.dart';
import 'package:dubai_trip_planner_2025/core/repositories/place_repository.dart';
import 'package:dubai_trip_planner_2025/features/favorites/cubit/favorites_cubit.dart';
import 'package:dubai_trip_planner_2025/features/explore/ui/widgets/places_card.dart';
import 'package:dubai_trip_planner_2025/features/place_details/screens/more_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MustSeeSection extends StatelessWidget {
  final bool isCategoryScreen;

  const MustSeeSection({
    super.key,
    this.isCategoryScreen = false,
  });

  @override
  Widget build(BuildContext context) {
    final List<Place> featuredPlaces = PlaceRepository.getFeaturedPlaces();
    final favoritesState = context.watch<FavoritesCubit>().state;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        if (!isCategoryScreen)
        Text("Recommended", style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 12),
        SizedBox(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: featuredPlaces.length,
            itemBuilder: (context, index) {
              final place = featuredPlaces[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MoreDetailsScreen(
                        place: place,
                      ),
                    ),
                  );
                },
                child: PlacesCard(
                  place: place,
                  index: index,
                  isFavorite: favoritesState.isFavorite(place.id),
                  onFavoriteToggle: () =>
                      context.read<FavoritesCubit>().toggleFavorite(place),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
