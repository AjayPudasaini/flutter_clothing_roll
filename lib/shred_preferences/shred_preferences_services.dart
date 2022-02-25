import 'package:shared_preferences/shared_preferences.dart';


class PrefServices{
  Future createCache(String username, String password) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.setString("username", username);
    _preferences.setString("password", password);
  }

  Future readCache(String username, String password) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.getString("username");
    _preferences.getString("password");
  }

  Future removeCache(String username, String password) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    _preferences.remove("username");
    _preferences.remove("password");
  }


}