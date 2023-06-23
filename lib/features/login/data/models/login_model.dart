import '../../../sign_up/domain/entities/signup.dart';
import '../../domain/entities/login.dart';

class LoginModel extends LoginData {
  LoginModel.fromJson(Map<String, dynamic> json)
      : super(
          message: json['message'],
          token: json['token'],
          user: UserModel.fromJson(json["user"]),
        );
}

class UserModel extends User {
  UserModel.fromJson(Map<String, dynamic> json)
      : super(name: json['name'], email: json['email'], role: json['role']);
}
