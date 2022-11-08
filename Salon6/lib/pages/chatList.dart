/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon/helper/style.dart' as style;
import 'package:salon/pages/message.dart';

class chatList extends StatefulWidget {
  chatList({Key? key}) : super(key: key);

  static const String page_id = "Chat List";

  @override
  _chatListState createState() => _chatListState();
}

class _chatListState extends State<chatList> {
  String tabID = 'Message';
  Object get value => true;

  List<int> list = [1, 2, 3, 4, 5, 6, 7];
  List<int> group = [1, 2, 3, 4, 5, 6, 7];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '2 new message',
              style: style.boldText(),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey.shade300),
                    ),
                    child: SizedBox(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search_rounded,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.grey.shade300),
                    ),
                    child: SizedBox(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings_outlined,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSegment(),
            Container(
                margin: EdgeInsets.only(top: 20),
                child: tabID == 'Message'
                    ? Column(
                        children: <Widget>[messageContainer()],
                      )
                    : tabID == 'Active'
                        ? Column(
                            children: <Widget>[activeContainer()],
                          )
                        : tabID == 'Group'
                            ? Column(
                                children: <Widget>[groupContainer()],
                              )
                            : tabID == 'Calls'
                                ? Column(
                                    children: <Widget>[callContainer()],
                                  )
                                : Container())
          ],
        ),
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Container(
              height: 60,
              decoration: segmentDecoration('Message'),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    tabID = 'Message';
                  });
                },
                child: Text(
                  'Message',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'bold',
                    color: tabID == value ? Colors.black : Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 60,
              decoration: segmentDecoration('Active'),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    tabID = 'Active';
                  });
                },
                child: Text(
                  'Active',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'bold',
                    color: tabID == value ? Colors.black : Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 60,
              decoration: segmentDecoration('Group'),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    tabID = 'Group';
                  });
                },
                child: Text(
                  'Group',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'bold',
                    color: tabID == value ? Colors.black : Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 60,
              decoration: segmentDecoration('Calls'),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    tabID = 'Calls';
                  });
                },
                child: Text(
                  'Calls',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'bold',
                    color: tabID == value ? Colors.black : Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  segmentDecoration(value) {
    return BoxDecoration(
      color: tabID == value ? Colors.black : Colors.white,
      border: Border(
        bottom: BorderSide(
          color: tabID == value ? Colors.black : Colors.white,
          width: 1.0,
        ),
      ),
    );
  }

  Widget messageContainer() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          for (var i in list) messageList(),
        ],
      ),
    );
  }

  Widget activeContainer() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          for (var i in list) messageList(),
        ],
      ),
    );
  }

  Widget groupContainer() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      margin: EdgeInsets.only(bottom: 20),
      child: Container(
        child: Column(
          children: [
            for (var i in group) groupList(),
          ],
        ),
      ),
    );
  }

  Widget messageList() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 26),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, new MaterialPageRoute(builder: (context) => message()));
        },
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/g1.jpg'),
              radius: 28,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jaydeep Hirani',
                      style: style.headText(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3),
                      child: Text(
                        'Hello how can i help you',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  '10:30',
                  style: style.simpleText(),
                ),
                SizedBox(
                  height: 3,
                ),
                Container(
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.red[400],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(8),
                    child: FittedBox(
                      child: Text(
                        '10',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget groupList() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 36),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'The Galleria Hair Salon',
                style: style.headText(),
              ),
              Icon(
                Icons.more_horiz_outlined,
                color: Colors.grey,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.red[400],
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(8),
                  child: FittedBox(
                    child: Text(
                      '10',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Which kind of package & offers provide ?',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontFamily: 'medium',
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '5 min ago',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontFamily: 'medium',
                ),
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/g1.jpg'),
                radius: 15,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget callContainer() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          for (var i in list) callList(),
        ],
      ),
    );
  }

  Widget callList() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 26),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, new MaterialPageRoute(builder: (context) => message()));
        },
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/g1.jpg'),
              radius: 28,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jaydeep Hirani',
                      style: style.headText(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3),
                      child: Text(
                        'Hello how can i help you',
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Icon(Icons.call_outlined)
          ],
        ),
      ),
    );
  }
}
