class SignUpData {
  SignUpData({
    this.message,
    this.user,
    this.token,
  });

  String? message;
  User? user;
  String? token;
}

class User {
  User({
    this.name,
    this.email,
    this.role,
  });

  String? name;
  String? email;
  String? role;
}
