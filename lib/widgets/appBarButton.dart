import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final IconData buttonIcon;
  final void Function() buttonAction;

  AppBarButton({required this.buttonIcon, required this.buttonAction});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
      margin: EdgeInsets.all(5),
      child: IconButton(
        color: Colors.black,
        iconSize: 25,
        icon: Icon(this.buttonIcon),
        onPressed: this.buttonAction,
      ),
    );
  }
}
