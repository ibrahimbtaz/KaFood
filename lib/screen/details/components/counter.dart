import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mycatering/utils/Constant.dart';

class Counter extends StatefulWidget {
  final productprice;
  const Counter({super.key, this.productprice});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: kBorderColor,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            FloatingActionButton.small(
              elevation: 0,
              heroTag: null,
              onPressed: () {
                if (count > 1) {
                  setState(() {
                    count--;
                  });
                }
              },
              backgroundColor: Colors.white,
              child: const Icon(
                Icons.remove,
                color: blackColor,
              ),
            ),
            Text(
              count.toString(),
              style: GoogleFonts.roboto(
                fontSize: 16,
                color: blackColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            FloatingActionButton.small(
              elevation: 0,
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              backgroundColor: Colors.white,
              child: const Icon(
                Icons.add,
                color: blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
