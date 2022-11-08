/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:social_network/pages/call.dart';
import 'package:social_network/pages/videocall.dart';
import '../components/styles.dart';

class Chat extends StatefulWidget {
  static const String id = 'Chat';

  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List<Item> messages = <Item>[
    const Item('left',
        'long established fact that a reader will be distracted by the readable content of a page when looking at its layout. '),
    const Item('right',
        'The point of using  a more-or-less normal distribution of letters, as'),
    const Item('left', 'Lorem Ipsum is that it has'),
    const Item('right',
        'The point of using  a more-or-less normal distribution of letters'),
    const Item(
        'left', 'ablished fact that a reader will be distracted by the re'),
    const Item('right', 'done'),
    const Item('right',
        'The point of using  a more-or-less normal distribution of letters'),
    const Item(
        'left', 'ablished fact that a reader will be distracted by the re'),
    const Item('right', 'done'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        elevation: 0,
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.black45),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/32.jpg'),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                blackBoldText('John Dumbldore'),
                greyTextSmall('Owner Efcee')
              ],
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CallScreen()));
            },
            icon: Icon(Icons.phone),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const VideoCall()));
            },
            icon: Icon(Icons.videocam),
          ),
        ],
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildBottom(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: messages.map((Item msg) {
            return msg.side == 'left'
                ? Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    width: MediaQuery.of(context).size.width - 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/35.jpg'),
                          radius: 14,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                padding: const EdgeInsets.all(16),
                                decoration: const BoxDecoration(
                                    color: backgroundColor,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(16),
                                      topLeft: Radius.circular(16),
                                      bottomRight: Radius.circular(16),
                                    )),
                                child: Text(
                                  msg.msg,
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 16, top: 6),
                                child: smallText('10.34pm'),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        width: MediaQuery.of(context).size.width - 120,
                        child: Column(
                          children: [
                            Row(
                              children: <Widget>[
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        padding: const EdgeInsets.all(16),
                                        decoration: const BoxDecoration(
                                          color: appColorBtn,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(16),
                                            topLeft: Radius.circular(16),
                                            bottomLeft: Radius.circular(16),
                                          ),
                                        ),
                                        child: Text(
                                          msg.msg,
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 14),
                                        ),
                                      ),
                                      Container(
                                          padding: EdgeInsets.only(
                                              right: 10, top: 6),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              smallText('10.34pm'),
                                              SizedBox(width: 4),
                                              Icon(
                                                Icons.check,
                                                size: 16,
                                                color: appColorBtn,
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
          }).toList(),
        ));
  }

  Widget _buildBottom() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      color: appColor2,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50,
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: const BorderRadius.all(
                  Radius.circular(38.0),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: const Offset(0, 2),
                      blurRadius: 8.0),
                ],
              ),
              child: TextField(
                onChanged: (String txt) {},
                style: const TextStyle(fontSize: 18, color: Colors.white),
                cursorColor: appColor,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Write message',
                    hintStyle: TextStyle(color: Colors.white70, fontSize: 12)),
              ),
            ),
          ),
          SizedBox(width: 8),
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: appColorBtn,
              radius: 24,
              child: Icon(Icons.near_me, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class Item {
  const Item(this.side, this.msg);
  final String side;
  final String msg;
}
