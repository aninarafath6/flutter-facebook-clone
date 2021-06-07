import 'package:facebook_clone/assets.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        tileColor: Colors.white,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            billGates,
            width: 50,
            height: 50,
          ),
        ),
        title: TextField(
          decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: "what's on your maint?",
              hintStyle: TextStyle(color: Colors.black)),
        ));
  }
}
