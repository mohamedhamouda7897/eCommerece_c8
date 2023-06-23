import 'package:dartz/dartz.dart';

import '../../../../core/error/failuers.dart';
import '../../domain/entities/sign_up_param.dart';
import '../models/signUpModel.dart';

abstract class DataSources {
  Future<Either<Failures, SignUpModel>> signUp(SignUpParam signUpParam);
}
