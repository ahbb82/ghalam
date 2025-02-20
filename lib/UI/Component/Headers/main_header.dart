import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  String topic;
  MainHeader(this.topic,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 50,
      child: Row(
        children: [
          SizedBox(width: 5),
          InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,size: 24)
          ),
          Spacer(),
          Text(topic,
            style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400,color: Colors.black),
          ),
          Spacer(),
          Container(width: 30,)
        ],
      ),
    );
  }
}
