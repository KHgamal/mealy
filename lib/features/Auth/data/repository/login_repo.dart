import 'package:mealy/features/Auth/data/data%20source/login_remote.dart';
import 'package:mealy/features/Auth/domain/entity/login_entity.dart';
import 'package:mealy/features/Auth/domain/repository/login_base_repo.dart';

class LoginRepository implements LoginBaseRepository {
  final LoginRemote remoteDataSource;

  LoginRepository({required this.remoteDataSource});

  @override
  Future<LoginEntity> loginUser(String email, String password) async {
    final userModel = await remoteDataSource.loginUser(email, password);

    final userEntity = LoginEntity(
      email: userModel.email,
      displayName: userModel.displayName,
      phoneNumber: userModel.phoneNumber
    );

    return userEntity;
  }
}
