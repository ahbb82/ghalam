import 'package:get/get.dart';
import 'package:univercity/Helper/api_service.dart';
import 'package:univercity/Model/user.dart';
import 'package:univercity/UI/Veiw/Admin/users_list.dart';

class AdminController extends GetxController{
  static List<User> usersList = [];

  static GetUsers ()async{
    var res = await ApiService.get('Admin/GetUser');
    usersList.clear();
    for (var userJson in res.data['body']){
      User x = User.fromJson(userJson);
      usersList.add(x);
    }
    Get.to(UsersList());
  }
}