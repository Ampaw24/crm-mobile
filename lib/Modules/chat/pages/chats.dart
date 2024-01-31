import 'package:crm_mobile/Modules/chat/utilities/custom_heading.dart';
import 'package:crm_mobile/Specs/text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ionicons/ionicons.dart';
import 'package:provider/provider.dart';
import '../../../Screens/Home/home.dart';
import '../../../Specs/colors.dart';
import '../../../controllers/chatprovider.dart';
import 'chat_details.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    final chatReader = context.read<ChatProvider>();
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(180),
          child: AppBar(
            centerTitle: false,
            automaticallyImplyLeading: false,
         
            title: Container(
              margin: const EdgeInsets.only(top: 35,left: 10),
              child: const Text(
                "Chat",
                style: TextStyle(
                  fontSize: 23,
                  color: WHITE,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                 gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: <Color>[
      Color(0xff2980b9),
           Color(0xff6dd5fa),
          
        ],
      ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin:
                            const EdgeInsets.only(left: 15, top: 0, bottom: 30),
                        width: 280.55,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.3),
                            color: WHITE),
                        child: const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(" Search Chat"),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(right: 30, top: 0, bottom: 30),
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(11.3),
                            color: Colors.blue[50]),
                        child: Image.asset("assets/search.png",),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(color: CHATWHITE.withOpacity(0.7)),
                padding: const EdgeInsets.only(left: 15, top: 10),
                height: 110,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: chatReader.chatLength,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.only(right: 25),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    chatReader.chatsList[index].chatImg),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: Text(
                                textAlign: TextAlign.start,
                                chatReader.chatsList[index].firstchatName),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
              const CustomHeading(
                title: 'Direct Messages',
              ),
              ListView.builder(
                itemCount: chatReader.chatLength,
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Slidable(
                    dragStartBehavior: DragStartBehavior.down,
                    endActionPane: const ActionPane(
                      motion: ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: null,
                          backgroundColor: BLUE,
                          foregroundColor: Colors.white,
                          icon: Icons.push_pin,
                          label: 'Pin',
                        ),
                        SlidableAction(
                          onPressed: null,
                          backgroundColor: Colors.redAccent,
                          foregroundColor: Colors.white,
                          icon: Ionicons.trash_bin,
                          label: 'Delete',
                        ),
                      ],
                    ),
                    child: Material(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatDetails(),
                            ),
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withAlpha(50),
                                offset: const Offset(0, 0),
                                blurRadius: 5,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(chatReader
                                              .chatsList[index].chatImg),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  chatReader.chatsList[index].isActive
                                      ? Positioned(
                                          left: 37,
                                          top: 36,
                                          child: Container(
                                            height: 15,
                                            width: 15,
                                            decoration: const BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 1, 228, 8),
                                                shape: BoxShape.circle),
                                          ),
                                        )
                                      : Container()
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "${chatReader.chatsList[index].firstchatName}  ${chatReader.chatsList[index].lastchatName}",
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 5),
                                    ),
                                    Text(chatReader.chatsList[index].message,
                                        style: textStylespoppins(
                                            14, Colors.black, FontWeight.w300)),
                                    const Padding(
                                      padding: EdgeInsets.only(top: 5),
                                    ),
                                    Text(
                                      chatReader.chatsList[index].messageTime,
                                      style: const TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Column(
                                children: <Widget>[
                                  Text(chatReader.chatsList[index].messageTime),
                                  const Gap(10),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Container(
                                      height: 18,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: const Color.fromARGB(
                                            255, 228, 31, 1),
                                      ),
                                      child: Center(
                                        child: Text(
                                          chatReader
                                              .chatsList[index].messageCount
                                              .toString(),
                                          style: textStylespoppins(10,
                                              Colors.white, FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {},
          child: Container(
              padding: const EdgeInsets.all(15),
              child: Image.asset('assets/chaticon1.gif')),
        ));
  }
}
