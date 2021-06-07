import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui' as ui;

Widget createRoomButton() {
  // ignore: deprecated_member_use
  return FlatButton.icon(
    minWidth: 120,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
        side: BorderSide(color: Colors.blue.shade100, width: 2)),
    label: Text(
      'Create \nroom',
      style: TextStyle(fontWeight: FontWeight.w400, color: Colors.blue),
    ),
    onPressed: () {
      print('create a room clicked');
    },
    icon: ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) {
        return ui.Gradient.linear(
          Offset(10.0, 24.0),
          Offset(24.0, 4.0),
          [
            Colors.purple,
            Colors.pink,
          ],
        );
      },
      child: Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
    ),
  );
}
