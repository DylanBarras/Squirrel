import "package:flutter/material.dart";
import "package:google_maps_flutter/google_maps_flutter.dart";

class HomePageButton extends StatelessWidget {
  final double buttonSize; // size of button
  final Icon buttonIcon; // Icon to show
  final String tooltip; // helper text on hover
  final String? toPage; // page to be navigated to 


  

  HomePageButton(
      {super.key,
      required this.tooltip,
      required this.buttonSize,
      required this.buttonIcon,
      this.toPage});
  @override
  Widget build(BuildContext context) {

      Color primary = Theme.of(context).colorScheme.primary;
      Color secondary = Theme.of(context).colorScheme.onPrimary;

      onPressed() {
      Navigator.pushNamed(context, toPage!);
  }


    return 
        Padding(
          padding: EdgeInsets.all(5),
          child: Material(
            child: Ink(
              decoration: ShapeDecoration( 
                color: primary,
                shape: const CircleBorder(),
              ),
              child: IconButton.filled(
                icon: buttonIcon,
                onPressed: onPressed,
                iconSize: buttonSize,
                tooltip: tooltip,
                color: secondary,
                ),
            ),
          ),
        );
  }
}
