import 'package:flutter/material.dart';
import 'package:univercity/Public/colors.dart';
import 'package:univercity/UI/Component/Inputs/input.dart';

class WritingStory extends StatelessWidget {
  const WritingStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white60,
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 15),
              Text('عنوان',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w400,color: Colors.black),),
              SizedBox(width: 30),
              Input(height: 50,width: size.width-120,hasBorder2: true,),
              SizedBox(width: 15),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
              child: Row(
                children: [
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Text('داستان',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w400,color: Colors.black),),
                    ],
                  ),
                  SizedBox(width: 15),
                  Input(width: size.width-120,hasBorder2: true,lines: 50,),
                  SizedBox(width: 15),
                ],
              )
          ),
          SizedBox(height: 15),
          Container(
            height: 60,
            width: size.width,
            color: login_background,
            child: Center(
              child: Text('تمام',style: TextStyle(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w500)),
            ),
          )
        ],
      ),
    );
  }
}
