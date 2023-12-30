import 'package:equatable/equatable.dart';

import 'exceptions.dart';


abstract class Failure extends Equatable{
  const Failure({required this.error,required this.code});

  final String error;
  final dynamic code;

  String get errorMessage {
    final showErrorText =
        code is! String || int.tryParse(code as String) != null;
    return '$code${showErrorText ? ' Error' : ''}: $error';
  }

  @override
  List<dynamic> get props => [error,code];
}

class CacheFailure extends Failure{

  const CacheFailure({required super.error,required super.code});

  CacheFailure convertException(CacheException cacheException){
    return CacheFailure(error: cacheException.error, code: cacheException.code);
  }

}

class ApiFailure extends Failure{

  const ApiFailure({required super.error,required super.code});

  ApiFailure.fromException(ApiException exception)
      : this(error: exception.error, code: exception.code);


}

