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
                    border: Border.all(color: const Color(0xFFE8D2B8), width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:  [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(color: const Color(0xFFFF8A80)
                                  , width: 2),
                            ),
                            child: const Center(
                              child: Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFFFF8A80)
                                  ,
                                ),
                              ),
                            ),
                          ),

                          Text(
                            " Step",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color:const Color(0xFFFF8A80)
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(height: 20),

                      Text(
                        "Choose Date",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color:  Color(0xFF2C3F57)),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Choosedfodifdoifjadfjasdlfjldskaj fijsdifjsljissdflsjfsdjlsjfldfjskfsdlkjflsdjfljsdflsjdfdls Date",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100, color:  Color (0xFFE0C4A0)),
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

                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: const Color(0xFFE8D2B8), width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:  [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(color:const Color(0xFFFF8A80)
                                  , width: 2),
                            ),
                            child: const Center(
                              child: Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFFFF8A80)
                                  ,
                                ),
                              ),
                            ),
                          ),

                          Text(
                            " Step",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color:const Color(0xFFFF8A80)
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(height: 20),

                      Text(
                        "Select your accommodation location",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: Color(0xFF2C3F57)),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Choosedfodifdoifjadfjasdlfjldskaj fijsdifjsljissdflsjfsdjlsjfldfjskfsdlkjflsdjfljsdflsjdfdls Date",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100, color:  Color (0xFFE0C4A0)),
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
                    border: Border.all(color: const Color(0xFFE8D2B8), width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:  [
                          Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              border: Border.all(color:const Color(0xFFFF8A80)
                                  , width: 2),
                            ),
                            child: const Center(
                              child: Text(
                                "3",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFFFF8A80)
                                  ,
                                ),
                              ),
                            ),
                          ),

                          Text(
                            " Step",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color:const Color(0xFFFF8A80)
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(height: 20),

                      Text(
                        "Choose Categories",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color:  Color(0xFF2C3F57)),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Choosedfodifdoifjadfjasdlfjldskaj fijsdifjsljissdflsjfsdjlsjfldfjskfsdlkjflsdjfljsdflsjdfdls Date",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100, color:  Color (0xFFE0C4A0)),
                      ),
                      const SizedBox(height: 8),
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
              backgroundColor: WidgetStateProperty.all(const Color(0xFFE8D2B8)),
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
