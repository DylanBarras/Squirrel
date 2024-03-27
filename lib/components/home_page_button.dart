import "package:flutter/material.dart";

class HomePageButton extends StatelessWidget {
  final double buttonSize;
  final Icon buttonIcon;
  final String tooltip;

  const HomePageButton(
      {super.key,
      required this.tooltip,
      required this.buttonSize,
      required this.buttonIcon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, left: 8, top: 8),
      child: SizedBox(
        height: buttonSize,
        width: buttonSize,
        child: FloatingActionButton(
          onPressed: () {},
          tooltip: tooltip,
          focusColor: Colors.red[900],
          hoverColor: Colors.red[800],
          backgroundColor: Colors.red[900],
          elevation: 0.0,
          splashColor: Colors.amber[900],
          child: Center(child: buttonIcon),
        ),
      ),
    );
  }
}
