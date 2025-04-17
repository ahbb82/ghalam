import 'package:flutter/material.dart';
import 'package:univercity/Controller/reader_controller.dart';
import 'package:univercity/Model/story.dart';
import 'package:univercity/UI/Component/Headers/liking_header.dart';

class ReadingStoryPage extends StatelessWidget {
  Story story;
  ReadingStoryPage(this.story,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white60,
      body: Column(
        children: [
          LikingHeader(story.title!),
          Expanded(
            child: Container(
              color: Colors.white,
              width: size.width>900?size.width-20:900,
              child: ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: SingleChildScrollView(
                  child: Text(
                    story.text!,
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: Colors.black),
                    maxLines: null,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
