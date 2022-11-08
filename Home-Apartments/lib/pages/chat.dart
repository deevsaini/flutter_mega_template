/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
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
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 70,
        elevation: 0,
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.black45),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                appColorText('John Dumbldore'),
                greyTextSmall('Owner Efcee')
              ],
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.phone),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam),
          ),
        ],
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildFooter(),
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
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile.jpg'),
                          radius: 14,
                        ),
                        Flexible(
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            padding: const EdgeInsets.all(16),
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(26),
                                  topLeft: Radius.circular(26),
                                  bottomRight: Radius.circular(26),
                                )),
                            child: Text(
                              msg.msg,
                              style: const TextStyle(fontSize: 14),
                            ),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Flexible(
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                padding: const EdgeInsets.all(16),
                                decoration: const BoxDecoration(
                                  color: appColor,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(26),
                                    topLeft: Radius.circular(26),
                                    bottomLeft: Radius.circular(26),
                                  ),
                                ),
                                child: Text(
                                  msg.msg,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                            ),
                            Icon(Icons.check_circle, color: Colors.green)
                          ],
                        ),
                      ),
                    ],
                  );
          }).toList(),
        ));
  }

  Widget _buildFooter() {
    return Container(
      color: Colors.white,
      height: 65,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: <Widget>[
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Type Here..'),
            ),
          ),
          CircleAvatar(
            radius: 20,
            backgroundColor: appColor2,
            child: IconButton(
              icon: Icon(
                Icons.near_me,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ),
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
