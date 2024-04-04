import 'package:Squirrel/components/home_page_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {

    Color primary = Theme.of(context).colorScheme.primary;
    Color secondary = Theme.of(context).colorScheme.onPrimary;
    final double buttonSize = 50;



  // TODO camera live preview
    return Column(
      mainAxisAlignment: MainAxisAlignment.end, 
      children: [
      Padding(
        padding: const EdgeInsets.all(8),
        child: Hero(
          tag: 'cameraButton',
          child: HomePageButton(
            buttonIcon: const Icon(Icons.camera_alt_outlined),
            buttonSize: buttonSize + 30,
            tooltip: 'Capture',
            toPage: 'CameraPage',
          ),
        ),
      ),
    ]);
  }
}
