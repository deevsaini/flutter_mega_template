/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:realestate/helper/style.dart';
import 'package:realestate/pages/agentDetail.dart';

class searchAgent extends StatefulWidget {
  searchAgent({Key? key}) : super(key: key);

  static const String page_id = "Search Agent";

  @override
  _searchAgentState createState() => _searchAgentState();
}

class _searchAgentState extends State<searchAgent> {
  int tabID = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      title: TextField(decoration: InputText('Search Agent')),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            _buildSegment(),
            searchList(),
            searchList(),
            searchList(),
            searchList(),
            searchList(),
            searchList(),
            searchList(),
            searchList(),
          ],
        ),
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  tabID = 1;
                });
              },
              child: Container(
                child: Text('Top', style: segmentText(1)),
              ),
            ),
            InkWell(
                onTap: () {
                  setState(() {
                    tabID = 2;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  decoration:
                      BoxDecoration(border: Border(left: BorderSide(width: 1))),
                  child: Text('People', style: segmentText(2)),
                )),
            InkWell(
                onTap: () {
                  setState(() {
                    tabID = 3;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  decoration:
                      BoxDecoration(border: Border(left: BorderSide(width: 1))),
                  child: Text('Place', style: segmentText(3)),
                )),
            InkWell(
                onTap: () {
                  setState(() {
                    tabID = 4;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  decoration:
                      BoxDecoration(border: Border(left: BorderSide(width: 1))),
                  child: Text('Suggestion', style: segmentText(4)),
                )),
          ],
        ),
      ),
    );
  }

  segmentText(val) {
    return TextStyle(
        fontSize: 16,
        fontFamily: tabID == val ? 'bold' : 'medium',
        color: tabID == val ? appColor : Colors.black54);
  }

  Widget searchList() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 20)],
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: SizedBox.fromSize(
              size: Size.fromRadius(40),
              child: FittedBox(
                child: Image(image: AssetImage('assets/images/profile.jpg')),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => agentDetail()));
                    },
                    child: Text(
                      'Johan Smith',
                      style: TextStyle(fontFamily: 'medium', fontSize: 16),
                    ),
                  ),
                  Text(
                    'Real Agent',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Row(
                    children: [
                      ratingContainer(),
                      Text('4.5',
                          style: TextStyle(fontSize: 12, color: Colors.grey))
                    ],
                  ),
                  Text(
                    '\$20.00/hr',
                    style: TextStyle(
                        fontFamily: 'medium', color: appColor, fontSize: 16),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: [
              Icon(
                Icons.radio_button_on,
                color: Colors.green,
              ),
              SizedBox(
                height: 5,
              ),
              Icon(Icons.favorite_outline),
              SizedBox(
                height: 5,
              ),
              Icon(
                Icons.play_circle,
                color: Colors.grey,
              )
            ],
          )
        ],
      ),
    );
  }
}
