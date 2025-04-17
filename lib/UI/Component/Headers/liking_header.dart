import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:univercity/Controller/reader_controller.dart';
import 'package:univercity/Public/colors.dart';
import 'package:univercity/Public/images.dart';
import 'package:univercity/UI/Component/General/img.dart';

class LikingHeader extends StatefulWidget {
  String title;
  LikingHeader(this.title);

  @override
  State<LikingHeader> createState() => _LikingHeaderState();
}

class _LikingHeaderState extends State<LikingHeader> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      color: login_background.withOpacity(0.6),
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
          Text(widget.title,
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: Colors.black),
          ),
          Spacer(),
          InkWell(
              onTap: (){
                // ReaderController.kk.value = !ReaderController.kk.value;
                setState(() {
                  ReaderController.is_liked.value?ReaderController.DisLiking():ReaderController.Liking();
                });
              },
              child: Obx(() => ReaderController.is_liked.value?Img(like,width: 25,color: Colors.red,):Img(like,width: 25))
          ),
          SizedBox(width: 10,)
        ],
      ),
    );
  }
}
