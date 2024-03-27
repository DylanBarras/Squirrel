// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

  final int buttonSize = 50;
  final double iconSize = 40;
  final EdgeInsetsGeometry buttonPadding = const EdgeInsets.only(left: 8.0, top: 8, right: 8);
  


  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

    // Heading
    appBar: AppBar(

      title: const Text(
      'Squirrel',

      // Text properties
      style: TextStyle(
          color: Colors.amber,
          fontSize: 24,
        ),  

      ),

      backgroundColor: Colors.red[900],
      centerTitle: true,

  ),

  backgroundColor: Colors.white,
  // TODO map underlying entire background

   body: Row(
    
    mainAxisAlignment: MainAxisAlignment.end, // Place column on the right
     children: [
          
          Column(
          children: [
         
            // More button
         
            Padding(
              
              padding: buttonPadding,
              child: FloatingActionButton(
                
                  onPressed: () {  },
                  
                  tooltip: 'More',
                  focusColor: Colors.red[900],
                  hoverColor: Colors.red[800],
                  backgroundColor: Colors.red[900],
                  elevation: 0.0,
                  splashColor: Colors.amber[900],
                                         
                  child: Icon(
                    CupertinoIcons.chevron_down_circle,
                    size: iconSize,
                    color: Colors.amber[900],
                  ),
                ),
            ),
         
            // Info button
         
            Padding(
              padding: buttonPadding,
                child: FloatingActionButton(
                  onPressed: () {  },
                  tooltip: 'Information',
                  focusColor: Colors.red[900],
                  hoverColor: Colors.red[800],
                  backgroundColor: Colors.red[900],
                  elevation: 0.0,
                  splashColor: Colors.amber[900],
                                         
                  child: Icon(
                    CupertinoIcons.info_circle,
                    size: iconSize,
                    color: Colors.amber[900],
                  ),
                ),
              ),

            // Profile Button
         
            Padding(
              padding: buttonPadding,
              child: FloatingActionButton(
                  onPressed: () { 
                    Navigator.pushNamed(context, "ProfilePage");
                   },
                  tooltip: 'Profile',
                  focusColor: Colors.red[900],
                  hoverColor: Colors.red[800],
                  backgroundColor: Colors.red[900],
                  elevation: 0.0,
                  splashColor: Colors.amber[900],
                                         
                  child: Icon(
                    CupertinoIcons.profile_circled,
                    size: iconSize,
                    color: Colors.amber[900],
                  ),
                ),
            ),
         
            // Settings button
         
            Padding(
              padding: buttonPadding,
              child: FloatingActionButton(
                  onPressed: () { 
                    Navigator.pushNamed((context), "SettingsPage");
                  },
                  tooltip: 'Settings',
                  focusColor: Colors.red[900],
                  hoverColor: Colors.red[800],
                  backgroundColor: Colors.red[900],
                  elevation: 0.0,
                  splashColor: Colors.amber[900],
                                         
                  child: Icon(
                    CupertinoIcons.settings,
                    size: iconSize,
                    color: Colors.amber[900],
                  ),
                ),
            ),

            const Spacer(),
            
            // Capture Button
            // TODO camera functionality and page for it
            Padding(
              // Padding for this button is different than the other ones, so no buttonPadding
              padding: const EdgeInsets.only(right: 10, bottom: 10),
              child: FloatingActionButton(
                onPressed: () {  },
                tooltip: 'Capture',
                focusColor: Colors.red[900],
                hoverColor: Colors.red[800],
                backgroundColor: Colors.red[900],
                elevation: 0.0,
                splashColor: Colors.amber[900],
                                       
                child: Icon(
                  CupertinoIcons.camera_circle,
                  size: iconSize,
                  color: Colors.amber[900],
                ),
              ),
            ),
          ],     
          ),
        ], // Children
      ),
    );
  }
}   