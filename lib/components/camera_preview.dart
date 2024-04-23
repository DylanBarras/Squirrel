import 'dart:io';
import 'package:Squirrel/components/home_page_button.dart';
import 'package:Squirrel/pages/CameraPage.dart';
import 'package:Squirrel/pages/PostPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// DB Post

// TODO post to database

// import 'package:dio/dio.dart';

// final dio = Dio();

// void configureDio(){
//   dio.options.baseUrl = 'http://127.0.0.1:8000/snippets/';
//   //dio.options.
// }

// void postHttp() async {
//   final response = await dio.post('/', data: {
//     "title": "DartPostTest",
//     "code": "dart",
//     "linenos": false,
//     "language": "ABAP",
//     "style": "abap"
// });
//   print(response);
// }

// A widget that displays the picture taken by the user.
class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    // configureDio();
    // postHttp(); // TODO post to db: configure dio

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Confirm',

          // Text properties
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 24,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
      ),
      // The image is stored as a file on the device. Use the `Image.file`
      // constructor with the given path to display the image.
      body: Stack(
        children: [
          Hero(tag: 'newPicture', child: Container(child: Image.file(File(imagePath)))),
          
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              
                  HomePageButton(
                    tooltip: 'Retake',
                    buttonIcon: Icon(Icons.replay),
                    buttonSize: 80,
                    onPressed: (){
                      Navigator.pop(context);
              
                      },
              
                  ),
              
                  SizedBox(width: 30),

                  HomePageButton(
                    tooltip: 'Confirm',
                    buttonIcon: Icon(Icons.done),
                    buttonSize: 80,
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PostPage(
                              imagePath: imagePath,
                            ),
                          ));
                      },
              
                  ),
                
                ],
              
              ),
            ),
          )

        ],
      ),

      // TODO get data
      // TODO send pic to database on confirmation
    );
  }
}
