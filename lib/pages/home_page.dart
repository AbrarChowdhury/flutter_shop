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
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavBar(onTabChange: (index)=>handleTabChange(index),),
    );
  }
}