import '../../domain/entities/signup.dart';

class SignUpModel extends SignUpData {
  SignUpModel.fromJson(Map<String, dynamic> json)
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
