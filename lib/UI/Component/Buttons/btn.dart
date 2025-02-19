import 'package:flutter/material.dart';
import 'package:univercity/Public/colors.dart';

enum btnType{
  primary,
  secondary,
  mini,
  custom
}

class Btn extends StatelessWidget {
  Function? onClick;
  btnType type;
  bool isHalf;
  String? loadingTag;
  String? text;
  Widget? child;
  double? width;
  double? height;
  Color? color;
  TextStyle? fontType;
  Btn(this.type,{this.text,this.onClick,this.isHalf=false,this.width,this.height,this.loadingTag , this.child , this.color,this.fontType});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return  Center(
      child: Container(
          width: this.isHalf?((size.width<900?size.width:900)-(2*20))/2.05:this.width??900,
          height: height??50,
          decoration: BoxDecoration(
            border: Border.all(color:this.type==btnType.secondary?itemColor5:Colors.transparent,width: 1),
            borderRadius: BorderRadius.circular(15)
          ),
          child: ElevatedButton(
            onPressed: ()async{
              if(this.onClick!=null)
                  this.onClick!();
            },

              style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
              )
              ),
              backgroundColor: MaterialStateProperty.all(type==btnType.primary?Colors.transparent:type==btnType.mini?itemColor3.withOpacity(0.15):type==btnType.custom?this.color:whiteColor),
              elevation: MaterialStateProperty.all(0),
                  padding: MaterialStateProperty.all(EdgeInsets.zero)

            ), child: Text(text!,style: fontType??TextStyle(fontSize: 20,color: login_background,fontWeight: FontWeight.w600),),
          ),
        ),
    );
  }
}
