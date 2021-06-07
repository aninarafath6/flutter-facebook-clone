import 'package:facebook_clone/assets.dart';
import 'package:facebook_clone/sections/roomSection.dart';
import 'package:facebook_clone/sections/statusSection.dart';
import 'package:facebook_clone/sections/storySection.dart';
import 'package:facebook_clone/sections/topButtonSection.dart';
import 'package:facebook_clone/widgets/circularButtonIcon.dart';
import 'package:facebook_clone/widgets/navTabs.dart';
import 'package:facebook_clone/widgets/postCard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(thickness: 1, color: Colors.grey[300]);
    Widget thikDivider = Divider(thickness: 10, color: Colors.grey[300]);

    return MaterialApp(
        title: 'facebook clone',
        home: DefaultTabController(
          length: 6,
          child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: Text(
                'facebook',
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              actions: [
                CircularButtonIcon(
                  buttonIcon: Icons.search,
                  buttonAction: () {
                    print('go to search page');
                  },
                ),
                CircularButtonIcon(
                  buttonIcon: Icons.chat,
                  buttonAction: () {
                    print('go to search page');
                  },
                )
              ],
              bottom: TabBar(
                tabs: [
                  NavTabs(icon: Icons.home, color: Colors.blue),
                  NavTabs(icon: Icons.group_outlined, color: Colors.grey),
                  NavTabs(
                      icon: Icons.ondemand_video_outlined, color: Colors.grey),
                  NavTabs(icon: Icons.groups_outlined, color: Colors.grey),
                  NavTabs(icon: Icons.notifications, color: Colors.grey),
                  NavTabs(icon: Icons.menu, color: Colors.grey),
                ],
              ),
            ),
            body: ListView(
              children: [
                SizedBox(height: 10),
                StatusSection(),
                thinDivider,
                TopButtonSection(),
                thikDivider,
                RoomSection(),
                thikDivider,
                StorySection(),
                thikDivider,
                PostCard(avatar: usefAli, name: 'Usef Ali', publishedAt: '5h'),
              ],
            ),
          ),
        ));
  }
}
