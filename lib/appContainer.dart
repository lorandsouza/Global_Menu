import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:global_menu/widget/FoodCarousel.dart';
import 'package:global_menu/widget/cuisines.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key key}) : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int currentTab=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7E8EB),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: [
            Padding(
              padding:  EdgeInsets.only(left:20.0,right: 120.0),
              child: Text('What would you like to eat?',
              style:
               GoogleFonts.roboto().copyWith(fontSize: 30.0,
                   fontWeight: FontWeight.bold,
                   color: Colors.black),
              ),
            ),
            SizedBox(height: 20.0,),
            FoodCarousel(),
            CuisineCarousel(),

              ],
            ),
        ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTab,
        items: [BottomNavigationBarItem(icon:Icon(Icons.menu,
          color:Colors.black,
          size: 30.0,
        ) ,
          title: Text(''),
        ),
          BottomNavigationBarItem(icon:Icon(Icons.qr_code_scanner,
            color:Colors.black,
            size: 30.0,
          ) ,
            title: Text(''),
          ),
          BottomNavigationBarItem(icon: CircleAvatar(
            backgroundImage: AssetImage('assets/images/background.jpg'),
          ),
            title: Text(''),
          ),
        ],
      ),





    );
  }
}
