import 'package:get_storage/get_storage.dart';

class LocalStorage{
  static final LocalStorage _instance = LocalStorage._internal();

  factory LocalStorage(){
    return _instance;
  }

  LocalStorage._internal();

  final _storage = GetStorage();

  //Generic method to save data
  Future<void> saveData(String key, dynamic value) async {
    await _storage.write(key, value);
  }

  //Generic method to read data
  dynamic? readData(String key) {
    return _storage.read<dynamic>(key);
  }

  //Generic method to delete data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  //Generic method to clear all data
  Future<void> clearAllStorage() async {
    await _storage.erase();
  }


}