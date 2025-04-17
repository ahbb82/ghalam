import 'package:flutter/material.dart';
import 'package:univercity/Controller/admin_controller.dart';
import 'package:univercity/Model/story.dart';
import 'package:univercity/Public/colors.dart';
import 'package:univercity/UI/Component/Headers/main_header.dart';

class DeleteStory extends StatelessWidget {
  Story story;
  DeleteStory(this.story,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: InkWell(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: ()async{
          AdminController.DeleteSrory(story.id!);
        },
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: login_background,
          ),
          child: Icon(Icons.delete,color: Colors.white,size: 30,),
        ),
      ),
      backgroundColor: Colors.white60,
      body: Column(
        children: [
          MainHeader(story.title!),
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
