import "package:flutter/material.dart";
import "package:flutter/widgets.dart";

class HomePageButton extends StatelessWidget {
  final double buttonSize; // size of button
  final Icon buttonIcon; // Icon to show
  final String tooltip; // helper text on hover
  final void Function() onPressed; // page to be navigated to 


  

  const HomePageButton(
      {super.key,
      required this.tooltip,
      required this.buttonSize,
      required this.buttonIcon,
      required this.onPressed});
  @override
  Widget build(BuildContext context) {

      Color primary = Theme.of(context).colorScheme.primary;
      Color secondary = Theme.of(context).colorScheme.onPrimary;

    return 
        Padding(
          padding: const EdgeInsets.all(5),
          child: Material(
            color: Colors.transparent,
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
