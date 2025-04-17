import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:univercity/Controller/admin_controller.dart';
import 'package:univercity/Public/colors.dart';
import 'package:univercity/UI/Component/Admin/admin_list_btn.dart';
import 'package:univercity/UI/Veiw/Admin/story_list.dart';
import 'package:univercity/UI/Veiw/Admin/users_list.dart';
import 'package:univercity/UI/Veiw/Writing/writed_list.dart';

class AdminList extends StatelessWidget {
  const AdminList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: login_background.withOpacity(0.4),
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AdminListBtn('کاربران', (){
              AdminController.GetUsers();
            }),
            AdminListBtn('داستان ها', ()async{
              await AdminController.GetStories();
              Get.to(StoryList(false));
            }
            ),
          ],
        ),
      ),
    );
  }
}
