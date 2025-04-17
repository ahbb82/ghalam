import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:univercity/Controller/auth_controller.dart';
import 'package:univercity/Public/colors.dart';
import 'package:univercity/UI/Component/Buttons/btn.dart';
import 'package:univercity/UI/Component/Inputs/input.dart';
import 'package:univercity/UI/Component/Selector/radio-group.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 280,
      padding: EdgeInsets.all(10),
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
              Container(
                  width: 270,
                  height: 50,
                  child: Input(
                    width: 280,
                    height: 50,
                    radius: 15,
                    hint: "نام کاربری",
                    onChange: (text){
                      AuthController.registerUsername = text;
                    },
                  )
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 270,
                  height: 50,
                  child: Input(
                    width: 280,
                    height: 50,
                    radius: 15,
                    hint: 'رمز ورود',
                    onChange: (text){
                      AuthController.registerPassword = text;
                    },
                  )
              )
            ],
          ),
          SizedBox(height: 10),
          RadioGroup(
            true,
            {
              'نویسنده': true,
              'خواننده': false,
            },
            onChange: (value){
              AuthController.registerIswrite = value;
            },
          ),
          Spacer(),
          Btn(
            btnType.custom,
            width: 280,
            height: 50,
            color: Colors.white,
            text: 'ثبت نام',
            onClick: () =>  AuthController.Register(),
          )
        ],
      ),
    );
  }
}
