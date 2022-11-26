import 'package:flutter/material.dart';
import 'package:mycatering/utils/constant.dart';

class MenuSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 25),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: TextField(
                  cursorColor: blackColor,
                  decoration: InputDecoration(
                    fillColor: quaternary,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    hintText: 'Search Menu',
                    hintStyle: const TextStyle(
                      color: secondary,
                      fontSize: 14,
                    ),
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(15),
                      width: 18,
                      child: Image.asset('assets/icons/icons-search.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
