import 'package:flutter/material.dart';
import 'package:mycatering/models/catering.dart';

class AddCart_1 extends StatelessWidget {
  final Catering catering;
  const AddCart_1(this.catering);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Text("Harga", style: TextStyle(fontSize: 16, color: Colors.grey)),
          //     Text(catering.price, style: TextStyle(height: 1.5, fontSize: 18, fontWeight: FontWeight.bold),)],
          // ),

          Container(
            height: 75,
            width: 210,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: Theme.of(context).primaryColor,
                    elevation: 0),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Add To Cart',
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.shopping_cart_checkout_outlined)
                  ],
                )),
          ),

          Container(
            height: 75,
            width: 140,
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    backgroundColor: Theme.of(context).primaryColor,
                    elevation: 0),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Buy Now',
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.monetization_on)
                  ],
                )),
          )
        ],
      ),
    );
  }
}
