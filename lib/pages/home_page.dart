import 'package:flutter/material.dart';
import 'package:project_coz/models/city.dart';
import 'package:project_coz/models/space.dart';
import 'package:project_coz/models/tips.dart';
import 'package:project_coz/providers/space_provider.dart';
import 'package:project_coz/theme.dart';
import 'package:project_coz/widgets/button_nav.dart';
import 'package:project_coz/widgets/city_card.dart';
import 'package:project_coz/widgets/space_card.dart';
import 'package:project_coz/widgets/tips_card.dart';
import 'package:provider/provider.dart';
import 'package:project_coz/pages/login_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);
    spaceProvider.getSpacesData();

    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Explore Now',
                style: blackText.copyWith(fontSize: 24),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Mencari Hotel yang Nyaman',
                style: greyText.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Popular Cities',
                style: regularText.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 150,
              padding: const EdgeInsets.only(left: 24),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CityCard(
                    City(
                      id: 1,
                      name: 'Jakarta',
                      image: 'assets/images/city-1.png',
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CityCard(
                    City(
                      id: 2,
                      name: 'Bandung',
                      image: 'assets/images/city-2.png',
                      isFavorite: true,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CityCard(
                    City(
                      id: 3,
                      name: 'Yogyakarta',
                      image: 'assets/images/city-3.png',
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CityCard(
                    City(
                      id: 3,
                      name: 'Surabaya',
                      image: 'assets/images/city4.png',
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CityCard(
                    City(
                      id: 3,
                      name: 'Medan',
                      image: 'assets/images/city5.png',
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CityCard(
                    City(
                      id: 3,
                      name: 'Surabaya',
                      image: 'assets/images/city6.png',
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Recommended Space',
                style: regularText.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 24),
                child: FutureBuilder(
                  future: spaceProvider.getSpacesData(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      //menggunakan snapshot data untuk menampilkan data
                      List<Space> data = snapshot.data;
                      int index = 0;
                      return Column(
                        children: data.map((item) {
                          //yg akan menampilkan list agar
                          index++; // indeks menjadi 1
                          return Container(
                            margin: EdgeInsets.only(
                                top: index == 1
                                    ? // ketika indeks 1 margin 0
                                    0
                                    : 30), // indeks lbh 1 aakan menampilkan margin 30
                            child: SpaceCard(item),
                          );
                        }).toList(),
                      );
                    } else {
                      return Center(
                        child:
                            CircularProgressIndicator(), // untuk menampilkan load
                      );
                    }
                  },
                )),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Tips & Guidance',
                style: regularText.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                      date: '20 Apr',
                      image: 'assets/images/tips-1.png',
                      title: 'City Guidelines',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                      date: '11 Dec',
                      image: 'assets/images/tips-2.png',
                      title: 'Jakarta Fairship',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50 + 48,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * 24),
        margin: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonNav(
              image: 'assets/images/home-icon.png',
              isActive: true,
            ),
            ButtonNav(
              image: 'assets/images/mail-icon.png',
              isActive: false,
            ),
            ButtonNav(
              image: 'assets/images/card-icon.png',
              isActive: false,
            ),
            ButtonNav(
              image: 'assets/images/love-icon.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
