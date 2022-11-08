/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food1_flutter_marketplace/pages/favoritePage.dart';
import 'package:food1_flutter_marketplace/pages/filterPage.dart';
import 'package:food1_flutter_marketplace/pages/historyPage.dart';
import 'package:food1_flutter_marketplace/pages/productsDetailsPage.dart';
import 'package:food1_flutter_marketplace/pages/productsPage.dart';
import 'package:food1_flutter_marketplace/pages/sideMenuPage.dart';
import 'package:food1_flutter_marketplace/pages/thankYouPage.dart';
import 'package:food1_flutter_marketplace/utilities/constancePage.dart'
    as style;

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  static const String pageId = 'homePage';

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List<int> text = [1, 2, 3, 4, 5, 6, 7];
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: myDrawer(),
        key: _scaffoldKey,
        drawerEnableOpenDragGesture: false,
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  Widget myDrawer() {
    return Drawer(
      child: sidemenuPage(),
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => _scaffoldKey.currentState?.openDrawer(),
              icon: Icon(Icons.menu),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello Ammy !',
                    style: TextStyle(fontFamily: 'bold'),
                  ),
                  Text(
                    'Hungry Today ? Find Your Meals',
                    style: TextStyle(fontFamily: 'bold', fontSize: 18),
                  ),
                ],
              ),
            ),
            searchbar('Search for meal..'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  children: [
                    _buildSpecialist(
                        'assets/images/b1.jpg',
                        'Best helthy food near you !',
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                    _buildSpecialist(
                        'assets/images/b2.jpg',
                        'Best helthy icecreame for you',
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => productsDetailsPage()));
              },
              child: buildCategories(
                  Icon(
                    Icons.app_registration_rounded,
                    color: Colors.grey,
                  ),
                  'All'),
            ),
            _buildTitle('popular'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  children: [
                    _buildCategories('Reflection Beauty Salon',
                        'assets/images/b4.jpg', 'Eva Surbhi Complex'),
                    _buildCategories('Lovely Beauty Salon',
                        'assets/images/b3.jpg', 'Hong Complex'),
                    _buildCategories('Showsen Salon', 'assets/images/11.jpg',
                        'Iscon Complex'),
                    _buildCategories('Beauty Hair Art', 'assets/images/12.jpg',
                        'HydRaw Center'),
                  ],
                ),
              ),
            ),
            _buildTitle('Nearyou'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  children: [
                    _buildCategoriesNearyou(
                        'Egg Salad', 'assets/images/2.jpg', '\$ 20'),
                    _buildCategoriesNearyou(
                        'Veg Salad', 'assets/images/1.jpg', '\$ 30'),
                    _buildCategoriesNearyou(
                        'Salad', 'assets/images/3.jpg', '\$ 25'),
                    _buildCategoriesNearyou(
                        'Veg Salad', 'assets/images/4.jpg', '\$ 30'),
                  ],
                ),
              ),
            ),
            _buildTitle2('Featured'),
            for (var i in text) _buildLastContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$txt',
            style: TextStyle(fontFamily: 'bold', fontSize: 16),
          ),
          Text(
            'View all',
            style: TextStyle(fontFamily: 'bold', color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle2(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        '$txt',
        style: TextStyle(fontFamily: 'bold', fontSize: 16),
      ),
    );
  }

  Widget searchbar(hintText) {
    return Row(
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Container(
              height: 40,
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: hintText,
                  suffixIcon: Icon(Icons.search),
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey.shade100,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey.shade100,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                ),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => historyPage()));
          },
          child: Container(
            height: 40,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFFF9E25),
                    Color(0xFFFF7F30),
                  ],
                )),
            child: Center(
              child: Icon(
                Icons.filter_alt_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSpecialist(img, txt1, txt2) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Column(
        children: [
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              image: new DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.srcOver),
                image: new AssetImage('$img'),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    ' $txt1',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white, fontFamily: 'bold'),
                  ),
                  Text(
                    ' $txt2',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'bold', fontSize: 17),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => productsPage()));
                    },
                    child: Container(
                      height: 50,
                      width: 100,
                      margin: EdgeInsets.only(top: 10),
                      decoration: style.contentButtonStyle(),
                      child: Center(
                        child: Text(
                          'Explore',
                          style: TextStyle(
                              fontFamily: 'bold', color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCategories(icn, txt) {
    List<int> text = [1, 2, 3, 4, 5, 6, 7];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
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

  Widget _buildCategories(txt, img, txt2) {
    return Container(
      margin: EdgeInsets.only(right: 10, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => productsPage()));
        },
        child: Column(
          children: [
            Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new AssetImage('$img'),
                ),
              ),
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Positioned(
                    right: 10,
                    top: -15,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => favoritePage()));
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: style.roundedButtonStyle(),
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                          size: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '$txt',
                              style:
                                  TextStyle(fontFamily: 'bold', fontSize: 15),
                            ),
                            Text(
                              '\$50',
                              style: TextStyle(
                                  fontFamily: 'bold',
                                  fontSize: 15,
                                  color: style.appColor),
                            ),
                          ],
                        ),
                        Text(
                          'Pizza - Fastfood - italianpizza',
                          style: TextStyle(
                              fontFamily: 'bold',
                              fontSize: 10,
                              color: Colors.grey),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: style.appColor,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: style.appColor,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: style.appColor,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: style.appColor,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: style.appColor,
                              size: 15,
                            ),
                          ],
                        ),
                        Text(
                          '4.8 (112 Review)',
                          style: TextStyle(
                              fontFamily: 'bold',
                              fontSize: 10,
                              color: style.appColor),
                        ),
                      ],
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

  Widget _buildCategoriesNearyou(txt, img, txt2) {
    return Container(
      margin: EdgeInsets.only(right: 10, top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => filterPage()));
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
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$txt',
                          style: TextStyle(fontFamily: 'bold', fontSize: 15),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLastContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => thankYouPage()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: new AssetImage('assets/images/4.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Korean Food',
                          style: TextStyle(fontFamily: 'bold', fontSize: 17),
                        ),
                        Text(
                          'egg - salad',
                          style: TextStyle(
                              fontFamily: 'bold',
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 15,
                              color: style.appColor,
                            ),
                            Text(
                              '4.8 (112)',
                              style: TextStyle(
                                  fontFamily: 'bold',
                                  fontSize: 15,
                                  color: style.appColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: style.roundedButtonStyle(),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 17,
                      ),
                    ),
                    Text(
                      '\$ 55.00',
                      style: TextStyle(
                          fontFamily: 'bold',
                          fontSize: 15,
                          color: style.appColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
