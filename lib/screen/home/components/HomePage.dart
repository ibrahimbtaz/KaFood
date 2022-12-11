import 'package:flutter/material.dart';
import 'package:mycatering/screen/details/components/DetailNewArrival.dart';
import 'package:mycatering/screen/home/components/HomeBanner.dart';
import 'package:mycatering/screen/home/components/PopularMenu.dart';
import 'package:mycatering/screen/home/components/SearchDelegate.dart';
import 'package:mycatering/screen/home/components/HomeNotify.dart';
import 'package:mycatering/utils/constant.dart';

Size? size;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _items = ['Kudus', 'Demak', 'Semarang', 'Jepara'];
  String selectedValue = "Kudus";

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: HomeAppBar(context),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: const [
          HomeBanner(),
          DetailNewArrival(),
          PopularMenu(),
        ],
      ),
    );
  }

  AppBar HomeAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leadingWidth: 80,
      leading: const Image(
        image: AssetImage("assets/images/project - logo.png"),
        // repeat: ImageRepeat.repeat,
      ),
      centerTitle: true,
      title: Center(
        child: Transform.translate(
          offset: const Offset(0, 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Order To'.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: secondary, fontSize: 14),
              ),
              Transform.translate(
                offset: const Offset(-6, -13),
                child: DropdownButton(
                    icon: const Icon(
                      Icons.location_on,
                      size: 16,
                    ),
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
      actions: [
        IconButton(
            onPressed: () =>
                showSearch(context: context, delegate: CustomSearchDelegate()),
            icon: const Icon(
              Icons.search,
              color: Colors.black,
              size: 24,
            )),
        IconButton(
            onPressed: () {
              Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) {
                    return FadeTransition(
                        opacity: animation, child: const NotifikasiPage());
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: Colors.black,
              size: 24,
            )),
      ],
    );
  }
}
