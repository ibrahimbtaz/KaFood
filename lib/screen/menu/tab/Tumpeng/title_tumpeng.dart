import 'package:flutter/material.dart';
import 'package:mycatering/screen/inputlogin/auth/auth.dart';
import 'package:mycatering/utils/constant.dart';

class TumpengTitle extends StatelessWidget {
  final String TumpengVariant;
  final String TumpengPrice;
  final String imageTumpengName;

  final double borderRadius = 12;

  const TumpengTitle({
    super.key,
    required this.TumpengVariant,
    required this.TumpengPrice,
    required this.imageTumpengName,
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
            future: auth.downloadURL(imageTumpengName),
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
                    TumpengVariant,
                    maxLines: 1,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 16, overflow: TextOverflow.ellipsis),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  '\$${TumpengPrice.toString()}',
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
