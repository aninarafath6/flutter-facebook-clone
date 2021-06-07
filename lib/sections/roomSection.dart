import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:facebook_clone/widgets/createRoomButton.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  Widget spacing = SizedBox(width: 10);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          spacing,
          Avatar(image: billGates, displayStatus: true),
          Avatar(image: elonMusk, displayStatus: true),
          Avatar(image: usefAli, displayStatus: true),
          Avatar(image: zukkarBurg, displayStatus: true),
          Avatar(image: nikil, displayStatus: true),
          Avatar(image: sonu, displayStatus: true),
          Avatar(image: salman, displayStatus: true),
          Avatar(image: elonMusk, displayStatus: true),
        ],
      ),
    );
  }
}
