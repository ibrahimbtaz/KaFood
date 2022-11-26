import 'package:flutter/material.dart';
import 'package:mycatering/screen/inputlogin/auth/auth.dart';
import 'package:mycatering/utils/constant.dart';

class DessertTitle extends StatelessWidget {
  final String DessertVariant;
  final String DessertPrice;
  final String imageDessertName;

  final double borderRadius = 12;

  const DessertTitle({
    super.key,
    required this.DessertVariant,
    required this.DessertPrice,
    required this.imageDessertName,
  });

  @override
  Widget build(BuildContext context) {
    final Auth auth = Auth();
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: quaternary,
        border: Border.all(color: quaternary),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FutureBuilder(
            future: auth.downloadURL(imageDessertName),
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              if (snapshot.connectionState == ConnectionState.done &&
                  snapshot.hasData) {
                return SizedBox(
                  height: 90,
                  width: 90,
                  child: Image.network(
                    snapshot.data!,
                    fit: BoxFit.cover,
                  ),
                );
              }
              if (snapshot.connectionState == ConnectionState.waiting ||
                  !snapshot.hasData) {
                return const CircularProgressIndicator(
                  color: secondary,
                );
              }
              return Container();
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    DessertVariant,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 16, overflow: TextOverflow.ellipsis),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  '\$${DessertPrice.toString()}',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: secondary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
