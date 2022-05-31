import 'package:flutter/material.dart';
import 'package:project_coz/models/tips.dart';
import 'package:project_coz/theme.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;

  TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24),
      child: Container(
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                width: 80,
                height: 80,
                child: Image.asset(tips.image),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tips.title,
                  style: blackText.copyWith(fontSize: 18),
                ),
                SizedBox(
                  height: 4,
                ),
                Text.rich(
                  TextSpan(
                    text: 'Updated ',
                    children: [
                      TextSpan(text: tips.date),
                    ],
                  ),
                  style: greyText.copyWith(fontSize: 14),
                )
              ],
            ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.chevron_right, color: greyColor),
            )
          ],
        ),
      ),
    );
  }
}
