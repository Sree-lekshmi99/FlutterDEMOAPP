import 'dart:math';

import 'package:flutter/material.dart';
import 'Header.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:transparent_image/transparent_image.dart';
import 'shop.dart';
import 'package:lifepoints3/Products.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}





class _CartState extends State<Cart> {
  final imageproductList = [
    'https://i.pinimg.com/originals/1d/79/20/1d7920b6936093e2b043b5a33cb3f645.jpg',

    'https://cdn.pixabay.com/photo/2020/05/03/19/09/nike-5126389_1280.jpg',
    'https://cdn.pixabay.com/photo/2015/01/16/15/01/fashion-601563_960_720.jpg',
    'https://cdn.pixabay.com/photo/2017/08/06/11/11/beanie-2591388_1280.jpg',

  ];

  @override
  Widget build(BuildContext context){


         return StaggeredGridView.countBuilder(
    itemCount: places.length,
    crossAxisSpacing: 15.0,
    mainAxisSpacing: 30.0,
    crossAxisCount: 4,
    itemBuilder: (context, index) {
    return PlaceContainer(
    index: index,
    );
    },
    staggeredTileBuilder: (index) {
    return StaggeredTile.count(2, index.isEven ? 3 : 2);
    });




  }
}

class PlaceContainer extends StatelessWidget {
  final int index;

  PlaceContainer({this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.primaries[Random().nextInt(Colors.primaries.length)].withOpacity(0.5),
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: NetworkImage(
              places[index].imgPath,
            ),
            //fit: BoxFit.cover,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            places[index].name,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.primaries[Random().nextInt(Colors.primaries.length)].withOpacity(0.9)),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.emoji_events_outlined,
                color: Colors.white,
                size: 20,
              ),
              Expanded(
                child: Text(
                  places[index].place,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.primaries[Random().nextInt(Colors.primaries.length)].withOpacity(0.9)),
                ),
              )
            ],
          ),
          Spacer(),

        ],
      ),
    );
  }
}