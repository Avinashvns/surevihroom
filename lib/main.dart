import 'package:flutter/material.dart';
import 'package:surevihroom/pages/homepage.dart';
import 'package:surevihroom/pages/login/login_register.dart';
import 'package:surevihroom/utils/theme.dart';
import 'package:surevihroom/widgets/mybutton.dart';
import 'package:surevihroom/widgets/mytext.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      textTheme: TextTheme(
        displayLarge:
            const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        titleLarge: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        bodyLarge: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
      ),
    ),
    // Navigation with named routes
    routes: {
      '/': (context) => RoomRent(),
      '/login':(context)=> LoginRegisterPage(),
      '/second': (context) => HomePage(),
    },
    // home: AnimatedSplashScreen(
    //   duration: 4000,
    //   splash: Image(fit: BoxFit.cover,image: AssetImage('assets/images/images.jpeg'),),
    //   nextScreen: RoomRent(),
    //   splashTransition: SplashTransition.fadeTransition,
    //   // pageTransitionType: PageTransitionType.scale,
    //   backgroundColor: primaryColor,
    // ),
  ),
  );
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
        title: Text(
          "Room Rent",
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(color: textwhite),
        ),
        backgroundColor: primaryColor,
      ),
      backgroundColor: secondaryColor,
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
                      Textless(
                          text: "Welcome",
                          size: largeSize,         // null = null: 18 , head_butt: 22 , large : 26
                          fontWeight: null,       // null = bold , normalWeight : w400
                          blacktextColor: true,  // textColor = true: black , flase: white
                          isAlign: true         // true : TextAlign.start  , false: center
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
                          text: "Login/Register",
                          size: head_butt_Size,   // null = null: 18 , head_butt: 22 , large : 26
                          fontWeight: null,       // null = bold , normalWeight : w400
                          blacktextColor: true,  // textColor = true: black , flase: white
                          isAlign: true         // true : TextAlign.start  , false: center
                      ),
                      onPressed: () {
                        print("hello");
                        Navigator.pushNamed(context, '/login');
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
