import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mealy/features/completeData/data/datasource/remote_data_source.dart';
import 'package:mealy/features/completeData/data/repository/register_repository.dart';
import 'package:mealy/features/completeData/domain/entity/register.dart';
import 'package:mealy/features/completeData/domain/repository/base_register_repository.dart';

part 'register_cubit_state.dart';

class RegisterCubitCubit extends Cubit<RegisterCubitState> {
  RegisterCubitCubit() : super(RegisterCubitInitial());

  Future<void> registerAccount(RegistryAccount account) async {
    BaseAccountDataSource accountDataSource = AccountDataSource();
    BaseRegisterRepository registrationRepository =
        AccountRepositoryImpl(accountDataSource);
    try {
      emit(RegisterCubitLoading());
      await registrationRepository.registerAccount(account);
      emit(RegisterCubitSuccess());
    } catch (e) {
      emit(RegisterCubitFailure(e.toString()));
    }
  }
}
