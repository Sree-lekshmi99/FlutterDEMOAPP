import 'main.dart';
import 'package:flutter/material.dart';

import 'Header.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:storyswiper/storyswiper.dart';
import 'Swiping.dart';
class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
return Scaffold(
  backgroundColor: Color(0xFF020528),
  body: ListView(
    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

    children: [
      HeaderWidget(),
      Container(
        child: Text("News",textAlign: TextAlign.left, style: TextStyle(
          fontSize: 20, color: Colors.white
        ),),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 300),
          child: Swiping(),
        ),

      )
    ],
  ),

)   ;



  }
}









