

import 'package:flutter/material.dart';

class Babycard extends StatelessWidget {
  final String image;
  Babycard({@required this.image});

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height-kToolbarHeight-MediaQuery.of(context).padding.top-kBottomNavigationBarHeight;
    return Container(
      height: screenheight,
        child: Card(
            child: Stack(children: <Widget>[
      Image.asset(image,height: screenheight,fit: BoxFit.fitHeight,),
      
      
    ])));
  }
}
