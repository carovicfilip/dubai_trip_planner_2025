import 'package:dubai_trip_planner_2025/features/home/ui/widgets/hack_and_tips_card.dart';
import 'package:flutter/material.dart';

class HackAndTips extends StatelessWidget {
  const HackAndTips({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hack & Tips", style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 12),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return HackAndTipsCard(
                title: 'Burj Al Arab',
                description: "dgksdhjgskdghfksdhjfkd", emoji: '',
              );
            },
          ),
        ),

      ],
    );
  }
}
