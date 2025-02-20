import 'package:flutter/material.dart';
import 'package:univercity/UI/Component/Selector/radio-btn.dart';



class RadioGroup extends StatefulWidget {
  var initValue;
  Axis direction;
  Map<String,dynamic> options;
  double space;
  Function? onChange;
  RadioGroup(this.initValue,this.options,{this.direction=Axis.horizontal,this.onChange,this.space=0});

  @override
  _RadioGroupState createState() => _RadioGroupState();
}

class _RadioGroupState extends State<RadioGroup> {

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 900,
      child: Wrap(
        direction: widget.direction,
        spacing: 10,
        children: [
          for(int i=0;i< widget.options.length;i++)
          Column(
            children: [
              RadioBtn(widget.initValue,widget.options.values.elementAt(i),lable: widget.options.keys.elementAt(i),onClick: (){
                setState(() {
                  widget.initValue=widget.options.values.elementAt(i);
                });
                if(widget.onChange!=null)
                widget.onChange!(widget.options.values.elementAt(i));
              }),
              // SizedBox(height:widget.space,)
            ],
          ),

        ],
      ),
    );
  }
}
