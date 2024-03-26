import 'package:shared_preferences/shared_preferences.dart';

class SharredPreference {
  static SharedPreferences? sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

//---------------------------------------- GET ----------------------------------------------------------

  static Future<bool?> getBool({
    required String key,
  }) async {
    await init();
    return sharedPreferences!.getBool(key);
  }

  static Future<String?> getString({
    required String key,
  }) async {
    await init();
    return sharedPreferences!.getString(key);
  }

  static Future<int?> getInt({
    required String key,
  }) async {
    await init();
    return sharedPreferences!.getInt(key);
  }

  static Future<double?> getDouble({
    required String key,
  }) async {
    await init();
    return sharedPreferences!.getDouble(key);
  }

//---------------------------------------- SAVE ----------------------------------------------------------

  static Future<bool> setData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) {
      return await sharedPreferences!.setString(key, value);
    } else if (value is int) {
      return await sharedPreferences!.setInt(key, value);
    } else if (value is bool) {
      return await sharedPreferences!.setBool(key, value);
    } else {
      return await sharedPreferences!.setDouble(key, value);
    }
  }

//---------------------------------------- REMOVE ----------------------------------------------------------

  static Future<bool> removeData({
    required String key,
  }) async {
    return await sharedPreferences!.remove(key);
  }
}
