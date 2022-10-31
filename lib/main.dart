import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mycatering/asset/asset.dart';
import 'package:mycatering/home.dart';
import 'package:mycatering/setup/splash.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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

