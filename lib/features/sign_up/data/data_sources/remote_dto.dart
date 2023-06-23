import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce_c8_friday/core/api/end_point.dart';
import 'package:ecommerce_c8_friday/core/utils/constants.dart';
import 'package:ecommerce_c8_friday/features/sign_up/data/data_sources/dto.dart';
import 'package:ecommerce_c8_friday/features/sign_up/data/models/signUpModel.dart';

import '../../../../core/error/failuers.dart';
import '../../domain/entities/sign_up_param.dart';

class RemoteDataSource implements DataSources {
  var dio = Dio();

  @override
  Future<Either<Failures, SignUpModel>> signUp(SignUpParam param) async {
    try {
      var response =
          await dio.post("${Constants.baseUrl}${EndPoints.signUp}", data: {
        "name": param.name,
        "email": param.email,
        "password": param.password,
        "rePassword": param.password,
        "phone": param.phone
      });
      print("herereeeeeee 33");
      SignUpModel signUpModel = SignUpModel.fromJson(response.data);
      return Right(signUpModel);
    } catch (e) {
      return Left(ServerFailures(e));
    }
  }
}
