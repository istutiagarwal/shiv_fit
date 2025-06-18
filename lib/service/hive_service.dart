import 'package:hive_flutter/adapters.dart';
import 'package:shiv_fit/service/hive_adapter_registrar.dart';

class HiveService {
  static Future<void> init() async {
    await Hive.initFlutter();
    HiveAdapterRegistrar.registerAll();
  }

  static Future<Box<T>> openBox<T>(String boxName) async {
    if (Hive.isBoxOpen(boxName)) return Hive.box(boxName);
    try {
      return await Hive.openBox<T>(boxName);
    } catch (e) {
      await Hive.deleteBoxFromDisk(boxName);
      return await Hive.openBox<T>(boxName);
    }
  }
}
