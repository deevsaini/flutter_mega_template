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
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quize/pages/addFriends.dart';
import 'package:quize/pages/chooseCategory.dart';
import 'package:quize/pages/notification.dart';

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  static const String page_id = "Home";

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
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
                      Icon(
                        Icons.dehaze_outlined,
                        color: Colors.white,
                      ),
                      Text(
                        'Quizzy',
                        style: whiteHeadText(),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => notification()));
                        },
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: _buildMenu(),
                ),
              ),
            ],
          ),
          _bottomContainer()
        ],
      ),
    );
  }

  Widget _buildMenu() {
    return Padding(
      padding: const EdgeInsets.only(right: 30, left: 30),
      child: Container(
        width: 350,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade300, blurRadius: 5),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.star,
                    color: appColor,
                    size: 40,
                  ),
                  Text(
                    'POINT',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '1025',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.language,
                    color: appColor,
                    size: 40,
                  ),
                  Text(
                    'WORLD RANK',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '565256',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.location_on,
                    color: appColor,
                    size: 40,
                  ),
                  Text(
                    'LOCAL RANK',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '65256',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomContainer() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
                style: headText(),
              ),
              Text(
                'See all',
                style: TextStyle(color: appColor),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              iconContainer(FontAwesomeIcons.rocket, 'Science'),
              iconContainer(FontAwesomeIcons.earthAfrica, 'Geography'),
              iconContainer(FontAwesomeIcons.tv, 'Technology'),
              iconContainer(FontAwesomeIcons.plane, 'Travel'),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: Colors.grey.shade300, blurRadius: 5),
              ],
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person_add,
                      color: appColor,
                      size: 35,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Play with friend',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'Invite your friends to start quiz with you',
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => addFriends()));
                      },
                      child: Text(
                        'Add a Friend',
                        style: TextStyle(color: appColor),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  appColor,
                  styleColor,
                ],
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: Colors.grey.shade300, blurRadius: 5),
              ],
            ),
            child: Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.trophy,
                  color: Colors.white,
                  size: 45,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Play Quiz Tournament',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'medium',
                              color: Colors.white),
                        ),
                        Text(
                          'Lorem Ipsum is simply dummy text of the printing ',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => chooseCategory()));
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget iconContainer(icon, text) {
    return Container(
      height: 100,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300, blurRadius: 5),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  appColor,
                  styleColor,
                ],
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: Colors.grey.shade300, blurRadius: 5),
              ],
            ),
            child: Center(
              child: FaIcon(
                icon,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
