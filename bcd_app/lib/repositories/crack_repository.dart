import 'dart:convert';
import 'dart:io';
import 'package:bcd_app/objects/crackDTO.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class CrackRepository {
  static final CrackRepository _crackRepository = CrackRepository._internal();

  factory CrackRepository() {
    return _crackRepository;
  }
  Future<List<CrackDTO>> fetchCrackByStatus(String status) async {
    final prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('jwtToken');
    var apiPath = Uri.encodeFull(
        "https://bcds.azurewebsites.net/api/v1/cracks?status=" + status);
    final response = await http.get(apiPath, headers: {
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.authorizationHeader: "Bearer $token"
    });
    return parseCrack(utf8.decode(response.bodyBytes));
  }

  Future<List<CrackDTO>> fetchVerifyCrack() async {
    final prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('jwtToken');
    var apiPath =
        Uri.encodeFull("https://bcds.azurewebsites.net/api/v1/cracks");
    final response = await http.get(apiPath, headers: {
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.authorizationHeader: "Bearer $token"
    });
    return parseCrack(utf8.decode(response.bodyBytes));
  }

  Future<String> updateNotVerifyCrack(
      int crackId, String description, String severity, String status) async {
    final prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('jwtToken');
    var userId = prefs.getString('userId');

    var apiPath = Uri.encodeFull(
        "https://bcds.azurewebsites.net/api/v1/cracks/" + crackId.toString());
    final http.Response response = await http.post(apiPath,
        headers: <String, String>{
          'Content-Type': 'application/json;charset=UTF-8',
          HttpHeaders.authorizationHeader: "Bearer $token"
        },
        body: jsonEncode(<String, String>{
          'reporterId': userId,
          'description': description,
          'severity': severity,
          'status': status
        }));
    if (response.statusCode != 200) {
      return null;
    }
    return response.body;
  }

  Future<String> updateVerifyCrack(
      int crackId, String description, String severity) async {
    final prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('jwtToken');

    var apiPath = Uri.encodeFull(
        "https://bcds.azurewebsites.net/api/v1/cracks/" + crackId.toString());
    final http.Response response = await http.post(apiPath,
        headers: <String, String>{
          'Content-Type': 'application/json;charset=UTF-8',
          HttpHeaders.authorizationHeader: "Bearer $token"
        },
        body: jsonEncode(<String, String>{
          'description': description,
          'severity': severity,
        }));
    if (response.statusCode != 200) {
      return null;
    }
    return response.body;
  }

  Future<String> addToQueue(List<int> listCrack) async {
    final prefs = await SharedPreferences.getInstance();
    var arr = new List(listCrack.length); // creates an empty array of length 5
    // assigning values to all the indices
    arr = listCrack.toList();
    var token = prefs.getString('jwtToken');
    print(arr);
    var apiPath = Uri.encodeFull(
        "https://bcds.azurewebsites.net/api/v1/maintenance-orders/queue");
    final http.Response response = await http.post(apiPath,
        headers: <String, String>{
          'Content-Type': 'application/json;charset=UTF-8',
          HttpHeaders.authorizationHeader: "Bearer $token"
        },
        body: arr.toString());
    print(response.statusCode);
    if (response.statusCode != 200) {
      return null;
    }
    return response.body;
  }

  //   Future<String> removeFromQueue(List<int> listCrack) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   var arr = new List(listCrack.length); // creates an empty array of length 5
  //   // assigning values to all the indices
  //   arr = listCrack.toList();
  //   var token = prefs.getString('jwtToken');
  //   print(arr);
  //   var apiPath = Uri.encodeFull(
  //       "https://bcds.azurewebsites.net/api/v1/maintenance-orders/queue");
  //   final http.Response response = await http.delete(apiPath,
  //       headers: <String, String>{
  //         'Content-Type': 'application/json;charset=UTF-8',
  //         HttpHeaders.authorizationHeader: "Bearer $token"
  //       },
  //       body: arr.toString());
  //   print(response.statusCode);
  //   if (response.statusCode != 200) {
  //     return null;
  //   }
  //   return response.body;
  // }
  Future<String> removeFromQueue(List<int> listCrack) async {
    final prefs = await SharedPreferences.getInstance();
    var arr = new List(listCrack.length); // creates an empty array of length 5
    // assigning values to all the indices
    arr = listCrack.toList();
    var token = prefs.getString('jwtToken');
    print(arr);
    var apiPath = Uri.encodeFull(
        "https://bcds.azurewebsites.net/api/v1/maintenance-orders/queue");
    final request = http.Request("DELETE", Uri.parse(apiPath));
    request.headers.addAll(<String, String>{
      'Content-Type': 'application/json;charset=UTF-8',
      HttpHeaders.authorizationHeader: "Bearer $token",
    });
    request.body = arr.toString();
    final response = await request.send();
    if (response.statusCode != 200)
      return Future.error("error: status code ${response.statusCode}");
    return await response.stream.bytesToString();
  }

  Future<List<CrackDTO>> fetchCrackInQueue() async {
    final prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('jwtToken');
    var apiPath = Uri.encodeFull(
        "https://bcds.azurewebsites.net/api/v1/maintenance-orders/queue");
    final response = await http.get(apiPath, headers: {
      HttpHeaders.contentTypeHeader: "application/json",
      HttpHeaders.authorizationHeader: "Bearer $token"
    });
    return parseCrack(utf8.decode(response.bodyBytes));
  }

  Future<String> deleteCrack(int crackId) async {
    final prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('jwtToken');
    var apiPath = Uri.encodeFull(
        "https://bcds.azurewebsites.net/api/v1/cracks/" + crackId.toString());
    final http.Response response = await http.delete(
      apiPath,
      headers: <String, String>{
        'Content-Type': 'application/json;charset=UTF-8',
        HttpHeaders.authorizationHeader: "Bearer $token"
      },
    );
    if (response.statusCode != 200) {
      return null;
    }
    return response.body;
  }

  List<CrackDTO> parseCrack(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<CrackDTO>((json) => CrackDTO.fromJson(json)).toList();
  }

  CrackRepository._internal();
}
