/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class MessagesPage extends StatefulWidget {
    MessagesPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Messages';

    @override
    State<MessagesPage> createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {

    List<Item> messages = <Item> [
        Item('assets/images/user1.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'right', '8.10am'),
        Item('assets/images/user2.jpg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.', 'left', '8.12am'),
        Item('assets/images/user1.jpg', 'When an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'right', '9.15am'),
        Item('assets/images/user2.jpg', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'left', '9.15am'),
        Item('assets/images/user1.jpg', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.', 'right', '10.10am'),
        Item('assets/images/user2.jpg', 'And more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'left', '10.15am'),

    ];

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
                title: Text('Mario Vaughn'),
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
            bottomNavigationBar: _footerContainer(),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: ListView(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                children: List.generate(messages.length, (index) {
                    return messages[index].side == 'left' ? _leftMessage(messages[index]) : _rightMessage(messages[index]);
                }),
            ),
        );
    }

    Widget _leftMessage(message) {
        return Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
                children: [
                    CircleAvatar(
                        backgroundImage: AssetImage(message.img),
                        radius: 20,
                    ),
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: (Colors.grey[300])!,
                                    width: 1
                                ),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(25)
                                )
                            ),
                            child: Text(message.text),
                        )
                    ),
                    Text(message.time,
                        style: TextStyle(
                            color: style.appGrey
                        ),
                    )
                ],
            ),
        );
    }

    Widget _rightMessage(message) {
        return Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
                children: [
                    Text(message.time,
                        style: TextStyle(
                            color: style.appGrey
                        ),
                    ),
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                                color: style.appColor,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(25)
                                )
                            ),
                            child: Text(message.text,
                                style: TextStyle(
                                    color: Colors.white
                                ),
                            ),
                        )
                    ),
                    CircleAvatar(
                        backgroundImage: AssetImage(message.img),
                        radius: 20,
                    ),
                ],
            ),
        );
    }

    Widget _footerContainer() {
        return Container(
            padding: EdgeInsets.only(left: 16, right: 16),
            width: double.infinity,
            height: 60,
            child: Row(
                children: <Widget>[
                    InkWell(
                        onTap: () {},
                        child: Icon(Icons.sentiment_very_satisfied, color: style.appGrey),
                    ),
                    Expanded(
                        child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Type Something..',
                                filled: true,
                                fillColor: Colors.grey[100],
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                            ),
                        ),
                    ),
                    InkWell(
                        onTap: () {},
                        child: Icon(Icons.send, color: style.appGrey),
                    ),
                ],
            ),
        );
    }

}


class Item {
    Item(this.img, this.text, this.side, this.time);
    final String img;
    final String text;
    final String side;
    final String time;
}