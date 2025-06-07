import 'package:get_storage/get_storage.dart';
import 'package:shiv_fit/app/data/models/dto/container_item.dart';

class Storage{
  Storage._privateConstructor();

  static final _box = GetStorage();
  static const _key = 'container_data';

  static void saveContainerData(Map<String, ContainerItem> data) {
    final encoded = data.map((key, value) => MapEntry(key, value.toJson()));
    _box.write(_key, encoded);
  }

  static Map<String, ContainerItem> loadContainerData() {
    final raw = _box.read<Map>(_key);
    if (raw == null) return {};
    return raw.map((key, value) => MapEntry(key, ContainerItem.fromJson(Map<String, dynamic>.from(value))));
  }
  static void eraseData(){
    _box.erase();
  }
}