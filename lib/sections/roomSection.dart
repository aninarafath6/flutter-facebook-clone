import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          // ignore: deprecated_member_use
          FlatButton.icon(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
                side: BorderSide(color: Colors.blue.shade100, width: 1)),
            label: Text(
              'Create a room',
              style: TextStyle(fontWeight: FontWeight.w400, color: Colors.blue),
            ),
            onPressed: () {
              print('create a room clicked');
            },
            icon: Icon(
              Icons.video_call,
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
