import 'package:shiv_fit/app/data/models/response/water_log_response_dto.dart';
import 'package:shiv_fit/app/data/values/hive_box_names.dart';
import 'package:shiv_fit/service/hive_service.dart';

class WaterHiveService {
  WaterHiveService();

  static Future<void> addWaterLog({
    required WaterLogResponseDto log,
  }) async {
    final box = await HiveService.openBox<WaterLogResponseDto>(HiveBoxNames.waterLogs);
    await box.add(log);
  }
}
