import 'package:flutter/material.dart';

class CircularButtonIcon extends StatelessWidget {
  final IconData buttonIcon;
  final Color iconColor;
  final void Function() buttonAction;

  CircularButtonIcon({
    required this.buttonIcon,
    required this.buttonAction,
    this.iconColor: Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
      margin: EdgeInsets.all(5),
      child: IconButton(
        color: iconColor,
        iconSize: 25,
        icon: Icon(this.buttonIcon),
        onPressed: this.buttonAction,
      ),
    );
  }
}
