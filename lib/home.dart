import 'package:facebook_clone/sections/roomSection.dart';
import 'package:facebook_clone/sections/statusSection.dart';
import 'package:facebook_clone/sections/topButtonSection.dart';
import 'package:facebook_clone/widgets/appBarButton.dart';
import 'package:facebook_clone/widgets/navTabs.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                AppBarButton(
                  buttonIcon: Icons.search,
                  buttonAction: () {
                    print('go to search page');
                  },
                ),
                AppBarButton(
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
                Divider(thickness: 1, color: Colors.grey[300]),
                TopButtonSection(),
                Divider(thickness: 10, color: Colors.grey[300]),
                RoomSection(),
                Divider(thickness: 10, color: Colors.grey[300]),
              ],
            ),
          ),
        ));
  }
}
