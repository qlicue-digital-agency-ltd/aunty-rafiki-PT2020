import 'package:aunty_rafiki/models/tracker.dart';
import 'package:flutter/material.dart';

class Trackercard extends StatelessWidget {
  final TrackerModel trackerModel;
  Trackercard({@required this.trackerModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      child: Card(
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        child: Container(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text(trackerModel.title),
                subtitle: Text(trackerModel.subtitle),
              ),
              Image.network(''),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 14),
                child: Text(
                  trackerModel.supportTEXT,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
