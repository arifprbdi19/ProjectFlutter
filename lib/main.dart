import 'package:flutter/material.dart';
import 'package:project_coz/pages/splash_page.dart';
import 'package:project_coz/providers/space_provider.dart';
import 'package:provider/provider.dart';
import 'package:project_coz/models/account_model.dart';
import 'package:project_coz/pages/login_page.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(UserAccountModelAdapter());
  await Hive.openBox<UserAccountModel>("user");
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProvider(),
      child: MaterialApp(
        home: SplashPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
