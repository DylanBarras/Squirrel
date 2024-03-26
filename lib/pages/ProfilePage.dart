// ignore_for_file: file_names

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:Squirrel/components/profile_image_container.dart";

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
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

      body: Column(
        children: [

        // Profile Picture

        Padding(
          padding: const EdgeInsets.only(
            top: 30,
            ),
          
          child: Container(

            // Circle background

            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 2),
              color: Colors.grey[300],
            ),

            height: 140,

            // Profile Icon
            
            child: const Icon(
              
              CupertinoIcons.profile_circled,
              color: Colors.grey,
              size: 150,
              
              
            ),
          ),
        ),

        // Username Text

        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: Text(


            "Username", // this will need to be a variable later


            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),


        // Gallery Text

        const Text(
          
          "My Gallery",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold

          )
        ),

        // Gallery View
       
        Expanded(
          
          child: Container(
            padding: const EdgeInsets.all(2.5),

             // height: 50,
              //width: MediaQuery.of(context).size.width, //- 10, // width of the screen size

              alignment: Alignment.center,

              decoration: BoxDecoration(
                color: Colors.grey,
               // borderRadius: BorderRadius.circular(0),
              ),

              // Grid view 
              
              child: GridView.builder(
                  itemCount: 11,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3 // how many items in the ROW
                      ),

                  // this builds the elements in a grid format
                  itemBuilder: (context, index) {
                    return const ProfileImageContainer();
                  })),
        )
      ]),
    );
  }
}
