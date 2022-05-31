import 'package:flutter/material.dart';
import 'package:project_coz/theme.dart';

class ButtonNav extends StatelessWidget {
  final String image;
  final bool isActive;

  ButtonNav({required this.image, this.isActive = false});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          image,
          width: 26,
        ),
        Spacer(),
        isActive
            ? Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(1000),
                  ),
                ),
              )
            : Container()
      ],
    );
  }
}
