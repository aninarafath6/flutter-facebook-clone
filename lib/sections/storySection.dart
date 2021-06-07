import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: 'Add To Story',
            // avatar: elonMusk,
            story: elonMusk,
            createStoryStatus: false,
          ),
          StoryCard(
            labelText: 'BillGets',
            avatar: billGates,
            story: microsoft,
          ),
          StoryCard(
            labelText: 'Mark Zukkar Burg',
            avatar: zukkarBurg,
            story: facebook,
          ),
          StoryCard(
            labelText: 'Nikhil Kilivayil',
            avatar: nikil,
            story: crossroads,
          ),
          StoryCard(
            labelText: 'Usef ali',
            avatar: usefAli,
            story: childrensday,
          ),
        ],
      ),
    );
  }
}
