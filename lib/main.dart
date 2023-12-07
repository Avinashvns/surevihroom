import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
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
        title: Text("Room Rent"),
        backgroundColor: Colors.orange.shade300,
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
                      Text("Welcome"),
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
