import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopicListItem extends StatelessWidget {
  const TopicListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 900,
      height: 50,
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1,color: Colors.black26),
        boxShadow: [BoxShadow(color: Colors.black38,blurRadius: 2,offset: Offset(1, 1),spreadRadius: 1)],
        borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        children: [
          SizedBox(width: 10),
          Expanded(
              child: Text(
                'نام داستان',
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 15),
                maxLines: 1,
                overflow: TextOverflow.fade,
              )
          ),
          Spacer(),
          Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black54,size: 17,),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
