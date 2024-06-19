import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../../constant.dart';
import '../../domain/entity/register.dart';
import '../model/register_model.dart';

abstract class BaseAccountDataSource {
  Future<void> registerAccount(RegistryAccount account);
}

class AccountDataSource implements BaseAccountDataSource {
  // final HttpClient httpClient;

  // AccountDataSource(this.httpClient);

  @override
  Future<void> registerAccount(RegistryAccount account) async {
    String url = '$baseUrl/api/Account/register';

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
      print(response.statusCode);
      throw Exception('Failed to register account: ${response.statusCode}');
    }
  }
}
