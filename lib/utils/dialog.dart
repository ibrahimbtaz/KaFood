import 'package:flutter/material.dart';
class Dialogs {
  static void openSnackbar(context, snackMessage, color) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: color,
        action: SnackBarAction(
          label: "Dismiss",
          textColor: Colors.white,
          onPressed: () {},
        ),
        content: Text(
          snackMessage,
          style: const TextStyle(fontSize: 14),
        )));
  }

  static void showProgressBar(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => const Center(child: CircularProgressIndicator()));
  }
}
