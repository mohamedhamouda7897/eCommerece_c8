import 'package:dartz/dartz.dart';
import 'package:ecommerce_c8_friday/core/error/failuers.dart';
import 'package:ecommerce_c8_friday/features/login/data/models/login_model.dart';

abstract class LoginDataSources {
  Future<Either<Failures, LoginModel>> login(String email, String password);
}
