part of 'favorites_cubit.dart';

@immutable
class FavoritesState {
  final Map<String, Place> favorites;

  const FavoritesState({
    this.favorites = const {},
  });

  FavoritesState copyWith({
    Map<String, Place>? favorites,
  }) {
    return FavoritesState(
      favorites: favorites != null ? Map.unmodifiable(favorites) : this.favorites,
    );
  }

  bool isFavorite(String placeId) => favorites.containsKey(placeId);

  List<Place> get favoritesList => List.unmodifiable(favorites.values);
}
