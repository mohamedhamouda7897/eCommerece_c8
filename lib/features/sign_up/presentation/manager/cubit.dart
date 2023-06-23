import 'package:ecommerce_c8_friday/features/sign_up/presentation/manager/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/data_sources/dto.dart';
import '../../data/repositories/repo.dart';
import '../../domain/entities/sign_up_param.dart';
import '../../domain/repositories/sign_up_repo.dart';
import '../../domain/use_cases/signup_use_case.dart';

class SignUpCubit extends Cubit<SignUpStates> {
  DataSources dataSource;

  SignUpCubit(this.dataSource) : super(SignUpInitState());

  static SignUpCubit get(context) => BlocProvider.of(context);

  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();

  void signUp() async {
    emit(SignUpLoadingState());
    SignUpRepository sRepo = Repo(dataSource);
    SignUpParam signUpParam = SignUpParam("emailController55@gmail.com",
        "01110944558", "nameController", "123@Ahmed");
    SignUpUseCase s = SignUpUseCase(sRepo, signUpParam);
    var response = await s.call();
    response.fold((l) {
      emit(SignUpErrorState(l));
    }, (r) {
      emit(SignUpSuccessState(r));
    });
  }
}
