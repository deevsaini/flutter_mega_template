/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:language_picker/language_picker.dart';
import 'package:prime_video_fluttermarketplace/pages/loginPage.dart';

class selectLanguagePage extends StatefulWidget {
  selectLanguagePage({Key? key}) : super(key: key);

  static const String pageId = 'selectLanguagePage';

  @override
  State<selectLanguagePage> createState() => _selectLanguagePageState();
}

class _selectLanguagePageState extends State<selectLanguagePage> {
  String tabName = '';
  bool showLanguages = false;

  List<Item> categories = <Item>[
    Item('App Language - EN'),
  ];
  List<String> cat = [
    'English',
    'Hindi',
    'Spanish',
    'Japanese',
    'Russian',
    'Bengali',
    'Telungu',
    'Marathi',
    'Turkey',
    'Korean',
    'French',
    'Tamil',
    'Italian',
    'German',
    'Gujrati',
    'Hakka',
    'Bhojpuri',
    'Kannada',
    'Polish',
    'Malayalam',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF252E39),
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Color(0xFF252E39),
      flexibleSpace: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.close,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => loginPage()));
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.blueGrey),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 15),
                    child: Text(
                      'Sign in',
                      style:
                          TextStyle(color: Colors.grey.shade300, fontSize: 17),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: categories.map((e) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            showLanguages = !showLanguages;
                          },
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(color: Colors.blueGrey),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.language,
                                      color: Colors.grey.shade300),
                                  SizedBox(width: 10),
                                  Text(
                                    e.name,
                                    style: TextStyle(
                                        color: Colors.grey.shade300,
                                        fontSize: 17),
                                  ),
                                ],
                              ),
                              if (showLanguages == false)
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.grey.shade300,
                                )
                              else if (showLanguages == true)
                                Container()
                            ],
                          ),
                        ),
                      ),
                    ),
                    showLanguages == true
                        ? Column(
                            children: cat.map((item) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF1B2530),
                                  border: Border(
                                    bottom: BorderSide(color: Colors.blueGrey),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 15),
                                  child: Row(
                                    children: [
                                      Text(
                                        item,
                                        style: TextStyle(
                                            color: Colors.grey.shade300,
                                            fontSize: 17),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }).toList(),
                          )
                        : SizedBox(height: 0)
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class Item {
  const Item(this.name);
  final String name;
}
