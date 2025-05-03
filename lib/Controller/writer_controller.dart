import 'package:get/get.dart';
import 'package:univercity/Helper/api_service.dart';
import 'package:univercity/Helper/snackbar.dart';
import 'package:univercity/Model/story.dart';
import 'package:univercity/UI/Veiw/Writing/writed_list.dart';



class WriterController extends GetxController{

  static int writer_id = 0;

  static final List writerStoriesList = <Story>[].obs;

  static String title = '';
  static String text = '';

  static GetWriterStories(int num)async{
    var res = await ApiService.post('Writer/GetWriterStories',{
      "writerID": num
    });
    writerStoriesList.clear();
    for (var storyJson in res.data['body']){
      Story x = Story.fromJson(storyJson);
      writerStoriesList.add(x);
    }
    print(writerStoriesList);
    if(res.data['success']=true)
      Get.to(WritedList(true));
    writer_id = num;
    print(writer_id);
  }

  static AddStory()async{
    var res = await ApiService.post('Writer/AddStory', {
      "writerID": writer_id,
      "title": title,
      "text": text
    });
    showSnackbar(res.data['success']?snackTypes.success:snackTypes.error, res.data['message']);
    Future.delayed(Duration(seconds: 3),() {
      GetWriterStories(writer_id);
    });
  }

  static DeleteSrory(int id)async{
    var res = await ApiService.post('Admin/DeleteStory',{
      "id": id
    });
    showSnackbar(res.data['success']?snackTypes.success:snackTypes.error, res.data['message']);
    Future.delayed(Duration(seconds: 2),() {
      GetWriterStories(writer_id);
    });
  }
}