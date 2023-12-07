import 'package:flutter/material.dart';
import 'package:surevihroom/utils/theme.dart';
import 'package:surevihroom/widgets/mytext.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(

      textTheme: TextTheme(
        displayLarge: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
        titleLarge: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
        bodyLarge: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
      ),
    ),
    // Navigation with named routes
    routes: {
      '/': (constext) => RoomRent(),
    },
  ));
}

class RoomRent extends StatefulWidget {
  const RoomRent({super.key});

  @override
  State<RoomRent> createState() => _RoomRentState();
}

class _RoomRentState extends State<RoomRent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Room Rent", style: Theme.of(context).textTheme.displayLarge!.copyWith(
          color: Colors.red
        ), ),
        backgroundColor: primaryColor,
      ),
      body: SafeArea(
        child: Column(
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
                      Textless(text: "Welcome", size: null,fontWeight: null, color: null, isAlign: true),
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
                  ElevatedButton(
                    child: Text("Register"),
                    onPressed: () {
                      print("clicked");
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
