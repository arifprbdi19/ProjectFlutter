import 'package:flutter/material.dart';
import 'package:project_coz/theme.dart';
import 'home_page.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/images/splash_image.png'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/logo.png'))),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'HOTELQ\nPemesanan hotel ternyaman',
                      style: blackText.copyWith(fontSize: 24),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Membantu anda untuk mencari\nHotel sesuai keingingan anda',
                      style: greyText.copyWith(fontSize: 16),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 210,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ));
                        },
                        child: Text(
                          'Explore Now',
                          style: whiteText,
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: blueColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17))),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
