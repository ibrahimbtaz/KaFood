import 'package:flutter/material.dart';

class SizeDetailHome extends StatefulWidget {
  @override
  State<SizeDetailHome> createState() => _SizeDetailHomeState();
}

class _SizeDetailHomeState extends State<SizeDetailHome> {
  final List<String> sizeList = ['Kecil', 'Sedang', 'Besar'];
  var currentSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    currentSelected = index;
                  });
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      color: currentSelected == index
                          ? Theme.of(context).primaryColor
                          : Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                          color: Colors.grey.withOpacity(1), width: 2)),
                  child: Text(
                    sizeList[index],
                    style: TextStyle(
                        color: currentSelected == index
                            ? Theme.of(context).colorScheme.secondary
                            : Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                width: 10,
              ),
          itemCount: sizeList.length),
    );
  }
}
