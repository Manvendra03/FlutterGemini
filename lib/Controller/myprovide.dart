import 'package:flutter/material.dart';

enum UserType { User, Ai }

class Message extends ChangeNotifier {
  static List<Message> messageList = [];

  final UserType userType;
  final String msg;

  Message({required this.userType, required this.msg});

  void addMessageToList(Message temp) {
    messageList.add(temp);
    ChangeNotifier();
  }
}
