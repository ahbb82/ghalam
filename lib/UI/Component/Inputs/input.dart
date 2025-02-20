import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:univercity/Public/colors.dart';

class Input extends StatefulWidget {
  String? lable,hint;
  Function? onChange;
  bool isNumber,hasBorder, isMobile , isPostalCode , isLoginPage;
  TextAlign align;
  Widget? icon1,icon2;
  double? width;
  double? height;
  int lines;
  var initValue;
   bool? hasBorder2 , hasBorder3;
   double? radius;
  bool? isProfilePage;
  double? fontSize;
  bool? verifyCodePage;
  Function? onTap;
  bool? isFocused;
  Input({this.lable,this.width=900,this.height=55,this.hint,this.initValue,this.onChange,this.isNumber=false,this.icon1,this.icon2,this.lines=1,this.align=TextAlign.right,
    this.hasBorder=true, this.hasBorder2 =false , this.hasBorder3 = false ,
    this.radius = 16 , this.isProfilePage = false , this.fontSize = 14 , this.verifyCodePage=false , this.isMobile = false,
    this.onTap , this.isFocused = false , this.isPostalCode = false, this.isLoginPage =false
  });

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  // late final _textController;
  // final _focusNode = new FocusNode();
  @override
  // void initState() {
  //   super.initState();
  //   // _textController = widget.isLoginPage == false ? TextEditingController(text: widget.initValue??''):MainController.textEditingContorller;
  //   _focusNode.addListener(() {
  //     if(_focusNode.hasFocus){
  //       _textController.text=_textController.text+'';
  //     }
  //   }
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    if(WidgetsBinding.instance.window.viewInsets.bottom==0 && FocusManager.instance.primaryFocus!=null){
      FocusManager.instance.primaryFocus!.unfocus();
    }
    var size=MediaQuery.of(context).size;
    return Container(
      height: widget.lines==1?this.widget.height??null:null,
      width: this.widget.width??900,
      alignment: Alignment.center,
      // decoration: BoxDecoration(boxShadow: widget.shadow),

      child: TextFormField(
         onTap: (){
           if(widget.onTap!=null)
              widget.onTap!();
       },
        style: TextStyle(color: widget.verifyCodePage == true ? Colors.black :  widget.isProfilePage == true ? Colors.black : widget.hasBorder3 == false ? Colors.black
            : Colors.black),
        // initialValue: isNumber || initValue=='' || initValue==null?'${initValue??''}':'${initValue??''} ',
        autofocus: widget.isFocused == true ? true : false,
        // controller: _textController,
        // focusNode: _focusNode,
        textAlign: widget.align,
        minLines: widget.lines,
        maxLines: widget.lines,
        textDirection: widget.isNumber?TextDirection.ltr:TextDirection.rtl,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: widget.lines>1?30:15 , right:15 ,  left:15),
          filled: true,
          fillColor: widget.hasBorder3 == false ? Colors.white : itemColor36,
          prefixIcon: widget.icon1!=null?widget.icon1:null,
          suffixIcon: widget.icon2!=null?widget.icon2:null,
          errorBorder: widget.hasBorder? OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent,width: 1),
            borderRadius: BorderRadius.circular(widget.radius!),
          ):InputBorder.none,
          enabledBorder:OutlineInputBorder(
            borderSide: BorderSide(color:  widget.hasBorder2 == true ? itemColor36 :
            widget.hasBorder3 == true ? itemColor39 :  Colors.transparent   ,width: 1),
            borderRadius: BorderRadius.circular(widget.radius!),
          ),
          focusedBorder:widget.hasBorder? OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.radius!),
            borderSide: BorderSide(color: itemColor8,width: 1),
          ):InputBorder.none,
          floatingLabelStyle:TextStyle(color: itemColor13),
          labelStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 14),
          alignLabelWithHint: true,
          labelText: this.widget.lable,
          hintText: this.widget.hint,
          // hintStyle: AppController.fontStyle(fontTypes.text5, itemColor3),
          hintStyle: TextStyle(fontSize: widget.fontSize , fontWeight: FontWeight.w300 , color: itemColor5,),

        ),
        keyboardType: widget.isNumber?TextInputType.number:TextInputType.text,
        inputFormatters: <TextInputFormatter>[
          if(widget.isMobile)
            LengthLimitingTextInputFormatter(11),
          if(widget.isPostalCode)
            LengthLimitingTextInputFormatter(10),
          widget.isNumber?FilteringTextInputFormatter.digitsOnly:
          FilteringTextInputFormatter.singleLineFormatter,
        ],
        onChanged: (text){
          if(widget.onChange!=null)
            this.widget.onChange!(text);
        },
      ),
    );
  }
}
