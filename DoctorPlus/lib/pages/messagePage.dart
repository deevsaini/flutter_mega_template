/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:doctor/pages/chatPage.dart';
import 'package:flutter/material.dart';

class messagePage extends StatefulWidget {
  messagePage({Key? key}) : super(key: key);

  static const String pageId = 'messagePage';

  @override
  State<messagePage> createState() => _messagePageState();
}

class _messagePageState extends State<messagePage> {
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
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.white,
      flexibleSpace: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Message',
              style: TextStyle(
                  fontSize: 20, fontFamily: 'bold', color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  _buildContent(
                    AssetImage('assets/images/1.jpg'),
                    'Dr.Hardik Rajput',
                    '10.20 PM',
                    ' It was popularised in the 1960s with the release of Letraset.',
                  ),
                  _buildContent(
                    AssetImage('assets/images/2.jpg'),
                    'Dr.Rahul Jograna',
                    '10.20 PM',
                    ' It was popularised in the 1960s with the release.',
                  ),
                  _buildContent(
                    AssetImage('assets/images/3.jpg'),
                    'Dr.Hirani',
                    '10.20 PM',
                    ' It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.',
                  ),
                  _buildContent(
                    AssetImage('assets/images/1.jpg'),
                    'Dr.Hardik Rajput',
                    '10.20 PM',
                    ' It was popularised in the 1960s with the release of Letraset.',
                  ),
                  _buildContent(
                    AssetImage('assets/images/2.jpg'),
                    'Dr.Rahul Jograna',
                    '10.20 PM',
                    ' It was popularised in the 1960s with the release.',
                  ),
                  _buildContent(
                    AssetImage('assets/images/3.jpg'),
                    'Dr.Hirani',
                    '10.20 PM',
                    ' It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.',
                  ),
                  _buildContent(
                    AssetImage('assets/images/1.jpg'),
                    'Dr.Hardik Rajput',
                    '10.20 PM',
                    ' It was popularised in the 1960s with the release of Letraset.',
                  ),
                  _buildContent(
                    AssetImage('assets/images/2.jpg'),
                    'Dr.Rahul Jograna',
                    '10.20 PM',
                    ' It was popularised in the 1960s with the release.',
                  ),
                  _buildContent(
                    AssetImage('assets/images/3.jpg'),
                    'Dr.Hirani',
                    '10.20 PM',
                    ' It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(img, txt1, txt2, txt3) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => chatPage()));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(image: img, fit: BoxFit.cover),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 150,
                                child: Text(
                                  '$txt1',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontFamily: 'bold', fontSize: 15),
                                ),
                              ),
                              Text(
                                '$txt2',
                                overflow: TextOverflow.ellipsis,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                            ],
                          ),
                          Wrap(
                            children: [
                              Text(
                                '$txt3',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
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
}
