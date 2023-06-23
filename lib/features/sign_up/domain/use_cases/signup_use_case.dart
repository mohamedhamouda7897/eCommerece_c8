import 'package:dartz/dartz.dart';

import '../../../../core/error/failuers.dart';
import '../entities/sign_up_param.dart';
import '../entities/signup.dart';
import '../repositories/sign_up_repo.dart';

class SignUpUseCase {
  SignUpRepository signUpRepository;
  SignUpParam signUpParam;

  SignUpUseCase(this.signUpRepository, this.signUpParam);

  Future<Either<Failures, SignUpData>> call() =>
      signUpRepository.signUp(signUpParam);
}
