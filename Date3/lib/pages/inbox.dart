/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:date/pages/chat.dart';
import 'package:date/pages/home.dart';
import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  static const String id = 'inbox';

  const Inbox({Key? key}) : super(key: key);

  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  List<String> users = [
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg',
    'assets/images/6.jpg',
    'assets/images/7.jpg',
    'assets/images/8.jpg',
    'assets/images/1.jpg',
  ];

  final List _elements = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFf66d06),
        centerTitle: true,
        title: const Text(
          'Inbox',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(context) {
    return SingleChildScrollView(
      child: ListView(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        children: _elements.map((e) {
          return _buildChatModule(context);
        }).toList(),
      ),
    );
  }

  Widget _buildChatModule(context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Chat()));
        },
        child: Row(
          children: <Widget>[
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/2.jpg'),
              radius: 25,
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text('John Doe', style: TextStyle(fontFamily: "semi-bold")),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('Hello, this is testing',
                        style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
            )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 20,
                  width: 20,
                  decoration: buildIconButton(),
                  child: const Text('+5',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "semi-bold",
                        fontSize: 12,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text('10 min', style: TextStyle(color: Colors.grey)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  buildIconButton() {
    return const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(Radius.circular(50)));
  }
}
