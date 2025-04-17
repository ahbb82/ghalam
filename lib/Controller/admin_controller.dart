import 'package:get/get.dart';
import 'package:univercity/Helper/api_service.dart';
import 'package:univercity/Helper/snackbar.dart';
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
    print(usersList);
  }

  static DeleteUser(int id)async{
    var res = await ApiService.post('Admin/DeleteUser',{
      "id": id
    });
    showSnackbar(res.data['success']?snackTypes.success:snackTypes.error, res.data['message']);
  }
}