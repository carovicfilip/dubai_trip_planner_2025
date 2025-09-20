import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyTripScreen extends StatefulWidget {
  const MyTripScreen({super.key});

  @override
  State<MyTripScreen> createState() => _MyTripScreenState();
}

class _MyTripScreenState extends State<MyTripScreen> {
  DateTime? selectedDate;
  final TextEditingController _accommodationCtrl = TextEditingController();

  final List<String> categories = [
    'Restaurants',
    'Attractions',
    'Cafes',
    'Breakfast and brunch',
    'Bakeries',
    'Bars',
    'Shopping',
    'Nightlife',
    'Museums',
    'Art museums',
    'Science & space museums',
    'Theme parks',
    'Arts and culture',
    'Parks and gardens',
    'Beaches',
    'Pools',
    'Asian food',
    'Sushi',
    'Pizzas',
    'Gelato',
    'Desserts',
    'Rooftops',
    'Fun things to do',
    'Spas',
  ];

  final Set<String> selectedCategories = {};

  Future<void> _pickDate() async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: now,
      lastDate: DateTime(now.year + 1),
    );
    if (picked != null) {
      setState(() => selectedDate = picked);
    }
  }

  @override
  void dispose() {
    _accommodationCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dateText = selectedDate != null
        ? DateFormat.yMMMMd().format(selectedDate!)
        : 'Select your trip date';

    return Scaffold(
      resizeToAvoidBottomInset: true,

      /// ✅ Custom AppBar
      appBar: AppBar(
        title: const Text(
          'Plan Your Trip',
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),

      body: Stack(
        fit: StackFit.expand,
        children: [
          /// Slika u pozadini
          Image.asset(
            "assets/images/trip4.JPG",
            fit: BoxFit.cover,
          ),

          /// Blur filter
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
              color: Colors.black.withOpacity(0.7),
            ),
          ),

          /// Glavni sadržaj
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 140),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// 📅 Date Picker
                  const Text(
                    "Choose Date",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  GestureDetector(
                    onTap: _pickDate,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 14),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.85),
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(dateText, style: const TextStyle(fontSize: 16)),
                          const Icon(Icons.calendar_today_outlined),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// 📍 Accommodation location
                  const Text(
                    "Select your accommodation location",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _accommodationCtrl,
                    decoration: InputDecoration(
                      hintText: "e.g. Dubai Marina, Downtown, JBR…",
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.85),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      prefixIcon: const Icon(Icons.location_on_outlined),
                    ),
                  ),

                  const SizedBox(height: 24),

                  /// 🏷️ Category Selection
                  const Text(
                    "Choose Categories",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: categories.map((cat) {
                      final isSelected = selectedCategories.contains(cat);
                      return ChoiceChip(
                        label: Text(cat),
                        selected: isSelected,
                        selectedColor: Colors.purple.shade100,
                        backgroundColor: Colors.white.withOpacity(0.85),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // 👈 radius 20
                        ),
                        onSelected: (_) {
                          setState(() {
                            if (isSelected) {
                              selectedCategories.remove(cat);
                            } else {
                              selectedCategories.add(cat);
                            }
                          });
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
          ),

          /// ✅ Fiksirano dugme dole
          Positioned(
            left: 16,
            right: 16,
            bottom: 16,
            child: SafeArea(
              top: false,
              child: SizedBox(
                height: 50,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                    WidgetStateProperty.all(const Color(0xFF101A26)),
                    foregroundColor:
                    WidgetStateProperty.all<Color>(Colors.white),
                    overlayColor: WidgetStateProperty.all(
                        Colors.white.withOpacity(0.08)),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(color: Colors.white.withOpacity(0.9)),
                      ),
                    ),
                  ),
                  onPressed: (selectedDate != null &&
                      selectedCategories.isNotEmpty)
                      ? () {
                    debugPrint("Date: $selectedDate");
                    debugPrint(
                        "Accommodation: ${_accommodationCtrl.text}");
                    debugPrint("Categories: $selectedCategories");
                  }
                      : null,
                  child: const Text(
                    "Show Results",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
