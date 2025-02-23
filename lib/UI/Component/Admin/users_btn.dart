import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsersBtn extends StatelessWidget {
  const UsersBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(6),
      width: size.width<400?size.width-40:400,
      height: 50,
      padding: EdgeInsets.only(right: 10,left: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(offset: Offset(1,1),blurRadius: 1,spreadRadius: 1,color: Colors.black45)],
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.black87,width: 1),
      ),
      child: Row(
        children: [
          Text('نام',style: TextStyle()),
          SizedBox(width: 5),
          Text('نوع کاربری'),
          SizedBox(width: 5),
          Spacer(),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1,color: Colors.black38),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Icon(Icons.delete,color: Colors.black,),
          )
        ],
      ),
    );
  }
}
