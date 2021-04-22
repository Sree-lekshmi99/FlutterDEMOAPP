import 'main.dart';
import 'package:flutter/material.dart';
import 'Products.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
      itemCount: 10,
      itemBuilder: (context,index)
      {
          return Padding(
            padding: const EdgeInsets.all(8.0),
         child: ProductInfo(
        productImage: "https://cdn.mos.cms.futurecdn.net/sagEXgarBkhRK9WeQvQaSk-320-80.jpg",
           productName: "iPhone",
           productPoints: "1000 Points",
        ),

          );
      },
        staggeredTileBuilder: (index){
          return StaggeredTile.count(2,index.isEven?2.6:2.4);
        },
      )
    );
  }
}
