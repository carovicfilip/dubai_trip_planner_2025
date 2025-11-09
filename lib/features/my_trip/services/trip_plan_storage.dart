import 'package:shared_preferences/shared_preferences.dart';

import '../models/trip_plan.dart';

class TripPlanStorage {
  TripPlanStorage._();

  static const _planKey = 'recent_trip_plan';

  static Future<void> savePlan(TripPlan plan) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_planKey, plan.serialize());
  }

  static Future<TripPlan?> loadPlan() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_planKey);
    if (raw == null || raw.isEmpty) return null;

    try {
      return TripPlan.deserialize(raw);
    } catch (_) {
      await prefs.remove(_planKey);
      return null;
    }
  }

  static Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_planKey);
  }
}

