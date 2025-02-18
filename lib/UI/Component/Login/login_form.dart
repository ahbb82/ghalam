import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:univercity/Public/colors.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 1,color: Colors.black),
        color: login_background
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('نام کاربری'),
              SizedBox(width: 10),
              Container(
                  width: 60,
                  height: 15,
                  child: TextField())
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('رمز ورود'),
              SizedBox(width: 10),
              Container(
                  width: 60,
                  height: 15,
                  child: TextField()
              )
            ],
          ),
        ],
      ),
    );
  }
}
