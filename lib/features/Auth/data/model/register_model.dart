import 'package:mealy/features/Auth/domain/entity/register.dart';

class RegisterAccountModel extends RegistryAccount {
  RegisterAccountModel({
    required super.displayName,
    required super.email,
    required super.phoneNumber,
    required super.password,
    required super.confirmPassword,
  });

  Map<String, dynamic> toJson() {
    return {
      'displayName': displayName,
      'email': email,
      'phoneNumber': phoneNumber,
      'password': password,
      'confirmPassword': confirmPassword,
    };
  }
}
