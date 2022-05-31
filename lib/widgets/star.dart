import 'package:flutter/material.dart';

class StarIcon extends StatelessWidget {
  final int index;
  final int rating;

  StarIcon({required this.index, required this.rating});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2),
      child: Image.asset(
        index <= rating
            ? 'assets/images/star-icon.png'
            : 'assets/images/icon_star_grey.png',
        width: 20,
      ),
    );
  }
}
