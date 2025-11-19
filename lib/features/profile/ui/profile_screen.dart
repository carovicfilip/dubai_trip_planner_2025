import 'package:dubai_trip_planner_2025/core/widgets/custom_app_bar.dart';
import 'package:dubai_trip_planner_2025/core/widgets/promo_banner.dart';
import 'package:dubai_trip_planner_2025/features/explore/ui/widgets/places_card.dart';
import 'package:dubai_trip_planner_2025/features/favorites/cubit/favorites_cubit.dart';
import 'package:dubai_trip_planner_2025/features/profile/ui/privacy_policy_screen.dart';
import 'package:dubai_trip_planner_2025/features/profile/ui/terms_of_use_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favoritesState = context.watch<FavoritesCubit>().state;
    final favoritePlaces = favoritesState.favoritesList;

    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Profile',
        centerTitle: true,
        backgroundColor: Colors.transparent,
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
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              if (favoritePlaces.isEmpty)
                Container(
                  height: 160,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: const Text(
                    "You haven't added any favorites yet.",
                    style: TextStyle(color: Colors.black54),
                  ),
                )
              else
                SizedBox(
                  height: 280,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: favoritePlaces.length,
                    itemBuilder: (context, index) {
                      final place = favoritePlaces[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 16),
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
              const SizedBox(height: 20),
              ListTile(
                leading: const Icon(Icons.privacy_tip),
                title: const Text("Privacy Policy"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const PrivacyPolicyScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.description),
                title: const Text("Terms of Use"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const TermsOfUseScreen(),
                    ),
                  );
                },
              ),
              // ListTile(leading: Icon(Icons.support_agent), title: Text("Support"), onTap: () {}),
              // ListTile(leading: Icon(Icons.star_rate), title: Text("Rate the app"), onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
