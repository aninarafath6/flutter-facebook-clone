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
          OutlinedButton.icon(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  side: BorderSide(color: Colors.blue),
                ),
              ),
            ),
            onPressed: () {
              print('create a room clicked');
            },
            icon: Icon(
              Icons.video_call,
              color: Colors.purple,
            ),
            label: Text(
              'Create a room',
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
