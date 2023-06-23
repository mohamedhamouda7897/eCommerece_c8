import 'package:dartz/dartz.dart';
import 'package:ecommerce_c8_friday/features/sign_up/domain/entities/sign_up_param.dart';
import 'package:ecommerce_c8_friday/features/sign_up/domain/entities/signup.dart';

import '../../../../core/error/failuers.dart';

abstract class SignUpRepository {
  Future<Either<Failures, SignUpData>> signUp(SignUpParam signUpParam);
}
