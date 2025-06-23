import 'package:flutter/material.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';

class WaterStreakCard extends StatelessWidget {
  const WaterStreakCard({super.key,});

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
            // Streak Status
            Row(
              children: [
                const Icon(Icons.local_fire_department, color: Colors.redAccent),
                const SizedBox(width: 8),
                Text(
                  "streak",
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Max Streak
            Text("🏆 Max Streak days"),


              const SizedBox(height: 8),
              Text("📊 Breakdown:"),


              const SizedBox(height: 12),
              Row(
                children: [
                  const Icon(Icons.lightbulb_outline, color: Colors.orange),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text("Tip: "),
                  ),
                ],
              ),



              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.auto_fix_high, color: Colors.blueGrey),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text("Suggestion: "),
                  ),
                ],
              ),


              const SizedBox(height: 10),
              Text(
                "streak",
                style: const TextStyle(fontStyle: FontStyle.italic, color: Colors.green),
              ),



              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.notifications_active, color: Colors.teal),
                  const SizedBox(width: 6),
                  Text("Next Reminder: "),
                ],
              ),


              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.emoji_events, color: Colors.amber),
                  const SizedBox(width: 6),
                  Text("Badge Earned: "),
                ],
              ),

          ],
        ));
  }
}
