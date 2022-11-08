/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/itemCategoriesPage.dart';
import 'package:foodies_fluttermarketplace_hardik/utilities/constance.dart'
    as style;

class itemPage extends StatefulWidget {
  itemPage({Key? key}) : super(key: key);

  static const String pageId = 'itemPage';

  @override
  State<itemPage> createState() => _itemPageState();
}

class _itemPageState extends State<itemPage> {
  late AnimationController controller;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(150),
      child: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        flexibleSpace: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
              ],
            ),
            Container(
                alignment: Alignment.topCenter,
                margin: EdgeInsets.all(10),
                child: LinearProgressIndicator(
                  value: 0.7,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'What kind of food are you \nlooking for ?',
                    style: TextStyle(fontFamily: 'bold', fontSize: 17),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade100,
                    child: Icon(
                      Icons.arrow_downward,
                      color: Colors.black,
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

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            _buildContent('American-casual'),
            _buildContent('American-formal'),
            _buildContent('Asian'),
            _buildContent('Helthy'),
            _buildContent('Italian'),
            _buildContent('Indian'),
            _buildContent('Vegetarian-Vegan'),
            _buildContent('Other'),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(txt) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey)),
      ),
      child: Row(children: [
        Checkbox(
          checkColor: Colors.white,
          activeColor: style.itemColor,
          value: isChecked,
          shape: CircleBorder(),
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Text('$txt'),
      ]),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 150,
              padding: EdgeInsets.symmetric(vertical: 13.0),
              decoration: style.borderButtonStyle2(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Back',
                    style: TextStyle(
                        color: Colors.black, fontSize: 17, fontFamily: 'bold'),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => itemCategoriesPage()));
            },
            child: Container(
              width: 150,
              padding: EdgeInsets.symmetric(vertical: 13.0),
              decoration: style.categoriesButtonStyle(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.white, fontSize: 17, fontFamily: 'bold'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
