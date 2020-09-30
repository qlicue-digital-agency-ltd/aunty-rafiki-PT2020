import 'package:aunty_rafiki/models/chat.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatTile extends StatelessWidget {
  final Chat chat;
  final Function onTap;
  final Function onTapAvatar;

  // Widget onTapAvatar() {
  //   return SimpleDialog(
  //     children: [
  //       SimpleDialogOption(
  //         child: Text('data'),
  //       )
  //     ],
  //   );
  // }

  const ChatTile({Key key, @required this.chat, @required this.onTap, @required
  this.onTapAvatar})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: InkWell(
            onTap: onTapAvatar,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(chat.avatar),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: onTap,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Row(children: <Widget>[
                    Expanded(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              chat.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(chat.messages.last.text)
                          ]),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(DateFormat('dd/MM/yyyy').format(chat.date),
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: chat.unreadMessageCounter > 0
                                          ? Theme.of(context).primaryColor
                                          : Colors.black38)),
                              SizedBox(
                                height: 5,
                              ),
                              chat.unreadMessageCounter > 0
                                  ? CircleAvatar(
                                      radius: 12,
                                      backgroundColor:
                                          Theme.of(context).primaryColor,
                                      child: Text(
                                        chat.unreadMessageCounter.toString(),
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                      ))
                                  : Container()
                            ]),
                      ),
                    )
                  ]),
                ),
                Divider()
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
