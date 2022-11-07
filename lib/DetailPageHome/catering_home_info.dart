import 'package:flutter/material.dart';
import 'package:mycatering/models/catering.dart';

class CateringInfo extends StatelessWidget {
  final Catering catering;
  CateringInfo(this.catering);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                  '${catering.title} ${catering.subtitle}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
              Positioned(
                  right: 20,
                  top: 15,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        shape: BoxShape.circle
                    ),
                    child: Icon(Icons.favorite,
                      color: Colors.red,
                      size:  15,),))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 10),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                    color: Color.fromARGB(255, 255, 240, 5),
                ),
                Text('4.5 (10.2k)',
                style: TextStyle(
                  fontWeight: FontWeight.bold, color: Color.fromARGB(255, 66, 95, 87),
                ),)
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                      text: 'Paket Nasi Tumpeng, Paket Nasi Tumpeng ini terdiri dari berbagai macam Size yang didalam nya terdapat\nmacam-macam Lauk-Pauk yang sangat Lezat dan Bergizi cocok untuk acara Festival, Pernikahan, Tahun Baru dll.\n',
                      style: TextStyle(color: Colors.black26.withOpacity(0.7),
                      height: 1.5)
                ),
                TextSpan(
                      text: 'Baca Selengkapnya',
                      style: TextStyle(
                    color: Theme.of(context).primaryColor
                )
                )
              ]
            ),
          )
        ],
      ),
    );
  }
}
