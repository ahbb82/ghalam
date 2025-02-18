import 'dart:async';

import 'package:flutter/material.dart';
import 'package:univercity/Public/colors.dart';
import 'package:univercity/Public/images.dart';
import 'package:univercity/UI/Component/General/img.dart';
import 'package:univercity/UI/Veiw/Login/select-services.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  

  void initState(){
    Timer(Duration(seconds: 3) , () async{
      Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectServices()));
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: login_background.withOpacity(0.4),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Img(Logo,width: 150),
              SizedBox(height: 20),
              Text('قلم',style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.black),)
            ],
          ),
        )
    );
  }
}
