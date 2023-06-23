import 'package:ecommerce_c8_friday/core/error/failuers.dart';
import 'package:ecommerce_c8_friday/features/sign_up/domain/entities/signup.dart';

abstract class SignUpStates {}

class SignUpInitState extends SignUpStates {}

class SignUpLoadingState extends SignUpStates {}

class SignUpSuccessState extends SignUpStates {
  SignUpData signUpData;

  SignUpSuccessState(this.signUpData);
}

class SignUpErrorState extends SignUpStates {
  Failures failures;

  SignUpErrorState(this.failures);
}
