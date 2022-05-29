import 'package:flutter/material.dart';
import 'package:project_coz/pages/error_page.dart';
import 'package:project_coz/pages/home_page.dart';
import 'package:project_coz/pages/splash_page.dart';
import 'package:project_coz/theme.dart';

class BottomNavbarItem extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  final int urlsCode;

  BottomNavbarItem(
      {required this.imageUrl, required this.isActive, required this.urlsCode});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        IconButton(
            onPressed: () {
              if (urlsCode == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              } else if (urlsCode == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ErrorPage(),
                  ),
                );
              } else if (urlsCode == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SplashPage(),
                  ),
                );
              } else if (urlsCode == 4) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              }
            },
            icon: Image.asset(
              imageUrl,
              width: 26,
            )),
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
            : Container(),
      ],
    );
  }
}
