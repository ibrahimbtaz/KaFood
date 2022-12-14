import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mycatering/screen/payment/bloc/cart_bloc.dart';
import 'package:mycatering/screen/splashscreen/Splash.dart';
import 'package:mycatering/utils/Constant.dart';
import 'package:provider/provider.dart';

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
    return MultiProvider(
      providers: [
        BlocProvider(create: (_) => CartBloc()..add(LoadCart())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyCatering',
        theme: ThemeData(
          fontFamily: 'Montserrat',
          backgroundColor: whiteColor,
          primaryColor: primary,
          appBarTheme: const AppBarTheme(
            elevation: 0,
            titleTextStyle: TextStyle(color: blackColor),
            backgroundColor: whiteColor,
          ),
          scaffoldBackgroundColor: whiteColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
