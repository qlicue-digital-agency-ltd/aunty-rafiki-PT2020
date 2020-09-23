import 'package:flutter/material.dart';

class Message {
  final String text;
  final String time;
  final String sender;
  final String phoneNumber;
  final String userName;
  final String chatUuid;
  final bool ownedByme;

  Message(
      {@required this.text,
      @required this.time,
      this.sender,
      @required this.phoneNumber,
      @required this.userName,
      @required this.chatUuid,
      @required this.ownedByme});
}

List<Message> messagePool = [
  Message(
      text: 'Hello😂😂😂',
      time: 'Yesterday',
      phoneNumber: '0657006587',
      userName: '~H.K',
      chatUuid: '90T78RTRGHGJF',
      ownedByme: false),
  Message(
      text: 'Hello',
      time: 'Yesterday',
      phoneNumber: '0657004587',
      sender: 'Hamisi',
      userName: '~H.K',
      chatUuid: '90T78RTRGHGJF',
      ownedByme: false),
  Message(
      text: 'Hello wolrd',
      time: 'Yesterday',
      phoneNumber: '0657043487',
      userName: '~H.K',
      chatUuid: '90T78RTRGHGJF',
      ownedByme: false),
  Message(
      text: 'Hello😁😁😁',
      time: 'Yesterday',
      phoneNumber: '0657006587',
      userName: '~H.K',
      chatUuid: '90T78RTRGHGJF',
      ownedByme: true),
  Message(
      text: 'Hello',
      time: 'Yesterday',
      phoneNumber: '0657006587',
      userName: '~H.K',
      chatUuid: '90T78RTRGHGJF',
      ownedByme: true),
  Message(
      text: 'Hello😎😎',
      sender: 'Hamisi',
      time: 'Yesterday',
      phoneNumber: '0657006587',
      userName: '~H.K',
      chatUuid: '90T78RTRGHGJF',
      ownedByme: false),
];
