import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:univercity/Controller/reader_controller.dart';
import 'package:univercity/Public/colors.dart';

class MainHeader extends StatelessWidget {
  String topic;
  bool counter;
  MainHeader(this.topic,{this.counter = false});

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
              onTap: (){Navigator.pop(context);},
              child: Icon(Icons.arrow_back,size: 20)
          ),
          Spacer(),
          Text(topic,
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),
          ),
          Spacer(),
          counter?Row(
            children: [
              Text('تعداد لایک : ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.black),),
              Text('${ReaderController.count}',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300,color: Colors.black),),
              SizedBox(width: 5)
            ],
          ):Container(),
        ],
      ),
    );
  }
}
