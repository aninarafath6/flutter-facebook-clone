import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:facebook_clone/widgets/circularButtonIcon.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String story;
  final String avatar;
  final bool createStoryStatus;
  StoryCard({
    required this.labelText,
    required this.story,
    this.avatar: 'N/A',
    this.createStoryStatus: true,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        margin: EdgeInsets.only(
          left: 5,
          right: 5,
          top: 10,
          bottom: 10,
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(story),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 5,
              left: 5,
              child: !createStoryStatus
                  ? CircularButtonIcon(
                      buttonIcon: Icons.add,
                      iconColor: Colors.blue,
                      buttonAction: () {
                        print('add story clicked');
                      },
                    )
                  : Avatar(
                      image: avatar,
                      displayStatus: false,
                      displayBorder: true,
                      size: 40,
                    ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                labelText == null ? 'N/A' : labelText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ));
  }
}
