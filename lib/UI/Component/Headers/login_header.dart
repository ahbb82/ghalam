import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:univercity/Public/colors.dart';

class LoginHeader extends StatelessWidget {
  LoginHeader(this.type);
  String type;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 70,
      decoration: BoxDecoration(
        color: login_background,
      ),
      child: Row(
        children: [
          SizedBox(width: 5),
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
              child: Icon(Icons.arrow_back,size: 28)
          ),
          Spacer(),
          Text(' ورود کاربر به عنوان ${type}',
            style: TextStyle(fontSize: 28,fontWeight: FontWeight.w400,color: Colors.black),
          ),
          Spacer(),
          Container(width: 30,)
        ],
      ),
    );
  }
}
