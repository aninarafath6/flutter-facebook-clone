import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        tileColor: Colors.white,
        leading: Avatar(
          image: elonMusk,
          displayStatus: false,
        ),
        title: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 15),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue.shade100, width: 1.0),
                borderRadius: BorderRadius.circular(25.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400, width: 1.0),
                borderRadius: BorderRadius.circular(25.0),
              ),
              hintText: "Write something here...",
              hintStyle: TextStyle(color: Colors.black)),
        ));
  }
}
