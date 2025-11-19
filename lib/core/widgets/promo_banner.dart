import 'package:dubai_trip_planner_2025/features/my_trip/ui/my_trip_screen.dart';
import 'package:flutter/material.dart';

class PromoBanner extends StatefulWidget {
  const PromoBanner({super.key});

  @override
  State<PromoBanner> createState() => _PromoBannerState();
}

class _PromoBannerState extends State<PromoBanner> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _color1;
  late Animation<Color?> _color2;
  late Animation<Color?> _color3;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    // Blue, Purple & Red gradient: high contrast variations
    // Using very light and very dark shades for maximum visual impact
    _color1 = ColorTween(
      begin: const Color(0xFF64B5F6), // Very light blue/cyan
      end: const Color(0xFF0D47A1), // Very dark blue/navy
    ).animate(_controller);

    _color2 = ColorTween(
      begin: const Color(0xFFBA68C8), // Light purple/lavender
      end: const Color(0xFF4A148C), // Very dark purple
    ).animate(_controller);

    _color3 = ColorTween(
      begin: const Color(0xFFF06292), // Light pink/magenta
      end: const Color(0xFF880E4F), // Very dark red/maroon
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _navigateToMyTrip() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const MyTripScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return GestureDetector(
          onTap: _navigateToMyTrip,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: LinearGradient(
                colors: [
                  _color1.value ?? Colors.blue,
                  _color2.value ?? Colors.purple,
                  _color3.value ?? Colors.red,
                ],
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            padding: const EdgeInsets.all(16),
            child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Discover Dubai",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 4,
                            color: Colors.black45,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Create your perfect itinerary with AI-powered trip planning",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            blurRadius: 4,
                            color: Colors.black45,
                            offset: Offset(1, 1),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              ElevatedButton(
                onPressed: _navigateToMyTrip,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: const Color(0xFF101A26),
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Plan a Trip",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
      },
    );
  }
}
