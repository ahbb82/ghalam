import 'package:flutter/material.dart';
import 'package:univercity/Public/colors.dart';
import 'package:univercity/UI/Component/Headers/main_header.dart';
import 'package:univercity/UI/Component/Reading/topic_list_item.dart';
import 'package:univercity/UI/Component/Writing/writed_list_item.dart';
import 'package:univercity/UI/Veiw/Writing/writing_story.dart';

class WritedList extends StatelessWidget {
  const WritedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (builder)=>WritingStory()));
        },
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: login_background,
          ),
          child: Icon(Icons.add,color: Colors.white,size: 30,),
        ),
      ),
      backgroundColor: login_background.withOpacity(0.1),
      body: Column(
        children: [
          MainHeader('داستان های نویسنده'),
          Expanded(
            child: Container(
                padding: EdgeInsets.all(15),
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        for(int i=0;i<10;i++)
                          WritedListItem()
                      ],
                    ),
                  ),
                )
            ),
          )
        ],
      ),
    );
  }
}
