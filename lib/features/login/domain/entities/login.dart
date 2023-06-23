import '../../../sign_up/domain/entities/signup.dart';

class LoginData {
  LoginData({
    this.message,
    this.user,
    this.token,
  });

  String? message;
  User? user;
  String? token;
}
