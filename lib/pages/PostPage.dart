import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PostPage extends StatelessWidget {

  final String imagePath;

  PostPage({Key? key,
  
  required this.imagePath,
  
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      
      appBar: AppBar(
        title: Text(
          'New Post',

          // Text properties
          style: TextStyle(
            color: Theme.of(context).colorScheme.onPrimary,
            fontSize: 24,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
      ),

      body: Stack(
        children: [
          
          SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              
          
              // Image preview
              Padding(
                padding: const EdgeInsets.all(10),
                child: Hero(
                  tag: 'newPicture',
                      child: ClipRRect(
                        clipBehavior: Clip.hardEdge,
                        borderRadius: BorderRadius.circular(10),
                        child: Image.file(
                          File(imagePath),
                          width: 400,
                          height: 400,
                          fit: BoxFit.fitWidth,
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8.0, left: 20, right: 20),
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        hintText: "What was the squirrel doing? (Optional)",
                        fillColor: Colors.grey[200],
                        
                        filled: true,
                        
                        
                        
                        
                        ),
                  ),
                )
              ],
            ),
          ),

          
          
              

          // Post button
          // TODO make non-scrollable and static on page
          Align(
            
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                
                height: 60,
                width: 120,
                child: Placeholder(),
              ),
            ),
          )
            
      ],
      ),
        
      );


    
  }
}