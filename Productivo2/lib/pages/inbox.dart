/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:iotask/pages/messages.dart';
import '../helper/style.dart' as style;

class InboxPage extends StatefulWidget {
    InboxPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Inbox';

    @override
    State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {

    List<Item> chats = <Item> [
        Item('assets/images/user1.jpg', 'Nicholas Gordon', '10m'),
        Item('assets/images/user2.jpg', 'Douglas Payne', '25m'),
        Item('assets/images/user3.jpg', 'Daniel Holland', '1hr'),
        Item('assets/images/user4.jpg', 'Nicholas Gordon', '2hr'),
        Item('assets/images/user5.jpg', 'Douglas Payne', '12hr'),
        Item('assets/images/user6.jpg', 'Daniel Holland', '1d'),
    ];

    bool haveEmail = true;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBackColor,
            appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu, color: style.appGrey)
                ),
                title: Text('Inbox'),
                centerTitle: false,
                titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'medium'
                ),
                actions: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_horiz, color: style.appGrey)
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/user.jpg'),
                    ),
                    SizedBox(width: 16),
                ],
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return haveEmail ? _haveEmail() : _noEmail();
    }

    Widget _haveEmail() {
        return SingleChildScrollView(
            child: Column(
                children: [
                    TextField(
                        decoration: InputDecoration(
                            hintText: 'Type to search your conversation',
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            filled: true,
                            fillColor: Colors.grey[100],
                            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                            prefixIcon: Icon(Icons.search_outlined)
                        ),
                    ),
                    ListView(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        children: List.generate(chats.length, (index) {
                            return _buildSingleChat(chats[index]);
                        }),
                    )
                ],
            )
        );
    }

    Widget _noEmail() {
      return Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16),
          margin: EdgeInsets.all(16),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  Image.asset('assets/images/no_email2.png'),
                  SizedBox(height: 20),
                  Text('No email found?',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'medium'
                      ),
                  ),
                  SizedBox(height: 8),
                  Text('Try to add more contacts from your personal account or compose email to someone',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14
                      ),
                  ),
                  Container(
                      width: 250,
                      margin: EdgeInsets.only(top: 100, bottom: 20),
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text('New Email'),
                          style: style.simpleButton(),
                      ),
                  ),
              ],
          )
      );
    }

    greyTitle() {
        return TextStyle(
            fontFamily: 'medium',
            fontSize: 16,
            color: style.appGrey
        );
    }

    Widget _buildSingleChat(chat) {
        return InkWell(
            onTap: () {
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => new MessagesPage())
                );
            },
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: (Colors.grey[300])!
                      )
                  )
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage(chat.img),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child: Text(chat.name,
                                    style: TextStyle(color: style.appGrey),
                                  )
                              ),
                              Text(chat.time,
                                style: TextStyle(color: style.appGrey),
                              ),
                            ],
                          ),
                          SizedBox(height: 4),
                          Text('About our new project',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'semi-bold'
                            ),
                          ),
                          SizedBox(height: 4),
                          Text('Deciphering Marketing Lingo For Small Business Owners'),
                        ],
                      )
                  ),
                ],
              ),
            ),
        );
    }

}

class Item {
    Item(this.img, this.name, this.time);
    final String img;
    final String name;
    final String time;
}