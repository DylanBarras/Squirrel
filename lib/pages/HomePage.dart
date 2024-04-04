import 'package:Squirrel/components/home_page_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// Centered on Coe campus
const LatLng _center = LatLng(41.98734173764673, -91.65807465692832);

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

      // This is a Stack so that elements can be overlayed on the map
      body: Stack(children: [

        // Google Map Underlay

        const GoogleMap(
          compassEnabled: true,
          mapToolbarEnabled: false,
          mapType: MapType.normal,
          zoomControlsEnabled: false,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 17,
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.end, // Place column on the right
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
              
                  // More button
              
                  HomePageButton(
                    tooltip: "More",
                    buttonIcon: const Icon(Icons.more_horiz_outlined),
                    buttonSize: buttonSize,
                  ),
              
                  // Info button
              
                  HomePageButton(
                    tooltip: "Info",
                    buttonIcon: const Icon(Icons.info_outline),
                    buttonSize: buttonSize,
                  ),
              
                  // Profile Button
              
                  HomePageButton(
                    tooltip: "Profile",
                    buttonIcon: const Icon(CupertinoIcons.profile_circled),
                    buttonSize: buttonSize,
                    toPage: 'ProfilePage',
                  ),
              
                  // Settings button
              
                  HomePageButton(
                    tooltip: "Settings",
                    buttonIcon: const Icon(Icons.settings),
                    buttonSize: buttonSize,
                    toPage: 'SettingsPage',
                  ),
              
                  const Spacer(),
              
                  // Capture Button
                  // TODO camera functionality and page for it
                  Hero(
                    tag: 'cameraButton',
                    child: HomePageButton(
                      buttonIcon: const Icon(Icons.camera_alt_outlined), 
                      buttonSize: buttonSize + 30,
                      tooltip: 'Capture',
                      toPage: 'CameraPage',
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
