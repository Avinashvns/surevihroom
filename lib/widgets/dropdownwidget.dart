

import 'package:flutter/material.dart';
import 'package:surevihroom/utils/theme.dart';

const List<String> list= <String>['+91','+92'];

class DropdownWidget extends StatefulWidget {
  const DropdownWidget({super.key});

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  // List<String> list= <String>['+91','+92'];
  String dropdownValue=list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.keyboard_arrow_down_sharp),
      style: const TextStyle(color: primaryColor ,fontSize: 20),
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      isExpanded: true,
      onChanged: (String? value){
        setState(() {
          dropdownValue=value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value){
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
