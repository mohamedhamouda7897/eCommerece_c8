import 'package:dartz/dartz.dart';
import 'package:ecommerce_c8_friday/features/sign_up/data/data_sources/dto.dart';
import 'package:ecommerce_c8_friday/features/sign_up/data/models/signUpModel.dart';
import 'package:ecommerce_c8_friday/features/sign_up/domain/entities/sign_up_param.dart';

import '../../../../core/error/failuers.dart';

class LocalDataSource implements DataSources {
  @override
  Future<Either<Failures, SignUpModel>> signUp(SignUpParam signUpParam) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
