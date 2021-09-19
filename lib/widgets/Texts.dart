import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  final color;
  final weight;
  final int fSize;
  final lines;
  final align;
  final title;
  Texts({this.title,this.color=Colors.black, this.weight=FontWeight.normal, this.fSize = 13,this.lines=1,this.align=TextAlign.start});
  @override
  Widget build(BuildContext context) {
    return  Text(title,style: TextStyle(color: color,fontWeight: weight,fontSize: fSize.toDouble(),),maxLines: lines,textAlign: align,);
  }
}
