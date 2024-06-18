import '../entity/register.dart';

abstract class BaseRegisterRepository {
  Future<void> registerAccount(RegistryAccount account);
}
