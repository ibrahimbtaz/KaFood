import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mycatering/utils/Constant.dart';

class HomeAppbar extends StatefulWidget {
  const HomeAppbar({super.key});

  @override
  State<HomeAppbar> createState() => _HomeAppbarState();
}

class _HomeAppbarState extends State<HomeAppbar> {
  final List<String> _items = ['Kudus', 'Demak', 'Semarang', 'Jepara'];
  String selectedValue = "Kudus";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Image(
            width: 58,
            height: 58,
            image: AssetImage("assets/images/logo.png"),
            // repeat: ImageRepeat.repeat,
          ),
          Center(
            child: Transform.translate(
              offset: const Offset(0, 14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Order To'.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: primary, fontSize: 14),
                  ),
                  Transform.translate(
                    offset: const Offset(0, -12),
                    child: DropdownButton(
                        icon: const SizedBox.shrink(),
                        dropdownColor: whiteColor,
                        underline: Container(),
                        value: selectedValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                        alignment: AlignmentDirectional.center,
                        items: _items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Center(
                              child: Text(
                                items,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(color: blackColor, fontSize: 18),
                              ),
                            ),
                          );
                        }).toList()),
                  )
                ],
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/bell-outline-icon.svg',
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
    );
  }
}
