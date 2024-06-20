import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

    
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      padding: EdgeInsets.all(0),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image(image:AssetImage(shoe.imagePath),height: 200,width: 200,fit: BoxFit.cover,)
          ),
          Text(shoe.description, style: TextStyle(color:Colors.grey[600]),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment:CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(shoe.name, style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(shoe.price, style: TextStyle(color:Colors.grey[600]),),
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.black),
                child: Icon(Icons.add, color: Colors.white,)
              )
            ],
          ),
        ]
      ),
    );
  }
}