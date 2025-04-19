import 'dart:html';

import 'package:flutter/material.dart';
import 'package:univercity/Controller/reader_controller.dart';
import 'package:univercity/Model/story.dart';
import 'package:univercity/UI/Veiw/Writing/delete_story.dart';

class WritedListItem extends StatelessWidget {
  Story story;
  int type;
  WritedListItem(this.story,this.type,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: ()async{
        await ReaderController.LikeCounter(story.id!);
        Navigator.push(context, MaterialPageRoute(builder: (builder)=>DeleteStory(story,type)));
      },
      child: Container(
        width: 900,
        height: 50,
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 1,color: Colors.black26),
            // boxShadow: [BoxShadow(color: Colors.black38,blurRadius: 2,offset: Offset(0, 0),spreadRadius: 1)],
            borderRadius: BorderRadius.circular(5)
        ),
        child: Row(
          children: [
            SizedBox(width: 10),
            Expanded(
                child: Text(
                  story.title!,
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 15),
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                )
            ),
            Spacer(),
            Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black54,size: 17,),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
