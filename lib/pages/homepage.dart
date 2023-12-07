

import 'package:flutter/material.dart';
import 'package:surevihroom/widgets/mybutton.dart';
import 'package:surevihroom/widgets/mytext.dart';

import '../utils/theme.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Room Rent Home Page",
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(color: textwhite),
        ),
        backgroundColor: primaryColor,
      ),
      backgroundColor: secondaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    // Text("Welcome"),
                    Textless(
                        text: "Welcome Home Pgae",
                        size: null,
                        fontWeight: null,
                        blacktextColor: true,
                        isAlign: true),
                    Text(
                        "There are some important information about this App :-"),
                    ListTile(
                      leading: Icon(Icons.star),
                      title: Text("Find the room of local area"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [

                ElevatedWidget(
                    widget: Textless(
                        text: "Welcome",
                        size: null,
                        fontWeight: null,
                        blacktextColor: false,
                        isAlign: true),
                    onPressed: () {
                      print("hello");
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
