import 'package:flutter/material.dart';
import 'package:surevihroom/utils/theme.dart';
import 'package:surevihroom/widgets/dropdownwidget.dart';
import 'package:surevihroom/widgets/mytext.dart';

class LoginRegisterPage extends StatefulWidget {
  const LoginRegisterPage({super.key});

  @override
  State<LoginRegisterPage> createState() => _LoginRegisterPageState();
}

class _LoginRegisterPageState extends State<LoginRegisterPage> {
  final phone_controller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: secondaryColor,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(20),
          // color: primaryColor,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Textless(
                    text: "Login / Register",
                    size:
                        largeSize, // null = null: 18 , head_butt: 22 , large : 26
                    fontWeight: null, // null = bold , normalWeight : w400
                    blacktextColor:
                        true, // textColor = true: black , flase: white
                    isAlign: true // true : TextAlign.start  , false: center
                    ),
                SizedBox(
                  height: horizontalBox,
                ),
                Textless(
                    text: "Please enter your Phone Number",
                    size: null, // null = null: 18 , head_butt: 22 , large : 26
                    fontWeight: null, // null = bold , normalWeight : w400
                    blacktextColor:
                        true, // textColor = true: black , flase: white
                    isAlign: true // true : TextAlign.start  , false: center
                    ),
                SizedBox(
                  height: horizontalBox,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    // color: secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 5,color: primaryColor)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Textless(
                          text: "Phone Number",
                          size: head_butt_Size, // null = null: 18 , head_butt: 22 , large : 26
                          fontWeight: null, // null = bold , normalWeight : w400
                          blacktextColor:
                          true, // textColor = true: black , flase: white
                          isAlign: true // true : TextAlign.start  , false: center
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 80,
                            child: DropdownWidget(),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "|",
                            style: TextStyle(fontSize: 40),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.number,
                              controller: phone_controller,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Enter Phone Number",
                                hintStyle: const TextStyle(color: primaryColor ,fontSize: 18),

                              ),

                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
