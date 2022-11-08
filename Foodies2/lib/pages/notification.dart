/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/styles.dart' as style;

class Notificasions extends StatefulWidget {
  static const String id = 'Notificasions';

  const Notificasions({Key? key}) : super(key: key);

  @override
  _NotificasionsState createState() => _NotificasionsState();
}

class _NotificasionsState extends State<Notificasions> {
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
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        title: const Text(
          "Notifications",
          style: TextStyle(color: Colors.black, fontFamily: 'semibold'),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
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
        onTap: () {},
        child: Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(5),
              decoration: buildIconButton(),
              child: const Icon(
                Icons.notifications_outlined,
                color: Colors.white,
              ),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text('50% Discount on Cheese Pizza ',
                      style: TextStyle(fontFamily: "medium", fontSize: 14)),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text('8.20 AM',
                        style: TextStyle(color: Colors.grey, fontSize: 12)),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  textButton() {
    return const TextStyle(
        color: Colors.white, fontFamily: 'semi-bold', fontSize: 12);
  }

  buildIconButton() {
    return const BoxDecoration(
        color: style.appColor,
        borderRadius: BorderRadius.all(Radius.circular(100)));
  }
}
