// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_e_commerse/components/shoe_tile.dart';
import 'package:flutter_e_commerse/models/shoe.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(children: [
        //search bar
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text("Search"),
            Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Text(
            'everyone flies.. some fly longer than others',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Hot Picks 🔥',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text('See all',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue))
          ],
        ),
        //message
        Expanded(
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Shoe shoe = Shoe(
                      name: 'Samba',
                      price: '15',
                      imagePath: "images/shoe1.jpeg",
                      description: "classic comfortable");
                  return ShoeTile(
                    shoe: shoe,
                  );
                })),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(
            color: Colors.white,
          ),
        )
        //hot picks
      ]),
    );
  }
}
