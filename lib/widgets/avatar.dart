import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String image;
  final bool displayStatus;
  final bool displayBorder;
  final double size;

  Avatar({
    required this.image,
    this.displayStatus: true,
    this.displayBorder: false,
    this.size: 50,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border:
                displayBorder ? Border.all(color: Colors.blue, width: 3) : null,
          ),
          padding: EdgeInsets.only(left: 5, right: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              // ignore: unnecessary_null_comparison
              width: size != null ? size : 50,
              // ignore: unnecessary_null_comparison
              height: size != null ? size : 50,
            ),
          ),
        ),
        displayStatus
            ? Positioned(
                bottom: 0,
                right: 1,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2)),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
