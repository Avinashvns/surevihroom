
import 'package:flutter/material.dart';
import 'package:surevihroom/utils/theme.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      maxLines: 1,

      decoration: InputDecoration(
        labelText: "Phone Number",
        labelStyle: TextStyle(fontSize: 26 , fontWeight: FontWeight.bold, color: primaryColor),

        hintText: "Enter your phone number",
        hintStyle: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: textblack),

        filled: true,
        fillColor: secondaryColor,
        contentPadding: const EdgeInsets.symmetric(vertical: 20,horizontal: 40),

        prefixIcon: Icon(Icons.call,size: 34,color: primaryColor,),
        prefixText: "+91",
        prefixStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: primaryColor),

        border: OutlineInputBorder(
            borderSide: const BorderSide(width: 10.0 , color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 5.0),
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),

      ),
    );
  }
}
