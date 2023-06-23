import '../../../../core/error/failuers.dart';
import '../../domain/entities/login.dart';

abstract class LoginStates {}

class LoginInitState extends LoginStates {}

class LoginLoadingState extends LoginStates {}

class LoginSuccessState extends LoginStates {
  LoginData loginData;

  LoginSuccessState(this.loginData);
}

class LoginErrorState extends LoginStates {
  Failures failures;

  LoginErrorState(this.failures);
}
