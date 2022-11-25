import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mycatering/utils/Constant.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback? press;

  //membuat Menu profile
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: TextButton(
        style: TextButton.styleFrom(
            foregroundColor: quaternary,
            padding: const EdgeInsets.all(18),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            backgroundColor: secondary),
        onPressed: press,
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              color: quaternary,
              width: 20,
              height: 20,
            ),
            const SizedBox(width: 20),
            Expanded(
                child: Text(
              text,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 14, fontWeight: FontWeight.bold, color: quaternary),
            )),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
