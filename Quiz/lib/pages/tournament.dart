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
import 'package:quize/pages/exam.dart';

class tournament extends StatefulWidget {
  tournament({Key? key}) : super(key: key);

  static const String page_id = "Tournament";

  @override
  State<tournament> createState() => _tournamentState();
}

class _tournamentState extends State<tournament> {
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
                        'Tournament',
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
              tournamentContainer(FontAwesomeIcons.rocket, 'Science'),
              tournamentContainer(FontAwesomeIcons.earthAfrica, 'Geography'),
              tournamentContainer(FontAwesomeIcons.tv, 'Technology'),
              tournamentContainer(FontAwesomeIcons.plane, 'Travel'),
              tournamentContainer(FontAwesomeIcons.headphones, 'Music'),
              tournamentContainer(FontAwesomeIcons.palette, 'Art'),
              tournamentContainer(FontAwesomeIcons.squareRootVariable, 'Math'),
              tournamentContainer(FontAwesomeIcons.volleyball, 'Sport'),
              tournamentContainer(FontAwesomeIcons.bookOpen, 'History'),
            ],
          ),
        ),
      ),
    );
  }

  Widget tournamentContainer(icon, text) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
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
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(fontSize: 16, fontFamily: 'medium'),
                  ),
                  Text('lorem impus dolor sit amet')
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            decoration: BoxDecoration(
                color: appColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10)),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => exam()));
              },
              child: Text(
                'Start',
                style: TextStyle(color: styleColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
