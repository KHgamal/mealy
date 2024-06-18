import 'dart:convert';
import 'dart:io';

import 'package:mealy/features/Auth/domain/entity/register.dart';
import 'package:http/http.dart' as http;

import '../model/register_model.dart';

abstract class AccountDataSource {
  Future<void> registerAccount(RegistryAccount account);
}

class ApiAccountDataSource implements AccountDataSource {
  final HttpClient
      httpClient; // Assuming you have an HTTP client for API communication

  ApiAccountDataSource(this.httpClient);

  @override
  Future<void> registerAccount(RegistryAccount account) async {
    const url = 'http://meallyapp.runasp.net/api/Account/register';

    final requestModel = RegisterAccountModel(
      displayName: account.displayName,
      email: account.email,
      phoneNumber: account.phoneNumber,
      password: account.password,
      confirmPassword: account.confirmPassword,
    );

    final jsonBody = jsonEncode(requestModel.toJson());

    final response = await http.post(Uri.parse(url),
        body: jsonBody, headers: {'Content-Type': 'application/json'});

    if (response.statusCode != 200) {
      throw Exception('Failed to register account: ${response.statusCode}');
    }
  }
}
