import 'package:flutter/material.dart';
import 'package:mycatering/DetailPageHome/add_cart_home.dart';
import 'package:mycatering/DetailPageHome/catering_home_info.dart';
import 'package:mycatering/DetailPageHome/detail_app_bar.dart';
import 'package:mycatering/DetailPageHome/detail_home_size.dart';
import 'package:mycatering/models/catering.dart';

class DetailPage1 extends StatelessWidget {
  final Catering catering;
  DetailPage1(this.catering);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DetailAppBarHome(catering),
                    CateringInfo(catering),
                    SizeDetailHome(),
                    AddCart_1(catering),
      ])));
  }
}
