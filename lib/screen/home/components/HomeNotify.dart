import 'package:flutter/material.dart';
import 'package:mycatering/utils/Constant.dart';

class NotifikasiPage extends StatelessWidget {
  const NotifikasiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          color: blackColor,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Notification Page".toUpperCase(),
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: secondary, fontSize: 14),
        ),
      ),
      body: const Center(
        child: Text("No Notifications here"),
      ),
    );
  }
}
