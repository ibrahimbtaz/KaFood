import 'package:flutter/material.dart';
import 'package:mycatering/DetailPageHome/Detail1.dart';
import 'package:mycatering/models/asset.dart';
import 'package:mycatering/models/catering.dart';

class ClothesItem extends StatelessWidget {
  final Catering catering;
  const ClothesItem(this.catering);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => DetailPage1(catering)));
        },
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.all(8),
                    height: 170,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(catering.imageURL),
                          fit: BoxFit.fitHeight),
                    ),
                  ),
                  // Positioned(
                  //     right: 20,
                  //     top: 15,
                  //     child: Container(
                  //       padding: EdgeInsets.all(8),
                  //       decoration: BoxDecoration(
                  //           color: Colors.white.withOpacity(0.9),
                  //           shape: BoxShape.circle
                  //       ),
                  //       child: Icon(Icons.favorite,
                  //         color: Colors.red,
                  //         size:  15,),))
                ],
              ),
              Text(
                catering.title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, height: 1.5),
              ),
              Text(
                catering.subtitle,
                style:
                    const TextStyle(fontWeight: FontWeight.normal, height: 1.5),
              ),
              Text(
                catering.price,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  color: maincolor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
