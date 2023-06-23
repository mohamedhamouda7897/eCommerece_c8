import 'package:dartz/dartz.dart';
import 'package:ecommerce_c8_friday/features/sign_up/domain/entities/sign_up_param.dart';
import 'package:ecommerce_c8_friday/features/sign_up/domain/entities/signup.dart';
import 'package:ecommerce_c8_friday/features/sign_up/domain/repositories/sign_up_repo.dart';

import '../../../../core/error/failuers.dart';
import '../data_sources/dto.dart';

class Repo implements SignUpRepository {
  DataSources dataSources;

  Repo(this.dataSources);

  @override
  Future<Either<Failures, SignUpData>> signUp(SignUpParam signUpParam) {
    return dataSources.signUp(signUpParam);
  }
}
