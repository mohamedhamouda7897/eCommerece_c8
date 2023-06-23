import 'package:dartz/dartz.dart';
import 'package:ecommerce_c8_friday/core/error/failuers.dart';
import 'package:ecommerce_c8_friday/features/login/domain/entities/login.dart';

abstract class LoginRepository {
  Future<Either<Failures, LoginData>> login(String email, String password);
}
