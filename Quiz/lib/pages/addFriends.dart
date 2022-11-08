/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:quize/helper/style.dart';

class addFriends extends StatefulWidget {
  addFriends({Key? key}) : super(key: key);

  static const String page_id = "Add Friends";

  @override
  _addFriendsState createState() => _addFriendsState();
}

class _addFriendsState extends State<addFriends> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      appColor,
                      styleColor,
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Add a Friends',
                        style: whiteHeadText(),
                      ),
                      Text('')
                    ],
                  ),
                ),
              ),
              Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 90),
                    child: _buildMenu(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMenu() {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade300, blurRadius: 2),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Find a friend',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              friendList(),
              friendList(),
              friendList(),
              friendList(),
              friendList(),
              friendList(),
              friendList(),
              friendList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget friendList() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: AssetImage('assets/images/man.jpg'),
                    fit: BoxFit.cover)),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Hardik Gohil',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            decoration: BoxDecoration(
                color: appColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              'Invite',
              style: TextStyle(color: styleColor),
            ),
          )
        ],
      ),
    );
  }
}
