import 'package:flutter/material.dart';
import 'package:project_coz/theme.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
          top: 50,
          left: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo.png'),
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Text(
              'Cari tempat tinggal\nternyaman untuk anda',
              style: blackTextStyle.copyWith(
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Menenemukan tempat tinggal \nnyaman dengan cara yang mudah',
              style: greyTextStyle.copyWith(
                fontSize: 14,
              ),
            ),
            SizedBox(
              height: 38,
            ),
            Container(
              width: 200,
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
                Buttons
                child: const Text(
                  'Explore Now',
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
