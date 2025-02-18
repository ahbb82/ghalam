import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:univercity/UI/Veiw/Login/login.dart';

class SelectServicesBtn extends StatelessWidget {
  String title;
  SelectServicesBtn(this.title);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Login(title)));
      },
      child: Container(
        width: 200,
        height: 70,
        decoration: BoxDecoration(
          color: CupertinoColors.activeBlue,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1,color: Colors.black)
        ),
        child: Center(
            child: Text(
                title,
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400,color: CupertinoColors.black)
            )
        ),
      ),
    );
  }
}
