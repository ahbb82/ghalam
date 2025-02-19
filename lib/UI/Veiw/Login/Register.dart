import 'package:flutter/material.dart';
import 'package:univercity/Public/colors.dart';
import 'package:univercity/UI/Component/Headers/login_header.dart';
import 'package:univercity/UI/Component/Login/register_form.dart';

class Register extends StatelessWidget {
  Register(this.type);

  String type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: login_background.withOpacity(0.4),
      body: Column(
        children: [
          LoginHeader(type),
          Spacer(),
          LoginForm(),
          Spacer(),
        ],
      ),
    );
  }
}
