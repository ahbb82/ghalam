import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:univercity/Controller/auth_controller.dart';
import 'package:univercity/Public/colors.dart';
import 'package:univercity/UI/Component/Buttons/btn.dart';
import 'package:univercity/UI/Component/Inputs/input.dart';
import 'package:univercity/UI/Veiw/Reading/topic_lists.dart';
import 'package:univercity/UI/Veiw/Writing/writed_list.dart';

import '../../Veiw/Admin/admin_list.dart';

class LoginForm extends StatelessWidget {
  String type;
  LoginForm(this.type,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 210,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1,color: Colors.black),
          color: Colors.transparent
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
                    onChange: (text){
                      AuthController.loginUsername = text;
                    },
                    hint: "نام کاربری",
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
                    onChange: (text){
                      AuthController.LoginPassword = text;
                    },
                    hint: 'رمز ورود',
                  )
              )
            ],
          ),
          Spacer(),
          Btn(
            btnType.custom,
            width: 280,
            height: 50,
            color: Colors.white,
            text: 'ورود',
            onClick: (){
              type == 'خواننده'?
              AuthController.ReaderLogin():
              type == 'نویسنده'?
              AuthController.WriterLogin():
              type == 'ادمین'?
              AuthController.AdminLogin():
              (){

              };
            },
          )
        ],
      ),
    );
  }
}
