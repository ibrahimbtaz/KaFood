import 'package:flutter/material.dart';
import 'package:mycatering/asset/asset.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25, right: 25),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    hintText: 'Cari Catering',
                    hintStyle: const TextStyle(
                      color: maincolor,
                      fontSize: 15,
                    ),
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(15),
                      width: 50,
                      child: Image.asset('assets/icons/search.png'),
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
