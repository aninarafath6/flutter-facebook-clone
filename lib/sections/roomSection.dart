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
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(10),
        children: [
          createRoomButton(),
          spacing,
          Avatar(image: aninArafath),
          Avatar(image: billGates),
          Avatar(image: usefAli),
          Avatar(image: zukkarBurg),
          Avatar(image: nikil),
          Avatar(image: sonu),
          Avatar(image: salman),
          Avatar(image: elonMusk),
        ],
      ),
    );
  }
}
