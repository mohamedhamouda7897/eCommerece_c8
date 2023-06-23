import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce_c8_friday/core/error/failuers.dart';
import 'package:ecommerce_c8_friday/features/login/data/models/login_model.dart';

import '../../../../core/api/end_point.dart';
import '../../../../core/utils/constants.dart';
import 'dto.dart';

class LoginRemoteDataSource implements LoginDataSources {
  @override
  Future<Either<Failures, LoginModel>> login(
      String email, String password) async {
    var dio = Dio();

    try {
      var response =
          await dio.post("${Constants.baseUrl}${EndPoints.login}", data: {
        "email": email,
        "password": password,
      });
      LoginModel loginModel = LoginModel.fromJson(response.data);
      return Right(loginModel);
    } catch (e) {
      return Left(ServerFailures(e));
    }
  }
}
