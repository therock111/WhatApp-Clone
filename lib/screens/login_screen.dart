import 'package:flutter/material.dart';
import 'package:whatsappclone/customui/button_card.dart';
import 'package:whatsappclone/model/chat_model.dart';
import 'package:whatsappclone/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late ChatModel sourceChat;
  List<ChatModel> chatmodels = [
    ChatModel(
        name: "Dev Stack",
        isGroup: false,
        currentMessage: "Hi Everyone",
        time: "4:00",
        icon: "person.svg",
        id: 1,
        status: "yo1"),
    ChatModel(
        name: "Kishor",
        isGroup: false,
        currentMessage: "Hi Kishor",
        time: "13:00",
        icon: "person.svg",
        id: 2,
        status: "yo2"),

    ChatModel(
        name: "Collins",
        isGroup: false,
        currentMessage: "Hi Dev Stack",
        time: "8:00",
        icon: "person.svg",
        id: 3,
        status: "yo3"),

    ChatModel(
        name: "Balram Rathore",
        isGroup: false,
        currentMessage: "Hi Dev Stack",
        time: "2:00",
        icon: "person.svg",
        id: 4,
        status: "yo4"),

    // ChatModel(
    //   name: "NodeJs Group",
    //   isGroup: true,
    //   currentMessage: "New NodejS Post",
    //   time: "2:00",
    //   icon: "group.svg",
    // status: "yo4"

    // ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chatmodels.length,
          itemBuilder: (contex, index) => InkWell(
                onTap: () {
                  sourceChat = chatmodels.removeAt(index);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => HomeScrenn(
                                chatmodels: chatmodels,
                                sourchat: sourceChat,
                              )));
                },
                child: ButtonCard(
                  name: chatmodels[index].name,
                  icon: Icons.person,
                ),
              )),
    );
  }
}
