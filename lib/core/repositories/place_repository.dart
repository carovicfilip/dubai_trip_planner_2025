import 'package:dubai_trip_planner_2025/core/constants/dummy_places.dart';
import 'package:dubai_trip_planner_2025/core/models/place.dart';

class PlaceRepository {
  const PlaceRepository._();

  static List<Place> getPlacesByCategory(String categoryId) {
    final items = dummyPlacesByCategory[categoryId];
    if (items == null) return const [];

    return List.unmodifiable(
      items.asMap().entries.map((entry) {
        final dummy = entry.value;
        return Place(
          id: '${categoryId}_${entry.key}',
          categoryId: categoryId,
          title: dummy.name,
          imageUrl: dummy.imageUrl,
          openingHours: dummy.openingHours,
          description: dummy.description,
          reviewSummary: dummy.reviewSummary,
        );
      }).toList(),
    );
  }

  static List<Place> getFeaturedPlaces() => getPlacesByCategory('must_see');

  static List<Place> getAllPlaces() {
    return List.unmodifiable(
      dummyPlacesByCategory.keys.expand((categoryId) {
        return getPlacesByCategory(categoryId);
      }),
    );
  }
}

