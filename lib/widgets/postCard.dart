import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/widgets/avatar.dart';
import 'package:facebook_clone/widgets/blueTick.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String name;
  final String publishedAt;
  final String avatar;
  final String postTitle;
  final String postImage;
  final bool verifiedUser;
  final String likeCount;
  final String commentCount;
  final String shareCount;

  PostCard({
    required this.avatar,
    required this.name,
    required this.publishedAt,
    required this.postTitle,
    required this.postImage,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
    this.verifiedUser: false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSecton(),
          imageSection(),
          foterSection(),
        ],
      ),
    );
  }

// post card Header
  ListTile postCardHeader() {
    return ListTile(
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
          verifiedUser ? BlueTick() : SizedBox(),
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
        icon: Icon(Icons.more_horiz),
      ),
    );
  }

  // post card title section
  Widget titleSecton() {
    return Container(
      padding: EdgeInsets.only(bottom: 5, left: 5, right: 5),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          postTitle == null ? 'N/A' : postTitle,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

// image section
  Widget imageSection() {
    return Container(
      padding: EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
      child: Image.asset(postImage),
    );
  }

// post footer section
  Widget foterSection() {
    return Container(
      height: 45,
      padding: EdgeInsets.only(left: 7, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.thumb_up_alt,
                  color: Colors.white,
                  size: 15,
                ),
              ),
              SizedBox(width: 5),
              displayText(label: likeCount),
            ],
          ),
          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                SizedBox(width: 5),
                displayText(label: 'Comments'),
                SizedBox(width: 10),
                displayText(label: shareCount),
                SizedBox(width: 5),
                displayText(label: 'Shares'),
                SizedBox(width: 10),
                Avatar(
                  image: aninArafath,
                  displayStatus: false,
                  size: 25,
                ),
                SizedBox(width: 5),
                IconButton(
                  onPressed: () {
                    print('dropDown');
                  },
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget displayText({required String label}) {
    return Text(
      // ignore: unnecessary_null_comparison
      label == null ? 'N/A' : label,
      style: TextStyle(color: Colors.grey[700]),
    );
  }
}
