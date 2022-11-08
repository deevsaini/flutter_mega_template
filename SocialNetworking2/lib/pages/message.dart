/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:social_network/pages/chat.dart';
import '../components/styles.dart';

class Message extends StatefulWidget {
  static const String id = 'Message';

  const Message({Key? key}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  List<Item> photoList = <Item>[
    Item('assets/images/32.jpg'),
    Item('assets/images/31.jpg'),
    Item('assets/images/34.jpg'),
    Item('assets/images/36.jpg'),
    Item('assets/images/38.jpg'),
    Item('assets/images/35.jpg'),
    Item('assets/images/40.jpg'),
    Item('assets/images/39.jpg'),
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
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
          ],
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black54),
          elevation: 0,
          centerTitle: true,
          title: Text('Message',
              style: TextStyle(color: Colors.black, fontFamily: 'medium')),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildInbox(),
                _buildInbox(),
                _buildInbox(),
                _buildInbox(),
              ],
            ),
          ),
        ));
  }

  Widget _buildInbox() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Chat()));
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black26)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 8, top: 8, bottom: 10),
                  child: CircleAvatar(
                    backgroundColor: appColorBtn,
                    radius: 28,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/31.jpg'),
                      radius: 26,
                    ),
                  ),
                ),
                Positioned(
                    top: 12,
                    right: 2,
                    child: Container(
                      width: 10,
                      height: 10,
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(
                            Radius.circular(100),
                          ),
                          border: Border.all(width: 1, color: Colors.white)),
                    )),
              ],
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Vivian Richardson',
                    style: TextStyle(
                        color: appColorBtn, fontFamily: 'medium', fontSize: 14),
                  ),
                  SizedBox(height: 6),
                  greyText('Lets play cricket tournament lorem ipsum'),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                smallText('20 mins'),
                SizedBox(height: 10),
                CircleAvatar(
                  backgroundColor: appColorBtn,
                  radius: 10,
                  child: Text(
                    '6',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Item {
  const Item(this.img);
  final img;
}
