import 'package:flutter/material.dart';
import 'package:mycatering/Pages/home/widget/categories_list.dart';
import 'package:mycatering/Pages/home/widget/clothes_item.dart';
import 'package:mycatering/models/clothes.dart';

class NewArivval extends StatelessWidget{
  final clothesList = Clothes.generateClothes();
  @override
  Widget build(BuildContext context){
    return Container(
      child: Column(
        children: [
          CategoriesList('Paling Populer'),
          Container(
            height: 270,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 25,),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ClothesItem(clothesList[index]),
              separatorBuilder: (_, index) => SizedBox(
                width: 10,
              ),
              itemCount: clothesList.length,
            ),
          )
        ],
      ),
    );
  }
}