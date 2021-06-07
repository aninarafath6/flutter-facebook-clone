import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:facebook_clone/widgets/blueTick.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  String avatar;
  String name;
  String publishedAt;

  PostCard(
      {required this.avatar, required this.name, required this.publishedAt});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Avatar(
              image: avatar,
              displayBorder: false,
              displayStatus: false,
            ),
            title: Row(
              children: [
                Text(
                  name,
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(width: 10),
                BlueTick(),
              ],
            ),
            subtitle: Row(
              children: [
                Text(publishedAt != null ? publishedAt : 'N/A'),
                SizedBox(width: 10),
                Icon(
                  Icons.public,
                  color: Colors.grey[700],
                  size: 15,
                )
              ],
            ),
            trailing: IconButton(
              onPressed: () {
                print('open more!');
              },
              icon: Icon(Icons.more_vert),
            ),
          )
        ],
      ),
    );
  }
}
