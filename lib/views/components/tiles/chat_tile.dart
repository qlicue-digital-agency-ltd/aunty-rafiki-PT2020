import 'package:aunty_rafiki/models/chat.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final Chat chat;
  final Function onTap;
  final Function onAvatarTap;

  const ChatTile(
      {Key key,
      @required this.chat,
      @required this.onTap,
      @required this.onAvatarTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: onAvatarTap,
              child: CircleAvatar(
                radius: 35,
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
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Text(
                            chat.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )),
                          Expanded(
                              child: Text(
                            chat.time,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: chat.messageCounter > 0
                                    ? Theme.of(context).primaryColor
                                    : Colors.black38),
                          ))
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Text(
                            chat.lastMessage,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )),
                          chat.messageCounter > 0
                              ? Chip(
                                  backgroundColor:
                                      Theme.of(context).primaryColor,
                                  label: Text(
                                    chat.messageCounter.toString(),
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )
                              : Container()
                        ],
                      ),
                    ),
                  ),
                  Divider()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
