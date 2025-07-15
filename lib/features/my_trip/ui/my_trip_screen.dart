import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyTripScreen extends StatefulWidget {
  const MyTripScreen({super.key});

  @override
  State<MyTripScreen> createState() => _MyTripScreenState();
}

class _MyTripScreenState extends State<MyTripScreen> {
  DateTime? selectedDate;
  final List<String> categories = [
    'Brunch',
    'Breakfast',
    'Ladies Night',
    'Happy Hour',
    'Pool Day',
    'Leisure',
    'Fitness',
    'Hair Salon',
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
  Widget build(BuildContext context) {
    final dateText = selectedDate != null
        ? DateFormat.yMMMMd().format(selectedDate!)
        : 'Select your trip date';

    return Scaffold(
      appBar: AppBar(
        title: const Text("Plan Your Trip"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// 📅 Date Picker
            const Text("Choose Date", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: _pickDate,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
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
            const SizedBox(height: 24),

            /// 🏷️ Category Selection
            const Text("Choose Categories", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
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

            const Spacer(),

            /// ✅ Show Results Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: selectedDate != null && selectedCategories.isNotEmpty
                    ? () {
                  // Handle action (navigate to results page, etc.)
                  debugPrint("Date: $selectedDate");
                  debugPrint("Categories: $selectedCategories");
                }
                    : null,
                child: const Text("Show Results"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
