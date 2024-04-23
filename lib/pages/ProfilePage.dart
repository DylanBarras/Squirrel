// ignore_for_file: file_names

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:Squirrel/components/profile_image_container.dart";

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Heading
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.amber,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.red[900],
        centerTitle: true,
      ),


      // TODO MAKE PAGE SCROLLABLE
      body: Column(children: [
      
        
        // Profile Picture
      
        Padding(
          padding: const EdgeInsets.only(
            top: 30,
            bottom: 20,
          ),
          child: Container(
            // Circle background
      
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 2),
              color: Colors.grey[300],
            ),
      
            height: 140,
            width: 140,
      
            // Profile Icon
      
            child: const Center(
              child:  Icon( // TODO user specified icon / image
                CupertinoIcons.profile_circled,
                color: Colors.grey,
                size: 130,
              ),
            ),
          ),
        ),
      
        // Username Text
      
        const Text(
          "Username", // TODO DATABASE VARIABLE USERNAME  
      
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      
        // Score
      
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              shape: BoxShape.circle,
              boxShadow: const [
                BoxShadow(
                    color: Colors.grey, offset: Offset(5, 5), blurRadius: 2)
              ],
            ),
            child: Center(
              child: Text("42", // // TODO DATABASE VARIABLE SCORE
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onPrimary,
                  )),
            ),
          ),
        ),
      
        // Gallery View
      
        Expanded(
          child: Container(
              padding: const EdgeInsets.all(2.5),
      
              // height: 50,
              //width: MediaQuery.of(context).size.width, //- 10, // width of the screen size
      
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.grey,
                // borderRadius: BorderRadius.circular(0),
              ),
      
              // Grid view
      
              child: GridView.builder(
                  itemCount: 11, // TODO DATABASE VARIABLE NUM OF IMAGES
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3 // how many items in the ROW
                      ),
      
                  // this builds the elements in a grid format
                  itemBuilder: (context, index) {
                    return Stack(children: [
                      const ProfileImageContainer(), // TODO DATABASE VARIABLE IMAGES
                      // make local structure for querying data
                      // DEBUG
                      Container(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                          (index + 1).toString(),
                          style: TextStyle(color: Colors.black),
                      )),
                    ]); 
                  })),
        )
      ]),
    );
  }
}
