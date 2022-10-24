import 'package:flutter/material.dart';
import 'package:mycatering/asset/asset.dart';
import 'package:mycatering/setup/splash.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyCatering',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: maincolor,  
        ),
        scaffoldBackgroundColor: white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: splashscreen(),
    );
  }
}