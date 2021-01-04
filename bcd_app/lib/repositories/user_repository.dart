import 'dart:convert';
import 'dart:io';
import 'package:bcd_app/objects/userDTO.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class UserRepository {
  static final UserRepository _crackRepository = UserRepository._internal();

  factory UserRepository() {
    return _crackRepository;
  }
  Future<UserDTO> login(String username, String password) async {
    var apiPath = Uri.encodeFull(
        "https://bcds.azurewebsites.net/api/v1/users/authenticate");
    final http.Response response = await http.post(
      apiPath,
      headers: <String, String>{
        'Content-Type': 'application/json;charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'userName': username,
        'password': password,
      }),
    );
    if (response.statusCode != 200) {
      return null;
    }
    final responseJson = json.decode(utf8.decode(response.bodyBytes));
    return UserDTO.fromJson(responseJson);
  }

  Future<UserDTO> getUserLogin(String token, String userId) async {
    var apiPath =
        Uri.encodeFull("https://bcds.azurewebsites.net/api/v1/users/" + userId);
    final http.Response response = await http.get(
      apiPath,
      headers: <String, String>{
        'Content-Type': 'application/json;charset=UTF-8',
        HttpHeaders.authorizationHeader: "Bearer $token"
      },
    );

    if (response.statusCode != 200) {
      return null;
    }
    final responseJson = json.decode(utf8.decode(response.bodyBytes));
    return UserDTO.fromJson(responseJson);
  }

  Future<String> changePassword(String oldPass, String newPass) async {
    var apiPath = Uri.encodeFull(
        "https://bcds.azurewebsites.net/api/v1/users/6807117c-10ed-4662-a505-4e53c711dc1d/password");
    final prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('jwtToken');
    final http.Response response = await http.post(
      apiPath,
      headers: <String, String>{
        'Content-Type': 'application/json;charset=UTF-8',
        HttpHeaders.authorizationHeader: "Bearer $token"
      },
      body: jsonEncode(<String, String>{
        'oldPass': oldPass,
        'newPass': newPass,
      }),
    );
    if (response.statusCode != 200) {
      return null;
    }

    return response.body;
  }

  UserRepository._internal();
}
