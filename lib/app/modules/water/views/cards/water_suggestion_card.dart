import 'package:flutter/material.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';

class WaterSuggestionCard extends StatelessWidget {


  const WaterSuggestionCard({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppDimens.dimens_16),
      margin: EdgeInsets.all(AppDimens.dimens_14),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: AppColors.gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(
          color: AppColors.iceyBlue,
          width: AppDimens.dimens_1,
        ),
        borderRadius: BorderRadius.circular(AppDimens.dimens_30),
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Suggestion
            Row(
              children: [
                const Icon(Icons.bubble_chart_rounded, color: Colors.blueAccent),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    "suggestionText",
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // Reminder

              Row(
                children: [
                  const Icon(Icons.alarm, color: Colors.deepOrange),
                  const SizedBox(width: 8),
                  Text("Reminder set at"),
                ],
              ),
              const SizedBox(height: 12),

            // Badge

              Row(
                children: [
                  const Icon(Icons.emoji_events, color: Colors.amber),
                  const SizedBox(width: 8),
                  Text("Earned Badge: "),
                ],
              ),
              const SizedBox(height: 12),

            // Motivational Nudge

              Row(
                children: [
                  const Icon(Icons.lightbulb_outline, color: Colors.green),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      "motivationalNudge",
                      style: const TextStyle(fontStyle: FontStyle.italic, color: Colors.green),
                    ),
                  ),
                ],
              ),
            ],
        ),
      );
  }
}
