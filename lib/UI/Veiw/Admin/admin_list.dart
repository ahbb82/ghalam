import 'package:flutter/material.dart';
import 'package:univercity/Public/colors.dart';
import 'package:univercity/UI/Component/Admin/admin_list_btn.dart';
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
              Navigator.push(context, MaterialPageRoute(builder: (builder)=>UsersList()));
            }),
            AdminListBtn('داستان ها', (){
              Navigator.push(context, MaterialPageRoute(builder: (builder)=>WritedList(false)));
              print('object');
            }
            ),
          ],
        ),
      ),
    );
  }
}
