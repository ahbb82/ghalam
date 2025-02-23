import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:univercity/Public/colors.dart';

class AdminListBtn extends StatelessWidget {
  String title;
  Function onclick;
  AdminListBtn(this.title,this.onclick,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(this.onclick!=null)
          this.onclick!();
      },
      child: Container(
        width: 150,
        height: 50,
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: login_background.withOpacity(0.8),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(offset: Offset(1,2),spreadRadius: 1,blurRadius: 1)]
        ),
        child: Center(
          child: Text(title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25,color: CupertinoColors.white),),
        ),
      ),
    );
  }
}
