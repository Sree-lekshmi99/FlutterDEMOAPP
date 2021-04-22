import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Stack(
    children: <Widget>[
      buildHeaderBackground(),
      Positioned(
        child: PopupMenuButton<String>(
          itemBuilder: (BuildContext context) => [
            PopupMenuItem(child: Text('View Profile')),
            PopupMenuItem(child: Text('Add to friends')),
          ],
        ),

        right: 0,
      ),
      Positioned(
        child: SizedBox(
          width: 40,
          height: 40,
          child: Image.asset(
            'images/logo.png',
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.darken,
            color: Colors.black.withOpacity(0.4),
          ),
        ),
        bottom: 60,
        right: 25,
      ),
      const SizedBox(height: 24),
      Positioned(
        child: buildHeaderContent(context),
        bottom: 40 ,
        left: 24,
      ),

        Positioned(
        child: new CircularPercentIndicator(
          radius: 80.0,
          lineWidth: 5.0,
          percent: 0.4,
          center: new Text(""),
          progressColor: Colors.cyanAccent,
        ),
          bottom: 40,
          right: 5,
      ),




    ],
  );

  Widget buildHeaderContent(BuildContext context) => Row(
    children: <Widget>[
      buildProfile(context),
      SizedBox(width: 18),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:45),
            child: Text(
              'POINTS ',
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
          ),

          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 80.0),
            child: Container(
              child: Text('40',style: TextStyle(
                fontSize: 30, color: Colors.white
              ),),
            ),
          ),

        ],
      ),
    ],
  );



  Widget buildProfile(BuildContext context) {
    final image = DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage(
        'images/profile1.jpg',
      ),
    );



    return Container(
      width: 100,
      height: 100,
        decoration: decoration(context, image: image),

    );
  }

  Widget buildHeaderBackground() => Column(
    children: <Widget>[
      SizedBox(
        width: double.infinity,
        height: 130,
        child: Image.asset(
          'images/header.jpg',
          fit: BoxFit.cover,
          colorBlendMode: BlendMode.darken,
          color: Colors.black.withOpacity(0.4),
        ),
      ),
      const SizedBox(height: 24),
    ],
  );


  Decoration decoration(BuildContext context, {DecorationImage image}) =>
      BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),

        image: image,
      );
}

