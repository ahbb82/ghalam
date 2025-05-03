import 'package:get/get.dart';
import 'package:univercity/Helper/api_service.dart';
import 'package:univercity/Helper/snackbar.dart';
import 'package:univercity/Model/story.dart';
import 'package:univercity/UI/Veiw/Reading/reading_story.dart';



class ReaderController extends GetxController{
  static int reader_id = 0;
  static int story_id = 0;
  static final is_liked = false.obs;
  static int count = 0;
  
  static IsLiked(Story story) async{
    var res = await ApiService.post('story/IsLiked', {
      "storyID": story_id,
      "readerID":reader_id
    });
    is_liked.value = res.data["body"];
    Get.to(ReadingStoryPage(story));
  }

  static LikeCounter(int idd) async{
    var res = await ApiService.post('story/LikeCounter', {
      "writerID": idd,
    });
    print('سلام');
    print(res.data["body"]);
    count = res.data["body"];
  }

  static Liking() async{
    var res = await ApiService.post('story/Liking', {
      "storyID": story_id,
      "readerID": reader_id
    });
    is_liked.value = res.data["body"];
    showSnackbar(res.data['success']?snackTypes.success:snackTypes.error, res.data['message']);

  }

  static DisLiking() async{
    var res = await ApiService.post('story/DisLiking', {
      "storyID": story_id,
      "readerID": reader_id
    });
    is_liked.value = res.data["body"];
    showSnackbar(res.data['success']?snackTypes.success:snackTypes.error, res.data['message']);

  }
}