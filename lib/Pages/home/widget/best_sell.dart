import 'package:flutter/material.dart';
import 'package:mycatering/Pages/home/widget/categories_list.dart';
import 'package:mycatering/Pages/home/widget/detailpage.dart';
import 'package:mycatering/asset/asset.dart';

class BestSell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoriesList('Paket Terbaik'),
          Card(
            margin: EdgeInsets.only(left: 20, top:10, right: 20, bottom:0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const DetailPageHome()));
              },
              child: Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/img_6.png',
                                width: 110,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Paket Nasi Padang',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, height: 1.5),
                                ),
                                const Text(
                                  'Food & Drink',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal, height: 1.5),
                                ),
                                Text(
                                  'Rp 1.450.000.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      height: 1.5,
                                      color: maincolor),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ],

              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(left: 20, top:10, right: 20, bottom:0),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const DetailPageHome()));
              },
              child: Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/img_2.png',
                                width: 110,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Paket Hari Lebaran',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, height: 1.5),
                                ),
                                const Text(
                                  'Food & Drink',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal, height: 1.5),
                                ),
                                Text(
                                  'Rp 1.210.000.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      height: 1.5,
                                      color: maincolor),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ],

              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(left: 20, top:10, right: 20, bottom:0),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const DetailPageHome()));
              },
              child: Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/img_7.png',
                                width: 110,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Paket Hari Natal',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, height: 1.5),
                                ),
                                const Text(
                                  'Dessrt',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal, height: 1.5),
                                ),
                                Text(
                                  'Rp 810.000.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      height: 1.5,
                                      color: maincolor),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ],

              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(left: 20, top:10, right: 20, bottom:0),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const DetailPageHome()));
              },
              child: Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/img_8.png',
                                width: 110,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Paket Hari Halloween',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, height: 1.5),
                                ),
                                const Text(
                                  'Fruits',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal, height: 1.5),
                                ),
                                Text(
                                  'Rp 580.000.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      height: 1.5,
                                      color: maincolor),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ],

              ),
            ),
          ),
          Card(
            margin: EdgeInsets.only(left: 20, top:10, right: 20, bottom:0),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const DetailPageHome()));
              },
              child: Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/img_9.png',
                                width: 110,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Paket Hari Ulang Tahun',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, height: 1.5),
                                ),
                                const Text(
                                  'Cake & Bakery',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal, height: 1.5),
                                ),
                                Text(
                                  'Rp 725.000.00',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      height: 1.5,
                                      color: maincolor),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ],

              ),
            ),
          ),
        ],
      ),
    );
  }
}
