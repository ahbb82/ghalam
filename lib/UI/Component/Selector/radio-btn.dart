import 'package:flutter/material.dart';
import 'package:univercity/Public/colors.dart';

class RadioBtn extends StatelessWidget {
  var groupValue,optionValue;
  Function? onClick;
  String? lable,description;
  RadioBtn(this.groupValue,this.optionValue,{this.onClick,this.lable,this.description});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if(onClick!=null)
          onClick!();
      },
      child:Container(
            width: 900,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Radio<dynamic>(
                        activeColor: Colors.indigo,
                        groupValue: groupValue,
                        value: optionValue,
                        onChanged: (value){
                          if(onClick!=null)
                            onClick!();
                        },
                      ),
                      SizedBox(width: 10,),
                      Expanded(child: Text(this.lable??'' ,style: TextStyle( fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black)))
                    ],
                  ),
                  SizedBox(height: 10,),
                  description!=null?Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: 40),
                    child: Text(this.description!,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 15),maxLines: null,),
                  ):Container()
                ],
              ),
            ),

    )
    ;
  }
}


