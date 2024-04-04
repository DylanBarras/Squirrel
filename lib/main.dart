import 'package:Squirrel/pages/CameraPage.dart';
import 'package:flutter/material.dart';
import 'package:Squirrel/pages/HomePage.dart';
import 'package:Squirrel/pages/SettingsPage.dart';
import 'package:Squirrel/pages/profilePage.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        'HomePage' :(context) => const HomePage(),
        'SettingsPage':(context) => const SettingsPage(),
        'ProfilePage':(context) => const ProfilePage(),
        'CameraPage':(context) =>  CameraPage(),
      },
      
      theme: ThemeData(
      
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Color.fromRGBO(157,7,26,1),
          onPrimary: Color.fromRGBO(223, 153, 75, 1),
          secondary: Color.fromRGBO(223, 153, 75, 1),
          onSecondary: Colors.black,
          error: Colors.grey,
          onError: Colors.black,
          background: Colors.white,
          onBackground: Colors.black,
          surface: Colors.black,
          onSurface: Colors.white,
        ),
      ),
      home: const HomePage(),
    );
  }
}
