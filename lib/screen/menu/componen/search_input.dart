import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget{
  @override
  Widget build(BuildContext   context){
    return Container(
      margin: EdgeInsets.only(top: 25, left:25, right: 25),
      child: Column(
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: TextField(
                  cursorColor: Colors.white12,
                    decoration: InputDecoration(
                      fillColor: Color.fromRGBO(238, 238, 238, 1.0) ,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                      hintText: 'Search Helm',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,),
                      prefixIcon:Container(
                        padding: EdgeInsets.all(15),
                        child: Image.asset('lib/icons/search.png'),
                        width: 20,
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