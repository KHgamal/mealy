import 'package:mealy/features/Auth/domain/entity/login_entity.dart';

abstract class LoginBaseRepository {
  Future<LoginEntity> loginUser(String email, String password);
}
