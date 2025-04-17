import 'package:get/get.dart';
import 'package:univercity/Helper/api_service.dart';
import 'package:univercity/Model/story.dart';
import 'package:univercity/UI/Veiw/Writing/writed_list.dart';

class WriterController extends GetxController{

  static List<Story> writerStoriesList = [];

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
  }
}