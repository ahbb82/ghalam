import 'dart:async';

import 'package:flutter/material.dart';
import 'package:univercity/UI/Veiw/Login/select_services.dart';

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

        )
    );
  }
}
