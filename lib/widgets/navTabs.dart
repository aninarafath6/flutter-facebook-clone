import 'package:flutter/material.dart';

class NavTabs extends StatelessWidget {
  IconData icon;
  Color color;

  NavTabs({required IconData this.icon, required Color this.color});

  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Icon(
        icon,
        color: color,
      ),
    );
  }
}
