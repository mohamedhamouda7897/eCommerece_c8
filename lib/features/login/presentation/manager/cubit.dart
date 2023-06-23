import 'package:ecommerce_c8_friday/features/login/data/data_sources/dto.dart';
import 'package:ecommerce_c8_friday/features/login/data/repositories/repo.dart';
import 'package:ecommerce_c8_friday/features/login/domain/repositories/login_repo.dart';
import 'package:ecommerce_c8_friday/features/login/domain/use_cases/login_use_case.dart';
import 'package:ecommerce_c8_friday/features/login/presentation/manager/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginDataSources dataSource;

  LoginCubit(this.dataSource) : super(LoginInitState());

  static LoginCubit get(context) => BlocProvider.of(context);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  void login() async {
    emit(LoginLoadingState());
    LoginRepository loginRepository = LoginRepo(dataSource);
    LoginUseCase loginUseCase = LoginUseCase(
        loginRepository, "Mohamedhamouda55@gmail.com", "123@Mohamed");
    var result = await loginUseCase.call();
    result.fold((l) {
      emit(LoginErrorState(l));
    }, (r) {
      emit(LoginSuccessState(r));
    });
  }
}
