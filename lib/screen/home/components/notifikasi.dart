import 'package:flutter/material.dart';
import 'package:mycatering/utils/Constant.dart';

class NotifikasiPage extends StatelessWidget {
  const NotifikasiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
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
      body: Center(
        child: Text("No Notifications here"),
      ),
    );
  }
}
