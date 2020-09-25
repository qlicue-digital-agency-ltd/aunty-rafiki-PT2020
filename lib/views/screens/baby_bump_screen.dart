import 'package:aunty_rafiki/models/baby.dart';
import 'package:aunty_rafiki/providers/baby_bump_provider.dart';
import 'package:aunty_rafiki/views/Widget/card/baby_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BabyBumpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      TabBarView(
          children: babyModel.map((e) => Babycard(image: e.image)).toList()),
      Positioned(
          top: 20,
          left: 20,
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.5),
            radius: 30,
            child: Consumer(builder: (BuildContext context,
                BabyBumpProvider provider, Widget child) {
              return Text(provider.tabIndex.toString());
            }),
          )),
      Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Container(
              decoration:
                  BoxDecoration(shape: BoxShape.rectangle, color: Colors.white),
              //decoration: BoxDecoration(shape : BoxShape.rectangle,color: Colors.grey),

              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Text('IMAGE'))),
      Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Mybubby',
          )),
    ]);
  }
}
