import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_e_commerse/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: 
        Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image:AssetImage('images/logo.png')),
                Text(
                  "Don't Just Do It",
                  style:TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )
                ),
                SizedBox(height: 24,),
                Text(
                  "Classic Sneaker and custom kicks made with premium quality",
                  style:TextStyle(
                    fontSize: 16,
                    color: Colors.grey
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24),
                GestureDetector(
                  onTap:()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage())),
                  child: Container(
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text("Shop Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      )
                      ),
                        
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}