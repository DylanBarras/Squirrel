import 'package:flutter/material.dart';

class ProfileImageContainer extends StatelessWidget {

  // final String name;
  // final Icon placeHolderIcon;

  const ProfileImageContainer({Key? key, 
  
  // parameters
  // required this.name,
  // required this.placeHolderIcon,
  
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),

      child: Container(
            decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[400],
            ),
            
          
        child: const Center(
          child: Icon(
            Icons.photo, 
            color: Colors.white,
            size: 100
            ),        
          )
          
      ),
    );
  }
}