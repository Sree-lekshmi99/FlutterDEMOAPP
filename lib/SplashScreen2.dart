import 'main.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'dart:async';


class SplashScreen2 extends StatefulWidget {
  SplashScreen2({Key key}) : super(key: key);
  @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
          () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeScreen(),
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF020528),
      body: Center(
        child: Stack(
          children: <Widget>[
            Image.asset('images/logo.png',width: 300,height: 400,),
            Positioned(
              child: TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 0.0, end: 1),
                duration: const Duration(milliseconds: 3500),
                builder: (context, value, _) => CircularPercentIndicator(
                  radius: 300,
                  lineWidth: 2.0,
                  percent: 1.0,
                  animation: true,
                  animationDuration: 10,
                  center: new Text(""),
                  backgroundColor: Colors.white,
                  progressColor: Colors.cyanAccent,),
              ),
              bottom: 50,

            )
          /* CircularPercentIndicator(
              radius: 120,
              lineWidth: 5.0,
              percent: 0.4,
              center: new Text(""),
              progressColor: Colors.cyanAccent,

            ), */

          ],

        ),
      ),
    );
  }
}
