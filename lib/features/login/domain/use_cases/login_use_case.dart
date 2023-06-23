import 'package:dartz/dartz.dart';
import 'package:ecommerce_c8_friday/core/error/failuers.dart';
import 'package:ecommerce_c8_friday/features/login/domain/entities/login.dart';
import 'package:ecommerce_c8_friday/features/login/domain/repositories/login_repo.dart';

class LoginUseCase {
  LoginRepository loginRepository;
  String email;
  String password;

  LoginUseCase(this.loginRepository, this.email, this.password);

  Future<Either<Failures, LoginData>> call() =>
      loginRepository.login(email, password);
}
