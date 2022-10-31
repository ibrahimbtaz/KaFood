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
                  cursorColor: Colors.grey,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                      hintText: 'Cari Catering',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 66, 95, 87),
                        fontSize: 15,),
                      prefixIcon:Container(
                        padding: EdgeInsets.all(15),
                        child: Image.asset('assets/icons/search.png'),
                        width: 50,
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