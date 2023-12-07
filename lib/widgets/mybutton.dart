

import 'package:flutter/material.dart';
import 'package:surevihroom/utils/theme.dart';

class ElevatedWidget extends StatelessWidget {
  final Widget widget;
  final Function() onPressed;
  const ElevatedWidget({super.key, required this.widget, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
      ),
      child: widget,
      onPressed: onPressed,
    );
  }
}
