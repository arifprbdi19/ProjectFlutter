import 'package:flutter/material.dart';
import 'package:project_coz/models/space.dart';
import 'package:project_coz/pages/detail_page.dart';
import 'package:project_coz/theme.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(space),
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
                width: 130,
                height: 110,
                child: Stack(
                  children: [
                    Image.network(
                      space.image,
                      width: 130,
                      height: 110,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                            color: blueColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(36))),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/star-icon.png',
                                width: 20,
                                height: 20,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: '${space.rating}',
                                  children: [
                                    TextSpan(text: '/5'),
                                  ],
                                ),
                                style: whiteText.copyWith(fontSize: 13),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(space.name, style: blackText.copyWith(fontSize: 18)),
              SizedBox(height: 2),
              Text.rich(
                TextSpan(
                    text: '\$${space.price}',
                    style: blueText.copyWith(fontSize: 16),
                    children: [
                      TextSpan(
                        text: ' / Day',
                        style: greyText.copyWith(fontSize: 16),
                      ),
                    ]),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                '${space.city},${space.country}',
                style: greyText.copyWith(fontSize: 14),
              )
            ],
          )
        ],
      ),
    );
  }
}
