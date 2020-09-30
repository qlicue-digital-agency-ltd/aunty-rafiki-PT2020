import 'package:aunty_rafiki/constants/routes/routes.dart';
import 'package:aunty_rafiki/providers/chat_provider.dart';

import 'package:aunty_rafiki/views/components/tiles/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _chatProvider = Provider.of<ChatProvider>(context);
    return ListView.builder(
        itemCount: _chatProvider.chatList.length,
        itemBuilder: (_, index) {
          return ChatTile(
              onTapAvatar: () {
                showDialog(
                    context: context,
                    builder: (newContext) {
                      _chatProvider.selectChat = _chatProvider.chatList[index];
                      return SimpleDialog(
                        contentPadding: EdgeInsets.all(0),
                        children: [
                          Column(
                            children: [
                              Container(
                                alignment: Alignment.topCenter,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        padding: EdgeInsets.all(10),
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color: Theme.of(context)
                                                .primaryColor
                                                .withOpacity(0.2)),
                                        child: Text(
                                          _chatProvider.chatList[index].name,
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                height: 300,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                          _chatProvider.chatList[index].avatar,
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                              _chatProvider.chatList[index].chatType ==
                                      'private'
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        IconButton(
                                          icon: Icon(Icons.message,
                                              color: Theme.of(context)
                                                  .primaryColor),
                                          onPressed: () => Navigator.pushNamed(
                                              context, chatRoomPage),
                                        ),
                                        IconButton(
                                            icon: Icon(Icons.phone,
                                                color: Theme.of(context)
                                                    .primaryColor),
                                            onPressed: () {}),
                                        IconButton(
                                            icon: Icon(Icons.info,
                                                color: Theme.of(context)
                                                    .primaryColor),
                                            onPressed: () {})
                                      ],
                                    )
                                  : Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        IconButton(
                                          icon: Icon(Icons.message,
                                              color: Theme.of(context)
                                                  .primaryColor),
                                          onPressed: () => Navigator.pushNamed(
                                              context, chatRoomPage),
                                        ),
                                        IconButton(
                                            icon: Icon(
                                              Icons.info,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            onPressed: () {})
                                      ],
                                    )
                            ],
                          ),
                        ],
                      );
                    });
              },
              chat: _chatProvider.chatList[index],
              onTap: () {
                _chatProvider.selectChat = _chatProvider.chatList[index];
                Navigator.pushNamed(context, chatRoomPage);
              });
        });
  }
}
