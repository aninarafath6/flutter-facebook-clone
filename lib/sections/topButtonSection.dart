import 'package:flutter/material.dart';

class TopButtonSection extends StatelessWidget {
  // re useble top buttons
  Widget topButton(
      {required String title,
      required IconData icon,
      required Color color,
      required void Function() onPressed}) {
    // ignore: deprecated_member_use
    return FlatButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: color),
      label: Text(title),
    );
  }

  Widget verticalDivider = VerticalDivider(
    color: Colors.grey[300],
    thickness: 1,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          topButton(
              title: 'Live',
              icon: Icons.video_call,
              color: Colors.red,
              onPressed: () {
                print('live button pressed');
              }),
          verticalDivider,
          topButton(
              title: 'photos',
              icon: Icons.perm_media,
              color: Colors.green,
              onPressed: () {
                print('photos button pressed');
              }),
          verticalDivider,
          topButton(
              title: 'reels',
              icon: Icons.video_collection,
              color: Colors.blue,
              onPressed: () {
                print('reels button pressed');
              }),
        ],
      ),
    );
  }
}
