/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food1_flutter_marketplace/pages/editProfilePage.dart';
import 'package:food1_flutter_marketplace/utilities/constancePage.dart'
    as style;

class favoritePage extends StatefulWidget {
  favoritePage({Key? key}) : super(key: key);

  static const String pageId = 'favoritePage';

  @override
  State<favoritePage> createState() => _favoritePageState();
}

class _favoritePageState extends State<favoritePage> {
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
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
            Text(
              'Favorites',
              style: TextStyle(fontFamily: 'bold', fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            buildCategories(
                Icon(
                  Icons.app_registration_rounded,
                  color: Colors.grey,
                ),
                'All'),
            Center(
              child: Wrap(
                children: [
                  _buildCategoriesNearyou(
                      'Egg Salad', 'assets/images/2.jpg', '\$ 20'),
                  _buildCategoriesNearyou(
                      'Egg Salad', 'assets/images/4.jpg', '\$ 20'),
                  _buildCategoriesNearyou(
                      'Egg Salad', 'assets/images/3.jpg', '\$ 20'),
                  _buildCategoriesNearyou(
                      'Egg Salad', 'assets/images/5.jpg', '\$ 20'),
                  _buildCategoriesNearyou(
                      'Egg Salad', 'assets/images/6.jpg', '\$ 20'),
                  _buildCategoriesNearyou(
                      'Egg Salad', 'assets/images/7.jpg', '\$ 20'),
                  _buildCategoriesNearyou(
                      'Egg Salad', 'assets/images/6.jpg', '\$ 20'),
                  _buildCategoriesNearyou(
                      'Egg Salad', 'assets/images/2.jpg', '\$ 20'),
                  _buildCategoriesNearyou(
                      'Egg Salad', 'assets/images/3.jpg', '\$ 20'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoriesNearyou(txt, img, txt2) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: InkWell(
        onTap: () {
          // Navigator.push(
          //     context, MaterialPageRoute(builder: (context) => productsPage()));
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new AssetImage('$img'),
                ),
              ),
            ),
            Container(
              width: 160,
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$txt',
                          style: TextStyle(
                              fontFamily: 'bold',
                              fontSize: 15,
                              color: style.appColor),
                        ),
                        Text(
                          '$txt2',
                          style: TextStyle(
                              fontFamily: 'bold',
                              fontSize: 15,
                              color: style.appColor),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: -15,
                    child: InkWell(
                      onTap: () {
                        //
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                            border: Border.all(color: Colors.white, width: 4),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color(0xFFFF9E25),
                                Color(0xFFFF7F30),
                              ],
                            )),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 17,
                        ),
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

  Widget buildCategories(icn, txt) {
    List<int> text = [1, 2, 3, 4, 5, 6, 7];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
        child: Row(
          children: [
            for (var i in text)
              Column(
                children: [
                  Container(
                    height: 40.0,
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    margin: EdgeInsets.only(right: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.grey.shade100,
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          icn,
                          Text(
                            '$txt',
                            style: TextStyle(
                                fontFamily: 'semibold', color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
