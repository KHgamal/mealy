import 'package:mealy/features/completeData/domain/entity/register.dart';
import 'package:mealy/features/completeData/domain/repository/base_register_repository.dart';

import '../datasource/remote_data_source.dart';
import '../model/register_model.dart';

class AccountRepositoryImpl implements BaseRegisterRepository {
  final BaseAccountDataSource accountDataSource;

  AccountRepositoryImpl(this.accountDataSource);

  @override
  Future<void> registerAccount(RegistryAccount account) {
    final requestModel = RegisterAccountModel(
      displayName: account.displayName,
      email: account.email,
      phoneNumber: account.phoneNumber,
      password: account.password,
      confirmPassword: account.confirmPassword,
    );
    return accountDataSource.registerAccount(requestModel);
  }
}
