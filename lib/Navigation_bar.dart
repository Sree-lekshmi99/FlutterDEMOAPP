import 'package:lifepoints3/ProfileScreen.dart';
import 'package:lifepoints3/cart_screen.dart';
import 'package:lifepoints3/q_r_scannerscreen.dart';
import 'package:lifepoints3/trophy_points_screen.dart';

import 'main.dart';
import 'package:flutter/material.dart';
import 'ProfilePage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int pageIndex = 0;

  final ProfileScreen _profileScreen = ProfileScreen();
  final QRScanner _scanner = new QRScanner();
  final Points   _points = new Points();
  final Cart _cart = new Cart();

  Widget _showScreens = new ProfileScreen();

  Widget _screenchooser(int screen){
    switch(screen){
      case 0:
        return _profileScreen;
        break;
      case 1:
        return _scanner;
        break;
      case 2:
        return _points;
        break;
      case 3:
        return _cart;
        break; 
      default:
        return new Container(
          child: new Center(
            child: new Text('NO PAGE FOUND',
            style: TextStyle(fontSize: 50),),
          )
        );

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: pageIndex,
        color: Color(0xFF020528)  ,
        backgroundColor: Color(0xFF020528),


        items: <Widget>[
           Icon(Icons.category_outlined,size: 40, color: Colors.white),
          Icon(Icons.qr_code_scanner_outlined,size: 40, color: Colors.white),
          Icon(Icons.emoji_events_outlined,size: 40, color: Colors.white),
          Icon(Icons.shopping_cart_outlined,size: 40, color: Colors.white),

        ],
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (int tappedIndex)
        {
          setState(() {
            _showScreens = _screenchooser(tappedIndex);

          });

        },
      ),
      body: Container(
        color: Color(0xFF020528),
        child: Center(
         // child: Text(_page.toString(),textScaleFactor: 10.0, style: TextStyle(color: Colors.white),),
          child: _showScreens,
        ),
      ),
    );
  }
}
