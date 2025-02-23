import 'package:flutter/material.dart';
import 'package:univercity/Public/colors.dart';
import 'package:univercity/UI/Component/Admin/users_btn.dart';
import 'package:univercity/UI/Component/Headers/main_header.dart';

class UsersList extends StatelessWidget {
  const UsersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: login_background.withOpacity(0.3),
      body: Container(
        width: size.width,
        height: size.height,
        child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
            child: Column(
              children: [
                MainHeader('لیست کاربران'),
                SizedBox(height: 10),
                for(int i=0;i<20;i++)
                  UsersBtn()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
