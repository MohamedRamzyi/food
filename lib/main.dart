import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food/screens/Recipescreen/view.dart';
import 'package:food/screens/dashboardscreen/view.dart';
import 'package:food/screens/favouritescreen/orderhistoryscreen/orderhistory.dart';
import 'package:food/screens/favouritescreen/view.dart';
import 'package:food/screens/profilescreen/view.dart';

import 'controller.dart';
import 'onboarding/view.dart';
void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          color: Color(0xFFEEEEEE),
          elevation: 0,
    ),
      backgroundColor: Color(0xFFEEEEEE),
      scaffoldBackgroundColor: Color(0xFFEEEEEE),
    ),
    debugShowCheckedModeBanner: false,
    home: PageView(
      children: [SplashScreen(),


      ],
    ),
  ));
}
class MyProjectScreen extends StatefulWidget{
  const MyProjectScreen({Key? key}) : super(key: key);
  @override
  _MyProjectScreenState createState() => _MyProjectScreenState();
}
class _MyProjectScreenState extends State<MyProjectScreen> {
  var controller=ProjectController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFFEEEEEE),
            elevation: 0,
            currentIndex: controller.nav_index,
            onTap: (index){controller.nav_index=index;setState(() {});},
            selectedItemColor: Colors.deepOrange,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: ''),
              BottomNavigationBarItem(icon: Icon(CupertinoIcons.capslock),label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: ''),
            ]),
        body:
        controller.nav_index==0? DashboardScreen():
        controller.nav_index==1?RecipeScreen():
        controller.nav_index==2?FavouriteScreen():
        controller.nav_index==3?OrderHistoryScreen():
        null
    );
  }
}
