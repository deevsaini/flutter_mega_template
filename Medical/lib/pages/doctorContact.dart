/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:medical/helper/style.dart';

class doctorContact extends StatefulWidget {
  doctorContact({Key? key}) : super(key: key);

  static const String page_id = "Doctor Contact";

  @override
  State<doctorContact> createState() => _doctorContactState();
}

class _doctorContactState extends State<doctorContact> {
  List<Item> messages = <Item>[
    Item('left', 'Hii how are you?'),
    Item('right', 'Yeah i am fine what about you ?'),
    Item('left', 'I have a strong pain and heartbum'),
    Item('right', 'how long have you hadthis pain?'),
    Item('left', 'For 2 months now '),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
      bottomNavigationBar: _buildFooter(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    color: Colors.white,
                    child: Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/image.jpg'),
                            fit: BoxFit.cover),
                      ),
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(top: 10),
                        height: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.filter_list_outlined,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'Dr.John Doe',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.notification_add_outlined,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.search_outlined,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 20,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.call_end_outlined,
                                    color: Colors.white,
                                  )),
                            ),
                            Container(
                              padding: EdgeInsets.only(bottom: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 20,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.volume_up_outlined,
                                          color: Colors.white,
                                        )),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.green,
                                    radius: 20,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.keyboard_voice,
                                          color: Colors.white,
                                        )),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 20,
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.chat_bubble_outline,
                                          color: Colors.blue,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: messages.map((Item msg) {
                    return msg.side == 'left'
                        ? Container(
                            margin: EdgeInsets.only(bottom: 16),
                            width: MediaQuery.of(context).size.width - 120,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/left.png'),
                                  radius: 20,
                                ),
                                Flexible(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(5),
                                              topRight: Radius.circular(5),
                                              bottomRight: Radius.circular(5),
                                            )),
                                        child: Text(
                                          msg.msg,
                                          style: TextStyle(fontSize: 14),
                                        ),
                                      ),
                                      // Container(
                                      //   margin:
                                      //       EdgeInsets.only(top: 8, left: 8),
                                      //   child: Text(
                                      //     '10:30 AM',
                                      //     style: TextStyle(
                                      //         fontSize: 12,
                                      //         color: Colors.black),
                                      //   ),
                                      // )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(bottom: 16),
                                    width:
                                        MediaQuery.of(context).size.width - 120,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Flexible(
                                          child: Container(
                                            margin: EdgeInsets.only(right: 10),
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  topRight: Radius.circular(15),
                                                  bottomLeft:
                                                      Radius.circular(5),
                                                )),
                                            child: Text(
                                              msg.msg,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14),
                                            ),
                                          ),
                                        ),
                                        CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'assets/images/right.png'),
                                          radius: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              // Container(
                              //   margin: EdgeInsets.only(right: 8),
                              //   child: Text(
                              //     '10:30 AM',
                              //     style: TextStyle(
                              //         fontSize: 12, color: Colors.black),
                              //   ),
                              // )
                            ],
                          );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooter() {
    return SingleChildScrollView(
      reverse: true,
      child: Container(
        decoration: BoxDecoration(
            border: Border(
          top: BorderSide(
            width: 1,
            color: Colors.grey.shade300,
          ),
        )),
        child: Container(
          height: 50,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          padding: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey.shade300),
            borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
          child: Row(
            children: <Widget>[
              InkWell(
                child: Container(
                  height: 35,
                  width: 35,
                  child: Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: 'Write a message...'),
                ),
              ),
              InkWell(
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                      color: appColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      )),
                  child: Icon(
                    Icons.near_me,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
    );
  }
}

class Item {
  const Item(this.side, this.msg);
  final String side;
  final String msg;
}
