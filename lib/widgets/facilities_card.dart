import 'package:flutter/material.dart';
import 'package:project_coz/models/facility.dart';
import 'package:project_coz/theme.dart';

class FacilityCard extends StatelessWidget {
  final Facility facility;

  FacilityCard(this.facility);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          facility.image,
          width: 32,
        ),
        SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
              text: '${facility.amount} ',
              style: blueText.copyWith(fontSize: 14),
              children: [
                TextSpan(
                  text: facility.title,
                  style: greyText.copyWith(fontSize: 14),
                ),
              ]),
        ),
      ],
    );
  }
}
