import 'package:Squirrel/components/home_page_button.dart';
import 'package:Squirrel/components/squirrel_map.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double buttonSize = 50;
  final EdgeInsetsGeometry buttonPadding =
      const EdgeInsets.only(left: 8.0, top: 8, right: 8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Heading
      appBar: AppBar(
        title: Text(
          'Squirrel',

          // Text properties
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 24,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
      ),

      backgroundColor: Colors.white,

      // This is a Stack so that elements can be overlayed on top of the map
      body: Stack(children: [

        // Google Map Underlay

        SquirrelMap(),

        // Buttons

        Row(
          mainAxisAlignment: MainAxisAlignment.end, // Place column on the right
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                  // More button

                  HomePageButton(
                    tooltip: "More",
                    buttonIcon: Icon(Icons.more_horiz_outlined),
                    buttonSize: buttonSize,
                    
                    onPressed: (){}
                  ),

                  // Info button

                  HomePageButton(
                    tooltip: "Info",
                    buttonIcon: Icon(Icons.info_outline),
                    buttonSize: buttonSize,
                    onPressed: (){},
                  ),

                  // Profile Button

                  HomePageButton(
                    tooltip: "Profile",
                    buttonIcon: Icon(CupertinoIcons.profile_circled),
                    buttonSize: buttonSize,
                    onPressed: (){Navigator.pushNamed(context, 'ProfilePage');},
                  ),

                  // Settings button

                  HomePageButton(
                    tooltip: "Settings",
                    buttonIcon: Icon(Icons.settings),
                    buttonSize: buttonSize,
                    onPressed: (){Navigator.pushNamed(context, 'SettingsPage');},
                  ),

                  Spacer(),

                  // Capture Button
                  // TODO camera functionality and page for it
                  kIsWeb ? const Spacer() : Hero(
                    tag: 'cameraButton',
                    child: HomePageButton(
                      buttonIcon: Icon(Icons.camera_alt_outlined),
                      buttonSize: buttonSize + 30,
                      tooltip: 'Capture',
                      onPressed: (){Navigator.pushNamed(context, 'CameraPage');},
                    ),
                  )
                ],
              ),
            ),
          ], // Children
        ),
      ]),
    );
  }
}
