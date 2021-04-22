import 'main.dart';
import 'package:flutter/material.dart';
import 'Navigation_bar.dart';
import 'Header.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:storyswiper/storyswiper.dart';

class Swiping extends StatefulWidget {
  @override
  _SwipingState createState() => _SwipingState();
}

class _SwipingState extends State<Swiping> {
  final imageList = [
    'https://i.pinimg.com/originals/1d/79/20/1d7920b6936093e2b043b5a33cb3f645.jpg',
    'https://cdn.pixabay.com/photo/2016/11/20/09/06/bowl-1842294__480.jpg',
    'https://cdn.pixabay.com/photo/2017/01/03/11/33/pizza-1949183__480.jpg',
    'https://cdn.pixabay.com/photo/2017/02/03/03/54/burger-2034433__480.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF020528),
      body: Swiper(
        itemHeight: 500,
        itemWidth: 350,
        layout: SwiperLayout.STACK,
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Image.network(
            imageList[index],
            fit: BoxFit.cover,
          );
        },
      ),







    );
  }
}
