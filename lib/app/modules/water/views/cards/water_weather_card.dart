import 'package:flutter/material.dart';
import 'package:shiv_fit/app/theme/app_colors.dart';
import 'package:shiv_fit/app/theme/app_dimens.dart';

class WaterWeatherCard extends StatelessWidget {

  const WaterWeatherCard({super.key});

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
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Weather Today",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Icon(Icons.thermostat, color: Colors.orange),
              ],
            ),
            SizedBox(height: 8),
            Text("Temperature: "),
            Text("Humidity: "),
            Text("Badge: "),

            SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.lightbulb_outline, color: Colors.amber),
                  SizedBox(width: 8),
                  Expanded(child: Text("Tip:")),
                ],
              ),

              Row(
                children: [
                  Icon(Icons.bubble_chart, color: Colors.blueAccent),
                  SizedBox(width: 8),
                  Expanded(child: Text("Suggestion: ")),
                ],
              ),


              Text("Last similar weather: "),

              Row(
                children: [
                  Icon(Icons.alarm),
                  SizedBox(width: 8),
                  Expanded(child: Text("Set Reminder: ")),
                ],
              ),

            SizedBox(height: 8),
            Text("Weekly Avg Temp: "),
            Text("Monthly Avg Temp: "),
            Text("Weekly Avg Humidity: "),
            Text("Monthly Avg Humidity:"),


              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text("Hydration Goal: "),
              ),

            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text("🔥 Hottest Day: ")),
                Expanded(child: Text("🌧 Rainy Day: ")),
                Expanded(child: Text("💦 Most Humid:")),
              ],
            ),

            SizedBox(height: 12),
            ElevatedButton.icon(
              onPressed: () {
                // Set reminder logic
              },
              icon: Icon(Icons.add_alarm),
              label: Text("Set Reminder for Upcoming Hot Day"),
            ),
          ],
        ),
      ),
    );
  }

  String _average(List<dynamic>? list) {
    if (list == null || list.isEmpty) return "--";
    final avg = list.map((e) => double.tryParse(e.toString()) ?? 0).reduce((a, b) => a + b) / list.length;
    return avg.toStringAsFixed(1);
  }
}
