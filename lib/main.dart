
import 'package:Squirrel/pages/CameraPage.dart';
import 'package:Squirrel/pages/PostPage.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:Squirrel/pages/HomePage.dart';
import 'package:Squirrel/pages/SettingsPage.dart';
import 'package:Squirrel/pages/profilePage.dart';

// header = -a admin:admin for http://127.0.0.1:8000/snippets/
// --json



Future<void> main() async {
  // Ensure that plugin services are initialized so that `availableCameras()`
  // can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;

  runApp(MyApp(camera: firstCamera));
}




class MyApp extends StatefulWidget {
   MyApp({super.key, required this.camera});

  final CameraDescription camera;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        'HomePage' :(context) => const HomePage(),
        'SettingsPage':(context) => const SettingsPage(),
        'ProfilePage':(context) => const ProfilePage(),
        'CameraPage':(context) =>  CameraPage(camera: widget.camera),
        'PostPage':(context) => PostPage(imagePath: '',), 
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
