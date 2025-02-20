import 'package:flutter/material.dart';
import 'package:univercity/Public/colors.dart';
import 'package:univercity/UI/Component/Headers/main_header.dart';
import 'package:univercity/UI/Component/Reading/topic_list_item.dart';

class TopicsListPage extends StatelessWidget {
  const TopicsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: login_background.withOpacity(0.1),
      body: Column(
        children: [
          MainHeader('داستان ها'),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        for(int i=0;i<10;i++)
                          TopicListItem()
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
