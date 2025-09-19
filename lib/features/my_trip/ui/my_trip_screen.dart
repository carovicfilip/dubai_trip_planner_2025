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
      appBar: AppBar(
        title: const Text(
          'Plan Your Trip',
          style: TextStyle(fontSize: 22, color: Color(0xFF101A26)),
        ),
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
      ),

      /// ✅ Fiksirano dugme dole
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: (selectedDate != null && selectedCategories.isNotEmpty)
                  ? () {
                      debugPrint("Date: $selectedDate");
                      debugPrint("Accommodation: ${_accommodationCtrl.text}");
                      debugPrint("Categories: $selectedCategories");
                    }
                  : null,
              child: const Text("Show Results"),
            ),
          ),
        ),
      ),

      /// ✅ Scrollable sadržaj + statična pozadinska slika
      body: Container(
        decoration:  BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/plan_trip.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// 📅 Date Picker
                const Text(
                  "Choose Date",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                GestureDetector(
                  onTap: _pickDate,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.85),
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(12),
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
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: _accommodationCtrl,
                  decoration: InputDecoration(
                    hintText: "e.g. Dubai Marina, Downtown, JBR…",
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.85),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    prefixIcon: const Icon(Icons.location_on_outlined),
                  ),
                ),

                const SizedBox(height: 24),

                /// 🏷️ Category Selection
                const Text(
                  "Choose Categories",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
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

                const SizedBox(height: 100), // buffer da sadržaj ne ide ispod buttona
              ],
            ),
          ),
        ),
      ),
    );
  }
}
