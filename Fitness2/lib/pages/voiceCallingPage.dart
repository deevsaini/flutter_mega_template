/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:fitness_app/utilities/constancePage.dart' as style;

class voiceCallingPage extends StatefulWidget {
  voiceCallingPage({Key? key}) : super(key: key);

  static const String pageId = 'voiceCallingPage';

  @override
  State<voiceCallingPage> createState() => _voiceCallingPageState();
}

class _voiceCallingPageState extends State<voiceCallingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF1D1F2B),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        border: Border.all(
                          width: 2,
                          color: style.appColor,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(30),
                            child: FittedBox(
                              child: Image.asset('assets/images/1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Dr.Druid Smith',
                        style: TextStyle(
                            fontFamily: 'bold',
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                    Text(
                      '01:11',
                      style: TextStyle(fontSize: 15, color: style.appColor),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: [
                    GridView.count(
                      primary: false,
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      childAspectRatio: 100 / 100,
                      children: [
                        _buildCategoriesContent(
                            Icons.volume_mute_outlined, 'Mute'),
                        _buildCategoriesContent(Icons.pause_outlined, 'Hold'),
                        _buildCategoriesContent(Icons.notes_outlined, 'Notes'),
                        _buildCategoriesContent(
                            Icons.contact_phone_outlined, 'Contacts'),
                        _buildCategoriesContent(
                            Icons.dialpad_outlined, 'Dial Pad'),
                        _buildCategoriesContent(
                            Icons.speaker_outlined, 'Speaker'),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          _buildIcons1(),
                        ],
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoriesContent(icn, txt) {
    return Container(
      height: 70,
      width: 70,
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            child: Icon(
              icn,
              size: 25,
              color: Colors.white,
            ),
          ),
          Text(
            ' $txt',
            style: TextStyle(fontFamily: 'bold', color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget _buildIcons1() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: style.appColor,
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
        ),
        child: Icon(
          Icons.call,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
