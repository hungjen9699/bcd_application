import 'dart:convert';
import 'dart:io';
import 'package:bcd_app/objects/userDTO.dart';
import 'package:bcd_app/objects/workerDTO.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class WorkerRepository {
  static final WorkerRepository _workerRepository =
      WorkerRepository._internal();

  factory WorkerRepository() {
    return _workerRepository;
  }
  Future<List<WorkerDTO>> fetchListWorker() async {
    final prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('jwtToken');
    var apiPath = Uri.encodeFull(
        "https://bcds.azurewebsites.net/api/v1/maintenance-workers");
    final response = await http.get(apiPath, headers: {
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.authorizationHeader: "Bearer $token"
    });
    return parseWorker(utf8.decode(response.bodyBytes));
  }

  List<WorkerDTO> parseWorker(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<WorkerDTO>((json) => WorkerDTO.fromJson(json)).toList();
  }

  WorkerRepository._internal();
}
