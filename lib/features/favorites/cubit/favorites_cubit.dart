import 'package:flutter_bloc/flutter_bloc.dart';
import 'favorites_state.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit() : super(FavoritesState(favorites: []));

  void toggleFavorite(String placeId) {
    final current = state.favorites;
    if (current.contains(placeId)) {
      emit(FavoritesState(favorites: List.from(current)..remove(placeId)));
    } else {
      emit(FavoritesState(favorites: List.from(current)..add(placeId)));
    }
  }

  bool isFavorite(String placeId) => state.favorites.contains(placeId);
}
