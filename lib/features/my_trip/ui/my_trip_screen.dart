import 'package:dubai_trip_planner_2025/core/widgets/custom_app_bar.dart';
import 'package:dubai_trip_planner_2025/features/my_trip/models/trip_plan.dart';
import 'package:dubai_trip_planner_2025/features/my_trip/services/trip_plan_storage.dart';
import 'package:dubai_trip_planner_2025/features/my_trip/services/trip_planner_service.dart';
import 'package:dubai_trip_planner_2025/features/my_trip/ui/itinerary_screen.dart';
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
  TripPlan? _latestPlan;
  bool _isLoading = false;
  int _stayLength = 4;

  final TripPlannerService _plannerService = TripPlannerService();
  final List<int> _stayLengthOptions = const [2, 3, 4, 5, 6, 7];

  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now().add(const Duration(days: 14));
    _accommodationCtrl.text = '';
    _restoreLatestPlan();
  }

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

  Future<void> _restoreLatestPlan() async {
    final storedPlan = await TripPlanStorage.loadPlan();
    if (storedPlan == null) return;
    setState(() {
      _latestPlan = storedPlan;
      selectedDate = storedPlan.startDate;
      _stayLength = storedPlan.lengthInDays;
      _accommodationCtrl.text = storedPlan.location;
      selectedCategories
        ..clear()
        ..addAll(storedPlan.categories);
    });
  }

  bool get _canGenerate =>
      selectedDate != null && selectedCategories.isNotEmpty && _accommodationCtrl.text.trim().isNotEmpty;

  Future<void> _handleShowResults() async {
    if (!_canGenerate || selectedDate == null) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final plan = await _plannerService.generatePlan(
        startDate: selectedDate!,
        lengthInDays: _stayLength,
        location: _accommodationCtrl.text.trim(),
        categories: (selectedCategories.toList()..sort()),
      );

      await TripPlanStorage.savePlan(plan);

      if (!mounted) return;
      setState(() {
        _latestPlan = plan;
        _isLoading = false;
      });

      _openItinerary(plan);
    } catch (error) {
      if (!mounted) return;
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Plan generation failed: $error',
          ),
        ),
      );
    }
  }

  void _openItinerary(TripPlan plan) {
    FocusScope.of(context).unfocus();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ItineraryScreen(plan: plan),
      ),
    );
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
      appBar: CustomAppBar(
        title: 'Plan Your Trip',
        titleTextStyle: const TextStyle(color: Colors.white),
        centerTitle: true,
        backgroundColor: const Color(0xFFE8D2B8),
      ),

      body: Container(
        color: Colors.white, // 👈 umesto slike i blur-a
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 140),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (_latestPlan != null)
                  GestureDetector(
                    onTap: () => _openItinerary(_latestPlan!),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: const Color(0xFF101A26),
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 12,
                            offset: Offset(0, 6),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Your Tailored Itinerary',
                            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            '${DateFormat.yMMMMd().format(_latestPlan!.startDate)} · ${_latestPlan!.lengthInDays} days · ${_latestPlan!.location}',
                            style: const TextStyle(color: Colors.white70, fontSize: 14),
                          ),
                          const SizedBox(height: 12),
                          const Row(
                            children: [
                              Icon(Icons.auto_awesome, color: Colors.amber, size: 20),
                              SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  'Tap to review the AI-crafted day-by-day plan.',
                                  style: TextStyle(color: Colors.white, fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
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
                        "Select when your Dubai adventure begins. Pick your arrival date and how many days you'll be staying to create a personalized itinerary.",
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
                      const SizedBox(height: 16),
                      Text(
                        "Trip Duration",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF2C3F57)),
                      ),
                      const SizedBox(height: 8),
                      DropdownButtonFormField<int>(
                        value: _stayLength,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                        ),
                        items: _stayLengthOptions
                            .map(
                              (value) => DropdownMenuItem<int>(
                                value: value,
                                child: Text('$value day${value > 1 ? 's' : ''}'),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          if (value == null) return;
                          setState(() {
                            _stayLength = value;
                          });
                        },
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
                        "Tell us where you'll be staying in Dubai. This helps us optimize your itinerary based on proximity to attractions, restaurants, and activities.",
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
                        "Select the types of places and experiences you're interested in. Choose multiple categories to create a diverse and exciting trip plan tailored to your preferences.",
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
                            selectedColor: Color(0xFFE8D2B8),
                            backgroundColor: Colors.white,

                            // backgroundColor: Colors.grey.shade100,
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
            onPressed: _canGenerate && !_isLoading ? _handleShowResults : null,
            child: _isLoading
                ? const SizedBox(
                    width: 22,
                    height: 22,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.6,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  )
                : const Text(
                    "Show Results",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
                  ),
          ),
        ),
      ),
    );
  }
}
