import 'package:facebook_clone/widgets/appBarButton.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'facebook clone',
        home: Scaffold(
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
          ),
        ));
  }
}
