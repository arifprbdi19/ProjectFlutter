import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:project_coz/models/space.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  final String provider = 'https://bwa-cozy.herokuapp.com/recommended-spaces';
  getSpacesData() async {
    var result = await http.get(Uri.parse(provider));
    if (result.statusCode == 200) {
      //result. bodi tipe string diubah list
      //dengan jsson decode  agar bisa di convert dlam bentuk objek
      List data = jsonDecode(result.body);
      List<Space> spaces = data.map((item) => Space.fromJson(item)).toList();
      return spaces;
    } else {
      print('error: failed fetching');
      return [];
    }
  }
}
