import 'package:aunty_rafiki/models/message.dart';
import 'package:aunty_rafiki/views/components/cards/message_card.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class ChatRoomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Platform.isIOS
            ? FlatButton(
                onPressed: () => Navigator.pop,
                child: Row(
                  children: [
                    Expanded(
                        child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Text(
                      '1',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ))
                  ],
                ))
            : null,
        title: ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/image1.jpg'),
          ),
          title: Text('David', style: TextStyle(color: Colors.white)),
        ),
      ),
      body: ListView.builder(
          itemCount: messagePool.length,
          itemBuilder: (_, index) => MessageCard(message: messagePool[index])),
    );
  }
}
