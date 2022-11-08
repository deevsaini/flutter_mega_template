/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quize/helper/style.dart';
import 'package:quize/pages/tournament.dart';

class chooseCategory extends StatefulWidget {
  chooseCategory({Key? key}) : super(key: key);

  static const String page_id = "Choose Container";

  @override
  _chooseCategoryState createState() => _chooseCategoryState();
}

class _chooseCategoryState extends State<chooseCategory> {
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
            overflow: Overflow.visible,
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
                        'Choose Category',
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
      padding: const EdgeInsets.only(right: 10, left: 10, top: 10, bottom: 10),
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
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  iconContainer(FontAwesomeIcons.rocket, 'Science'),
                  SizedBox(
                    width: 5,
                  ),
                  iconContainer(FontAwesomeIcons.earthAfrica, 'Geography'),
                  SizedBox(
                    width: 5,
                  ),
                  iconContainer(FontAwesomeIcons.tv, 'Technology'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  iconContainer(FontAwesomeIcons.plane, 'Travel'),
                  SizedBox(
                    width: 5,
                  ),
                  iconContainer(FontAwesomeIcons.headphones, 'Music'),
                  SizedBox(
                    width: 5,
                  ),
                  iconContainer(FontAwesomeIcons.palette, 'Art'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  iconContainer(FontAwesomeIcons.squareRootVariable, 'Math'),
                  SizedBox(
                    width: 5,
                  ),
                  iconContainer(FontAwesomeIcons.volleyball, 'Sport'),
                  SizedBox(
                    width: 5,
                  ),
                  iconContainer(FontAwesomeIcons.bookOpen, 'History'),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              simpleButton(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => tournament()));
              }, 'Next')
            ],
          ),
        ),
      ),
    );
  }

  Widget iconContainer(icon, text) {
    return Container(
      height: 100,
      width: 90,
      decoration: BoxDecoration(
        color: Color(0xFFE2E4FD),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300),
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
                BoxShadow(color: Colors.grey.shade300),
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
