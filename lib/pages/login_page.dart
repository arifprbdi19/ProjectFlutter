import 'dart:math';
import 'package:project_coz/models/account_model.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:project_coz/pages/home_page.dart';
import 'package:project_coz/pages/register_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var cntrlNickname = TextEditingController();
  var cntrlPassword = TextEditingController();

  var scaffoldKey = GlobalKey<ScaffoldState>();
  late Box<UserAccountModel> localDB = Hive.box<UserAccountModel>("user");

  Future loginControl() async {
    var nick = cntrlNickname.text;
    var passwrd = cntrlPassword.text;

    for (int index = 0; index < localDB.length; index++) {
      if (nick == localDB.getAt(index)!.username &&
          passwrd == localDB.getAt(index)!.password) {
        var sp = await SharedPreferences.getInstance();
        await sp.setString("Username", nick);
        Navigator.pushAndRemoveUntil(context,
            MaterialPageRoute(builder: (context) {
          return HomePage();
        }), (_) => false);
        // SharedPreferences getPref = await _myPref;
        // await getPref.setBool("LoginStatus", true);

      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("Login is Incorrect")));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        child: Text('Login dahulu'),
      );
    }

    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          children: [
            title(),
            TextField(
              controller: cntrlNickname,
              decoration: InputDecoration(hintText: "Username"),
            ),
            SizedBox(height: 30),
            TextField(
              obscureText: true,
              controller: cntrlPassword,
              decoration: InputDecoration(hintText: "Password"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                loginControl();
              },
              child: Text("Login"),
            ),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => RegisterPage()));
              },
              child: Text("Register"),
            ),
          ],
        ),
      ),
    );
  }
}
