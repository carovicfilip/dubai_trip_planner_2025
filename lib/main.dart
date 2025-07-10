import 'package:flutter/material.dart';
import 'app/router/main_scaffold.dart';
import 'app/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dubai Trip Planner 2025',
      theme: AppTheme.lightTheme,
      home: MainScaffold(),
    );
  }
}
