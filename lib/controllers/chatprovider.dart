import 'package:crm_mobile/model/chatmodel.dart';
import 'package:flutter/material.dart';

class ChatProvider with ChangeNotifier {
  List<ChatModel> _chatsList = [
    ChatModel(
        lastchatName: "Athalia",
        firstchatName: "Putria",
        chatImg: 'assets/sophia.jpg',
        message: "Hello primary Message",
        messageCount: 21,
        isActive: true,
        messageTime: "20m ago"),
         ChatModel(
        lastchatName: "Grant",
        firstchatName: "Putellas",
        chatImg: 'assets/sophia.jpg',
        message: "Hello primary Message",
        messageCount: 21,
        isActive: false,
        messageTime: "20m ago"),
  ];

  List<ChatModel> get chatsList => _chatsList;
  int get chatLength => _chatsList.length;

  set chatsList(List<ChatModel> value) {
    _chatsList = value;
  }
}
