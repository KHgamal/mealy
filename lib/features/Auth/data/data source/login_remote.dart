import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../../../constant.dart';
import '../model/login_model.dart';

class LoginRemote {
  Future<LoginModel> loginUser(String email, String password) async {
    final url = Uri.parse('$baseUrl/api/Account/login');
    final headers = {'Content-Type': 'application/json'};
    final body = jsonEncode({
      'email': email,
      'password': password,
    });

    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      final displayName = responseData['displayName'] as String;
      final userEmail = responseData['email'] as String;
      final phoneNumber = responseData['phoneNumber'] as String;

      return LoginModel(
        displayName: displayName,
        email: userEmail,
        phoneNumber: phoneNumber,
      );
    } else {
      throw Exception('Failed to login user');
    }
  }
}
