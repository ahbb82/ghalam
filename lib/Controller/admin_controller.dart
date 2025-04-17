import 'package:get/get.dart';
import 'package:univercity/Helper/api_service.dart';
import 'package:univercity/Helper/snackbar.dart';
import 'package:univercity/Model/story.dart';
import 'package:univercity/Model/user.dart';
import 'package:univercity/UI/Veiw/Admin/users_list.dart';
import 'package:univercity/UI/Veiw/Writing/writed_list.dart';

class AdminController extends GetxController{
  static List<User> usersList = [];
  static List<Story> storiesList = [];

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

  static GetStories ()async{
    var res = await ApiService.get('story/GetStory');
    storiesList.clear();
    for (var storyJson in res.data['body']){
      Story x = Story.fromJson(storyJson);
      storiesList.add(x);
    }
    print(storiesList);
  }

  static DeleteUser(int id)async{
    var res = await ApiService.post('Admin/DeleteUser',{
      "id": id
    });
    showSnackbar(res.data['success']?snackTypes.success:snackTypes.error, res.data['message']);
  }

  static DeleteSrory(int id)async{
    var res = await ApiService.post('Admin/DeleteStory',{
      "id": id
    });
    showSnackbar(res.data['success']?snackTypes.success:snackTypes.error, res.data['message']);
  }
}