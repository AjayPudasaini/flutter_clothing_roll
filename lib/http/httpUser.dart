import 'dart:convert';
import 'package:clothing_roll/constants/constants.dart';
import 'package:clothing_roll/model/userModel.dart';
import 'package:clothing_roll/response/user_response.dart';
import 'package:http/http.dart';
import 'package:logger/logger.dart';

class HttpConnectUser {
  static String token = '';
  var log = Logger();

  //sending data to the server--- creating user
  Future<bool> registerUser(User user) async {
    try {
        Map<String, dynamic> userMap = {
        "username": user.username,
        "email": user.email,
        "password": user.password,
        };

      final response =
          await post(Uri.parse(USER_REGISTER_URL), body: userMap);
      log.i(response.body);
      log.i(response.statusCode);
      if (response.statusCode == 200 || response.statusCode == 201) {
        var userResponse = ResponseUser.fromJson(jsonDecode(response.body));
        log.i(userResponse);
        return userResponse.success!;
      } else {
        log.i("server error");
        return Future.error("server errorrrrrrrrrrrrrrrrrrrrrrr");
      }
    } catch (e) {
      log.i("connecyion error");
      Future.error("errrrrrrrooooorrr $e");
    }
    return false;
  }

  //sending data to the server- login as user
  Future<bool> loginUser(String username, String password) async {
    Map<String, dynamic> loginUser = {
      'username': username,
      'password': password
    };

    try {
      final response = await post(
          Uri.parse(
            USER_LOGIN_URL,
          ),
          body: loginUser);

      log.i(response.body);
      log.i(response.statusCode);

      //json serializing inline
      final jsonData = jsonDecode(response.body) as Map;

      token = jsonData['token'];
      log.i(token);
      if (jsonData['success']) {
        log.i(jsonData['success']);
        return true;
      }
    } catch (e) {
      print(e);
    }
    return false;
  }



}
