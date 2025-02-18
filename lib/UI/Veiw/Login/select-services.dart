import 'package:flutter/material.dart';
import 'package:univercity/UI/Component/Buttons/select-service-btn.dart';
import '../../../Public/colors.dart';

class SelectServices extends StatelessWidget {
  const SelectServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: login_background.withOpacity(0.4),
      body: Container(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SelectServicesBtn('ثبت نام'),
            SizedBox(height: 15),
            SelectServicesBtn("نویسنده"),
            SizedBox(height: 15),
            SelectServicesBtn("خواننده"),
            SizedBox(height: 15),
            SelectServicesBtn("ادمین"),
          ],
        ),
      ),
    );
  }
}
