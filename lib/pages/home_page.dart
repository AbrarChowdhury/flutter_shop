// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_e_commerse/components/bottom_nav_bar.dart';
import 'package:flutter_e_commerse/pages/cart_page.dart';
import 'package:flutter_e_commerse/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void handleTabChange(int index){
    setState(() {
      _selectedIndex=index;
      print(_selectedIndex);
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) =>IconButton(
              icon: Icon(Icons.menu), 
              onPressed: () {  
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(child: Image.asset('images/logo.png', color:Colors.white)),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, ),
                  child: ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home", style:TextStyle(color: Colors.white),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0,),
                  child: ListTile(
                    leading: Icon(Icons.info),
                    title: Text("About", style:TextStyle(color: Colors.white),),
                  ),
                ),
              ],
            ),
            

            Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout", style:TextStyle(color: Colors.white),),
              ),
            )
          ],
        )
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavBar(onTabChange: (index)=>handleTabChange(index),),
    );
  }
}