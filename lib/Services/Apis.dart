import 'package:flutter/material.dart';
import 'package:verse_app/Models/UserProfile.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Apis {
  Future<UserProfile> loginUser(String username, String password) async {
    try {
      Map<String, String> payload = {
        "username": username,
        "password": password
      };
      var response = await PostRequest(payload);

      if (response.statusCode == 200) {
        var responseBody = jsonDecode(response.body);
        var profile = UserProfile.fromJson(responseBody);
        return profile;
      }
      else{
        var responseBody = jsonDecode(response.body);
        var profile = UserProfile.fromJson(responseBody);
        return profile;
      }
    } on Exception catch (e) {
      throw Text(e.toString());
    }
  }

  Future<http.Response> PostRequest(Map Payload) async {
    return http.post(
        Uri.parse('https://2225f848-d576-40b3-91d7-e9c96601f0e6.mock.pstmn.io'),
        headers: {'x-mock-match-request-body': 'true'},
        body: Payload);
  }
}
