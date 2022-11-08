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
import 'package:salon1/Pages/ChatPage.dart';
import 'package:salon1/Pages/VideoCallPage.dart';
import 'package:salon1/Utilities/ConstancePage.dart' as style;

class MessagePage extends StatefulWidget {
  MessagePage({Key? key}) : super(key: key);

  static const String PageId = 'MessagePage';

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  late int segmentedControlValue = 0;

  final Map<int, Widget> myTabs = const <int, Widget>{
    0: Text(
      "Messages",
      style: TextStyle(fontFamily: 'bold'),
    ),
    1: Text(
      "Chat",
      style: TextStyle(fontFamily: 'bold'),
    ),
  };
  @override
  void initState() {
    super.initState();
    segmentedControlValue = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: Column(
        children: [
          segmentedControl(),
        ],
      ),
    );
  }

  Widget segmentedControl() {
    return Container(
      width: double.infinity,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: CupertinoSlidingSegmentedControl(
            thumbColor: style.appColor,
            groupValue: segmentedControlValue,
            backgroundColor: Colors.transparent,
            children: myTabs,
            onValueChanged: (i) {
              this.setState(() {
                segmentedControlValue = i.hashCode;
              });
              print(i.hashCode);
            }),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              searchbar('Search..'),
            ],
          ),
          segmentedControlValue == 0
              ? Column(
                  children: [
                    _buildContent1('Rahul Jograna', 'Hi there..', 'Now',
                        Image.asset('assets/images/p1.jpg')),
                    _buildContent1('Jaydeep Hirani', 'Hello..', 'Yesterday',
                        Image.asset('assets/images/p5.jpg')),
                    _buildContent1('Hardik Rajput', 'How are you buddy..',
                        'Yesterday', Image.asset('assets/images/p4.jpg')),
                    _buildContent1('Shailly Acharya', 'Nice..', 'Yesterday',
                        Image.asset('assets/images/p6.jpg')),
                    _buildContent1('Mausam Chavda', 'Fine..', 'Yesterday',
                        Image.asset('assets/images/p1.jpg')),
                    _buildContent1('Darshan Vala', 'Wow so cut..', 'Yesterday',
                        Image.asset('assets/images/p3.jpg')),
                    _buildContent1('Devang Rathod', 'Where You Now..',
                        'Yesterday', Image.asset('assets/images/p6.jpg')),
                  ],
                )
              : segmentedControlValue == 1
                  ? Column(
                      children: [
                        _buildContent2(
                            'Hardik Rajput',
                            'How are you buddy..',
                            'Yesterday',
                            Image.asset('assets/images/p4.jpg'), () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoCallPage()));
                        }, //route1
                            () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoCallPage()));
                        }), //route2

                        _buildContent2('Rahul Jograna', 'Hi there..', 'Now',
                            Image.asset('assets/images/p1.jpg'), () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoCallPage()));
                        }, //route1
                            () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoCallPage()));
                        }), //route2
                        _buildContent2('Jaydeep Hirani', 'Hello..', 'Yesterday',
                            Image.asset('assets/images/p5.jpg'), () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoCallPage()));
                        }, //route1
                            () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoCallPage()));
                        }), //route2
                        _buildContent2(
                            'Hardik Rajput',
                            'How are you buddy..',
                            'Yesterday',
                            Image.asset('assets/images/p4.jpg'), () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoCallPage()));
                        }, //route1
                            () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoCallPage()));
                        }), //route2
                        _buildContent2('Shailly Acharya', 'Nice..', 'Yesterday',
                            Image.asset('assets/images/p6.jpg'), () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoCallPage()));
                        }, //route1
                            () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoCallPage()));
                        }), //route2
                        _buildContent2('Mausam Chavda', 'Fine..', 'Yesterday',
                            Image.asset('assets/images/p1.jpg'), () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoCallPage()));
                        }, //route1
                            () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoCallPage()));
                        }), //route2
                        _buildContent2(
                            'Darshan Vala',
                            'Wow so cut..',
                            'Yesterday',
                            Image.asset('assets/images/p3.jpg'), () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoCallPage()));
                        }, //route1
                            () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoCallPage()));
                        }), //route2
                        _buildContent2(
                            'Devang Rathod',
                            'Where You Now..',
                            'Yesterday',
                            Image.asset('assets/images/p6.jpg'), () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoCallPage()));
                        }, //route1
                            () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => VideoCallPage()));
                        }), //route2
                      ],
                    )
                  : Container()
        ],
      ),
    );
  }

  Widget searchbar(hintText) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Container(
          height: 40,
          child: TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: Icon(Icons.search),
              hintStyle: TextStyle(color: Colors.grey.shade600),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
              filled: true,
              fillColor: Colors.grey.shade300,
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContent1(txt1, txt2, txt3, img) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ChatPage()));
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.0, color: Colors.grey.shade600),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // First Container
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(25),
                            child: FittedBox(
                              child: img,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('$txt1',
                                  style: TextStyle(
                                      fontFamily: 'semibold', fontSize: 15.0)),
                              Text('$txt2',
                                  style: TextStyle(
                                      fontFamily: 'semibold',
                                      fontSize: 10.0,
                                      color: Colors.grey)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // badge column
                    Column(
                      children: [
                        Text(
                          '$txt3',
                          style: TextStyle(
                              fontFamily: 'semibold',
                              fontSize: 10.0,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent2(txt1, txt2, txt3, img, route1, route2) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 1.0, color: Colors.grey.shade600),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // First Container
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(25),
                          child: FittedBox(
                            child: img,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('$txt1',
                                style: TextStyle(
                                    fontFamily: 'semibold', fontSize: 15.0)),
                            Text('$txt2',
                                style: TextStyle(
                                    fontFamily: 'semibold',
                                    fontSize: 10.0,
                                    color: Colors.grey)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // badge column
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.blueAccent,
                              child: IconButton(
                                icon: Icon(
                                  Icons.videocam,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                onPressed: route1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.greenAccent,
                              child: IconButton(
                                icon: Icon(
                                  Icons.call,
                                  color: Colors.white,
                                  size: 25,
                                ),
                                onPressed: route2,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
