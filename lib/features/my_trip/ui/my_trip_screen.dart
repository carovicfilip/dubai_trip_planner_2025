import 'package:dubai_trip_planner_2025/core/widgets/custom_app_bar.dart';
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
    final dateText = selectedDate != null ? DateFormat.yMMMMd().format(selectedDate!) : 'Select your trip date';

    return Scaffold(
      resizeToAvoidBottomInset: true,

      /// ✅ Custom AppBar
      appBar: const CustomAppBar(
        title: 'Plan Your Trip',
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),

      body: Container(
        color: Colors.white, // 👈 umesto slike i blur-a
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 140),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// 📅 Date Picker
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: const Color(0xFF101A26), width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Step 1 - ",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Color(0xFF101A26)),
                          ),
                          Text(
                            "Choose Date",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xFF101A26)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      GestureDetector(
                        onTap: _pickDate,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
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
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                /// 📍 Accommodation location
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: const Color(0xFF101A26), width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Step 2 - ",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Color(0xFF101A26)),
                          ),
                          Expanded(
                            child: Text(
                              "Select your accommodation location",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xFF101A26)),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      TextField(
                        controller: _accommodationCtrl,
                        decoration: InputDecoration(
                          hintText: "e.g. Dubai Marina, Downtown, JBR…",
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: const Icon(Icons.location_on_outlined),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 24),

                /// 🏷️ Category Selection
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: const Color(0xFF101A26), width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Step 3 - ",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Color(0xFF101A26)),
                          ),
                          Text(
                            "Choose Categories",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Color(0xFF101A26)),
                          ),
                        ],
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
                            backgroundColor: Colors.grey.shade100,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
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
              ],
            ),
          ),
        ),
      ),

      /// ✅ Fiksirano dugme dole
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(const Color(0xFF101A26)),
              foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
              overlayColor: WidgetStateProperty.all(Colors.white.withOpacity(0.08)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            onPressed: (selectedDate != null && selectedCategories.isNotEmpty)
                ? () {
                    debugPrint("Date: $selectedDate");
                    debugPrint("Accommodation: ${_accommodationCtrl.text}");
                    debugPrint("Categories: $selectedCategories");
                  }
                : null,
            child: const Text(
              "Show Results",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
