import 'package:dubai_trip_planner_2025/features/favorites/cubit/favorites_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app/router/main_scaffold.dart';
import 'app/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FavoritesCubit(),
      child: MaterialApp(
        title: 'Dubai Trip Planner 2025',
        theme: AppTheme.lightTheme,
        home: MainScaffold(),
      ),
    );

  }
}
