import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:univercity/Public/colors.dart';

class MainHeader extends StatelessWidget {
  String topic;
  MainHeader(this.topic,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: login_background,
      height: 50,
      child: Row(
        children: [
          SizedBox(width: 5),
          InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,size: 20)
          ),
          Spacer(),
          Text(topic,
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),
          ),
          Spacer(),
          Container(width: 30,)
        ],
      ),
    );
  }
}
