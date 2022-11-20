import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mycatering/screen/home/components/HomePage.dart';
import 'package:mycatering/utils/Constant.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({super.key});

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  List<String> imgList = [
    'assets/images/deliciousfood.jpg',
    'assets/images/deliciousfood.jpg',
    'assets/images/deliciousfood.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 14),
      child: SizedBox(
        height: size!.height * .220,
        child: CarouselSlider(
          options: CarouselOptions(
            height: double.infinity,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 1000),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          items: imgList
              .map((item) => Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: quaternary,
                        width: 1,
                        strokeAlign: StrokeAlign.outside,
                      ),
                    ),
                    child: Center(
                        child: Image.asset(
                      height: double.infinity,
                      width: double.infinity,
                      item,
                      fit: BoxFit.cover,
                    )),
                  ))
              .toList(),
        ),
      ),
    );
  }
}

// class HomeDeliverAds extends StatelessWidget {
//   const HomeDeliverAds({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           padding: const EdgeInsets.only(left: 20),
//           height: size!.height * .167,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             color: primary,
//             borderRadius: BorderRadius.circular(18),
//             image: DecorationImage(
//               fit: BoxFit.fitWidth,
//               image: ads1,
//             ),
//           ),
//           // child: Column(
//           //   mainAxisAlignment: MainAxisAlignment.center,
//           //   crossAxisAlignment: CrossAxisAlignment.start,
//           //   children: [
//           //     Text(
//           //       "Gratis Ongkir",
//           //       style: Theme.of(context).textTheme.headline1,
//           //     ),
//           //     Text(
//           //       " Hingga Tanggal 27 November",
//           //       style: Theme.of(context).textTheme.headline1!.copyWith(
//           //         fontSize: 11,
//           //       ),
//           //     ),
//           //   ],
//           // ),
//         ),
//         const SizedBox(height: 10),
//         Container(
//           padding: const EdgeInsets.only(left: 20),
//           height: size!.height * .167,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             color: primary,
//             borderRadius: BorderRadius.circular(18),
//             image: DecorationImage(
//               fit: BoxFit.fitWidth,
//               image: ads2,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
