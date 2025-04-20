import 'package:flutter/material.dart';
import 'package:univercity/Public/colors.dart';
import 'package:univercity/UI/Component/Headers/login_header.dart';
import 'package:univercity/UI/Component/Login/login_form.dart';
import 'package:univercity/UI/Component/Login/register_form.dart';
import 'package:univercity/UI/Veiw/Login/select-services.dart';

class Login extends StatelessWidget {
  Login(this.type);

  String type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: login_background.withOpacity(0.4),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                login_background,
                Colors.white
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
          )
        ),
        child: Column(
          children: [
            // LoginHeader(type:type),
            SizedBox(height: 20),
            // LoginHeader(register: true),
            Row(
              children: [
                SizedBox(width: 15),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectServices()));
                  },
                  child: Icon(Icons.home,size: 25),
                ),
              ],
            ),
            Spacer(),
            LoginForm(type),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
