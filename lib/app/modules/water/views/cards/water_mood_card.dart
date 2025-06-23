import 'package:flutter/material.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';
import 'package:shiv_fit/widgets/buttons/primary_action_button.dart';

class WaterMoodCard extends StatelessWidget {

  const WaterMoodCard({super.key});

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
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                const Icon(Icons.mood, color: Colors.purple),
                const SizedBox(width: 8),
                Text(" • Mood & Water",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
              ],
            ),

            const SizedBox(height: 16),

              Text("😊 Mood Today:"),


              Text("😐 Mood Yesterday:"),

            const Divider(height: 24),


              Text("📊 Insight: "),


              Text("🏅 Badge Earned: "),


              Text("💡 Tip: "),


              Text("🧠 Suggestion: "),


              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Text(
                  "encouragementMessage",
                  style: const TextStyle(
                      color: Colors.green, fontStyle: FontStyle.italic),
                ),
              ),

            const SizedBox(height: 16),

            // Mood Breakdown

              Text("📈 Best Day (Week): "),

              Text("📉 Worst Day (Week): "),

              Text("📈 Best Day (Month): "),

              Text("📉 Worst Day (Month):"),

            const SizedBox(height: 16),

            // Graph Placeholder
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              alignment: Alignment.center,
              child: const Text("📊 Mood vs Water Graph"),
            ),

            const SizedBox(height: 16),

            // Action Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                PrimaryActionButton(
                  onPressed: () {},
                  icon:  Icons.local_drink,
                  label:  "Add Water",
                ),
                PrimaryActionButton(
                  onPressed: () {},
                  icon: Icons.notifications,
                  label: "Set Reminder",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
