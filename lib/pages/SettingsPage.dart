// ignore_for_file: file_names

import "package:flutter/material.dart";

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    // Heading
    appBar: AppBar(

      title: const Text(
      'Settings',

      // Text properties
      style: TextStyle(
          color: Colors.amber,
          fontSize: 24,
        ),  

      ),

      backgroundColor: Colors.red[900],

      centerTitle: true,

      ),
      body : Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.black,
            ),
          alignment: Alignment.center,
          width: 300,
          height: 300,
          child: const Text(
            "Settings page goes here!",
            style: TextStyle( 
              color: Colors.white),
          ),  
        ),
      )
    );
  }
}