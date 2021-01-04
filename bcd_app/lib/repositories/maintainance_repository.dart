import 'dart:convert';
import 'dart:io';
import 'package:bcd_app/objects/workerDTO.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class MaintainanceRepository {
  static final MaintainanceRepository _maintainanceRepository =
      MaintainanceRepository._internal();

  factory MaintainanceRepository() {
    return _maintainanceRepository;
  }

  Future<String> confirmMaintainance(
      int maintenanceWorkerId, String maintenanceDate) async {
    final prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('jwtToken');

    var apiPath = Uri.encodeFull(
        "https://bcds.azurewebsites.net/api/v1/maintenance-orders/confirm");
    final http.Response response = await http.post(apiPath,
        headers: <String, String>{
          'Content-Type': 'application/json;charset=UTF-8',
          HttpHeaders.authorizationHeader: "Bearer $token"
        },
        body: jsonEncode(<String, String>{
          'maintenanceWorkerId': maintenanceWorkerId.toString(),
          'maintenanceDate': "2020-12-31T06:08:59.2151322",
        }));
    if (response.statusCode != 200) {
      return null;
    }
    return response.body;
  }

  MaintainanceRepository._internal();
}
