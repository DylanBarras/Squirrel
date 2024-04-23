import 'package:Squirrel/components/camera_preview.dart';
import 'package:Squirrel/components/home_page_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'dart:async';

import 'package:flutter/widgets.dart';






class CameraPage extends StatefulWidget {
  CameraPage({Key? key, required this.camera});
  final CameraDescription camera;

  @override
  _CameraPageState createState() => _CameraPageState();
  final zoomValue = 0.0;
}

class _CameraPageState extends State<CameraPage> {
  

  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    // To display the current output from the Camera,
    // create a CameraController.
    _controller = CameraController(
      // Get a specific camera from the list of available cameras.
      widget.camera,
      // Define the resolution to use.
      ResolutionPreset.max,
    );

    // Next, initialize the controller. This returns a Future.
    _initializeControllerFuture = _controller.initialize();
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    double zoomValue = 1.0;

    const double buttonSize = 50;

    return Stack(
      children: [
      
      

      GestureDetector(

        onVerticalDragUpdate: (DragUpdateDetails details) {
          

            double adjustment = zoomValue - (details.delta.dy/10);

            if (adjustment > 8.0){
              zoomValue = 8.0;
              

            }
            else if(adjustment < 1.0){
              zoomValue = 1.0;

            }
            else {

              _controller.setZoomLevel(adjustment); // up is -y, down is +y
              print(details.delta.dy);

              zoomValue = adjustment;
              
            }
          },
          

        

        child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: FutureBuilder<void>(
          future: _initializeControllerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // If the Future is complete, display the preview.
              return CameraPreview(_controller);
            } else {
              // Otherwise, display a loading indicator.
              return const Center(child: CircularProgressIndicator(value: 150));
            }
          },
        ),
                ),
      ),

      
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Hero(
            
            tag: 'cameraButton',
            child: HomePageButton(
              buttonIcon: const Icon(Icons.camera_alt_outlined),
              buttonSize: buttonSize + 30,
              tooltip: 'Capture',
          
          
              onPressed: () async {
                // Take the Picture in a try / catch block. If anything goes wrong,
                // catch the error.
                try {
                  // Ensure that the camera is initialized.
                  await _initializeControllerFuture;
          
                  // Attempt to take a picture and get the file `image`
                  // where it was saved.
                  final image = await _controller.takePicture();
          
                  if (!context.mounted) return;
          
                  // If the picture was taken, display it on a new screen.
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DisplayPictureScreen(
                        // Pass the automatically generated path to
                        // the DisplayPictureScreen widget.
                        imagePath: image.path,
                      ),
                    ),
                  );
                } catch (e) {
                  // If an error occurs, log the error to the console.
                  print(e);
                }
              },
            ),
          ),
        ),
      ),

      Center(
        child: SizedBox(
          width: 400, 
          height: 400,
              child: Container(
                  decoration:
                      BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                        color: Colors.transparent
                        ),
                  )
          
        )  
      )
    ]);
  }
}
