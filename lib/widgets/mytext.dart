

import 'package:flutter/material.dart';
import 'package:surevihroom/utils/theme.dart';

class Textless extends StatelessWidget {
  final String text;
  final double? size;
  final FontWeight? fontWeight;
  final Color? color;
  final bool isAlign;


  const Textless({super.key, required this.text, required this.size,required this.fontWeight, required this.color, required this.isAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size ?? bodySize,
        fontWeight: fontWeight ?? FontWeight.bold,
        color: color != null ? color : textblack,
      ),
      // style: Theme.of(context).textTheme.displayLarge!.copyWith(
      //   color: color != null ? color : textblack,
      // ),
      textAlign: isAlign==true ? TextAlign.start : TextAlign.center ,
    );
  }
}


class Textful extends StatefulWidget {
  final String text;
  const Textful({super.key, required this.text});

  @override
  State<Textful> createState() => _TextfulState();
}

class _TextfulState extends State<Textful> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
    );
  }
}

