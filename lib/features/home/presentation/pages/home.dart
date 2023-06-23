import 'package:ecommerce_c8_friday/features/login/domain/entities/login.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  LoginData loginData;

  HomeScreen(this.loginData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home ${loginData.user?.name}"),
      ),
    );
  }
}
