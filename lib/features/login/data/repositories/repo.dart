import 'package:dartz/dartz.dart';
import 'package:ecommerce_c8_friday/core/error/failuers.dart';
import 'package:ecommerce_c8_friday/features/login/domain/entities/login.dart';
import 'package:ecommerce_c8_friday/features/login/domain/repositories/login_repo.dart';

import '../data_sources/dto.dart';

class LoginRepo implements LoginRepository {
  LoginDataSources loginDataSources;

  LoginRepo(this.loginDataSources);

  @override
  Future<Either<Failures, LoginData>> login(String email, String password) {
    return loginDataSources.login(email, password);
  }
}
