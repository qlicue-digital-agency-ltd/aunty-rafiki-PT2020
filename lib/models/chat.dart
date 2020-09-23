import 'package:flutter/cupertino.dart';

class Chat {
  final String uuid;
  final String name;
  final String lastMessage;
  final int messageCounter;
  final String time;
  final String chartType;
  final String avatar;

  Chat(
      {@required this.uuid,
      @required this.name,
      @required this.lastMessage,
      @required this.messageCounter,
      @required this.time,
      @required this.chartType,
      @required this.avatar});
}

List<Chat> chatList = [
  Chat(
      uuid: 'udsidshb',
      name: 'mpoki',
      lastMessage: 'Hello',
      messageCounter: 4,
      time: '17:00',
      chartType: 'private',
      avatar: 'assets/images/image1.jpg'),
  Chat(
      uuid: 'udsidsh2',
      name: 'Week 2',
      lastMessage: 'Hi',
      messageCounter: 4,
      time: '17:30',
      chartType: 'group',
      avatar: 'assets/images/image2.jpg'),
  Chat(
      uuid: 'udsidshb',
      name: 'william',
      lastMessage:
          'Sorry ajhsajd ajsgajdga ugadjgadga kuagdagda gadiagidag iagdiagdia',
      messageCounter: 0,
      time: '14:00',
      chartType: 'private',
      avatar: 'assets/images/image3.jpg'),
  Chat(
      uuid: 'ud89dshb',
      name: 'Week 7',
      lastMessage: 'Hello world',
      messageCounter: 0,
      time: '18:00',
      chartType: 'group',
      avatar: 'assets/images/image4.jpg'),
  Chat(
      uuid: 'udsids67',
      name: 'Simon',
      lastMessage:
          'Kesho ajgag dfsdsads sadgsadgsad sagdg sagdusyag asugjgsagsg agsagsadsa',
      messageCounter: 1,
      time: '00:00',
      chartType: 'private',
      avatar: 'assets/images/image5.jpg'),
  Chat(
      uuid: 'uds098shb',
      name: 'Week 18',
      lastMessage: 'Amekuja',
      messageCounter: 0,
      time: '17:00',
      chartType: 'Group',
      avatar: 'assets/images/image6.jpg'),
];
