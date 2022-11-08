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
import 'package:shop1_flutter_marketplace_hardik/pages/producDetailsPage.dart';
import 'package:shop1_flutter_marketplace_hardik/utilities/constancePage.dart'
    as style;

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  static const String pageId = 'homePage';

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int tabID = 1;
  List<int> text = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

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
      backgroundColor: Colors.white,
      elevation: 0,
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.chevron_left,
              color: Colors.black,
            ),
          ),
          Text(
            "New Trend",
            style: TextStyle(color: Colors.black),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSegment(),
            if (tabID == 1)
              _FirstContent()
            else if (tabID == 2)
              _SecondContent(),
          ],
        ),
      ),
    );
  }

  // this is a First Content

  Widget _FirstContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GridView.count(
          primary: false,
          crossAxisCount: 2,
          shrinkWrap: true,
          childAspectRatio: 100 / 100,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => productDetailsPage()));
              },
              child: _buildItemContent(
                  'Handbag Lv', '\$ 18', AssetImage('assets/images/s1.png')),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => productDetailsPage()));
              },
              child: _buildItemContent(
                  'Dress B', '\$ 18', AssetImage('assets/images/s11.png')),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => productDetailsPage()));
              },
              child: _buildItemContent(
                  'Jackate F', '\$ 50', AssetImage('assets/images/s5.png')),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => productDetailsPage()));
              },
              child: _buildItemContent(
                  'Shirt M', '\$ 20', AssetImage('assets/images/s2.png')),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => productDetailsPage()));
              },
              child: _buildItemContent(
                  'T-Shirt F', '\$ 30', AssetImage('assets/images/s3.png')),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => productDetailsPage()));
              },
              child: _buildItemContent(
                  'Jacket Lv', '\$ 40', AssetImage('assets/images/s4.png')),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => productDetailsPage()));
              },
              child: _buildItemContent(
                  'Handbag Lv', '\$ 18', AssetImage('assets/images/s1.png')),
            ),
          ],
        ),
        _buildHeadingItemContent(),
        GridView.count(
          primary: false,
          crossAxisCount: 2,
          shrinkWrap: true,
          childAspectRatio: 100 / 100,
          children: [
            _buildItemContent(
                'Dress B', '\$ 18', AssetImage('assets/images/s11.png')),
            _buildItemContent(
                'Jackate F', '\$ 50', AssetImage('assets/images/s5.png')),
            _buildItemContent(
                'Shirt M', '\$ 20', AssetImage('assets/images/s2.png')),
            _buildItemContent(
                'T-Shirt F', '\$ 30', AssetImage('assets/images/s3.png')),
            _buildItemContent(
                'Jacket Lv', '\$ 40', AssetImage('assets/images/s4.png')),
          ],
        ),
        _buildHeadingSecondItemContent(),
        _buildHeadingItemContent(),
        _buildButtonTitle('Recently Viewed '),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildSecondItemContent('Pull & beer Slim Fit',
                  't-shirt rib in work', AssetImage('assets/images/s11.png')),
              _buildSecondItemContent('Pull & beer Slim Fit',
                  't-shirt rib in work', AssetImage('assets/images/s5.png')),
              _buildSecondItemContent('Pull & beer Slim Fit',
                  't-shirt rib in work', AssetImage('assets/images/s2.png')),
              _buildSecondItemContent('Pull & beer Slim Fit',
                  't-shirt rib in work', AssetImage('assets/images/s3.png')),
              _buildSecondItemContent('Pull & beer Slim Fit',
                  't-shirt rib in work', AssetImage('assets/images/s4.png')),
            ],
          ),
        ),
        _buildTitle('Saved Items'),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              _buildSavedItemContent(
                  'Dress Lv', '\$ 218', AssetImage('assets/images/s11.png')),
              _buildSavedItemContent(
                  'Jacket L', '\$ 218', AssetImage('assets/images/s2.png')),
              _buildSavedItemContent(
                  'Jacket FL', '\$ 218', AssetImage('assets/images/s4.png')),
              _buildSavedItemContent(
                  'Women Jacket', '\$ 218', AssetImage('assets/images/s5.png')),
            ],
          ),
        ),
        _buildSingleTitle('Brand may you like.'),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Wrap(
              runSpacing: 5.0,
              spacing: 5.0,
              alignment: WrapAlignment.start,
              children: [
                // for (var i in text)
                _buildChip('Nike'),
                _buildChip('Adidas'),
                _buildChip('Nevya'),
                _buildChip('Vance'),
                _buildChip('The North Face'),
                _buildChip('Collusion'),
                _buildChip('Calvin Klein'),
                _buildChip('Puma'),
              ],
            ),
          ),
        ),
        _buildSingleTitle('Style based on your shopping habits.'),
        GridView.count(
          primary: false,
          crossAxisCount: 2,
          shrinkWrap: true,
          childAspectRatio: 100 / 100,
          children: [
            _buildThirdItemContent(
                'Handbag Lv', '\$ 18', AssetImage('assets/images/s1.png')),
            _buildThirdItemContent(
                'Dress B', '\$ 18', AssetImage('assets/images/s11.png')),
            _buildThirdItemContent(
                'Jackate F', '\$ 50', AssetImage('assets/images/s5.png')),
            _buildThirdItemContent(
                'Shirt M', '\$ 20', AssetImage('assets/images/s2.png')),
            _buildThirdItemContent(
                'T-Shirt F', '\$ 30', AssetImage('assets/images/s3.png')),
            _buildThirdItemContent(
                'Jacket Lv', '\$ 40', AssetImage('assets/images/s4.png')),
            _buildThirdItemContent(
                'Handbag Lv', '\$ 18', AssetImage('assets/images/s1.png')),
          ],
        ),
      ],
    );
  }

  Widget _buildItemContent(txt1, txt2, img) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 150,
          width: 150,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 20.0,
              ),
            ],
          ),
          child: Stack(
            overflow: Overflow.visible,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(
                        '$txt1',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.grey, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '$txt2',
                            style: TextStyle(fontSize: 18, fontFamily: 'bold'),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -10,
                top: -10,
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: img,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSecondItemContent(txt1, txt2, img) {
    return Stack(
      overflow: Overflow.visible,
      alignment: Alignment.center,
      textDirection: TextDirection.rtl,
      fit: StackFit.loose,
      clipBehavior: Clip.hardEdge,
      children: [
        Container(
          height: 150,
          width: 160,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 20.0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: SizedBox(
                    width: 150,
                    child: Text(
                      '$txt1',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: SizedBox(
                    width: 150,
                    child: Text(
                      '$txt2',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          height: 80,
          width: 60,
          right: 0,
          top: 0,
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              image: DecorationImage(
                fit: BoxFit.contain,
                image: img,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildThirdItemContent(txt1, txt2, img) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 150,
          width: 160,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 20.0,
              ),
            ],
          ),
          child: Stack(
            overflow: Overflow.visible,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '$txt1',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '$txt2',
                            style: TextStyle(fontSize: 18, fontFamily: 'bold'),
                          ),
                          Icon(
                            Icons.thumb_down,
                            color: Colors.red,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: -10,
                top: -10,
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: img,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildButtonTitle(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$txt',
            style: TextStyle(fontFamily: 'bold', fontSize: 20),
          ),
          InkWell(
            onTap: () {
              //
            },
            child: Icon(
              Icons.close,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Wrap(
            children: [
              Text(
                '$txt',
                style: TextStyle(fontFamily: 'bold', fontSize: 20),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              //
            },
            child: Text(
              'View All',
              style: TextStyle(color: style.appColor),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSingleTitle(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Wrap(
          children: [
            Text(
              '$txt',
              textAlign: TextAlign.start,
              style: TextStyle(fontFamily: 'bold', fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChip(txt) {
    return FilterChip(
      label: Text(
        "$txt",
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.grey.shade200,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      onSelected: (bool value) {
        print("selected");
      },
    );
  }

  Widget _buildSavedItemContent(txt1, txt2, img) {
    return Stack(
      overflow: Overflow.visible,
      children: [
        Container(
          height: 80,
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 20.0,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 70, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200,
                  child: Text(
                    '$txt1',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '$txt2',
                        style: TextStyle(fontSize: 18, fontFamily: 'bold'),
                      ),
                      InkWell(
                        onTap: () {
                          //
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: style.roundedBorderButtonStyle(),
                          child: Center(
                              child: Icon(
                            Icons.chevron_right,
                            color: style.appColor,
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: -20,
          top: -5,
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              image: DecorationImage(
                fit: BoxFit.contain,
                image: img,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildHeadingItemContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Stack(
        alignment: Alignment.center,
        textDirection: TextDirection.rtl,
        fit: StackFit.loose,
        overflow: Overflow.visible,
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            height: 150,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 20.0,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 300,
                    child: Text(
                      'New Trend',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'bold'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            height: 180,
            width: 130,
            right: 20,
            bottom: 10,
            child: SizedBox(
              height: 180,
              width: 130,
              child: Image.asset('assets/images/s13.png', fit: BoxFit.contain),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeadingSecondItemContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Stack(
        alignment: Alignment.center,
        textDirection: TextDirection.rtl,
        fit: StackFit.loose,
        overflow: Overflow.visible,
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            height: 150,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 20.0,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 300,
                    child: Text(
                      'New Trend',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'bold'),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: Text(
                      'The line kings',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.grey, fontSize: 15, fontFamily: 'bold'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            height: 180,
            width: 130,
            right: 20,
            bottom: 10,
            child: SizedBox(
              height: 180,
              width: 130,
              child: Image.asset('assets/images/s12.png', fit: BoxFit.contain),
            ),
          ),
        ],
      ),
    );
  }

  // this is a Second Content

  Widget _SecondContent() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 20.0,
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                _buildSecondContentItem('Gender', 'All'),
                _buildSecondContentItem('Product Type', 'All'),
                _buildSecondContentItem('Style', 'All'),
                _buildSecondContentItem('Lether / Non Lether', 'All'),
                _buildSecondContentItem('Color', 'All'),
                _buildSecondContentItem('Brand', 'All'),
                _buildSecondContentItem('Body Fit', 'All'),
                _buildSecondContentItem('Size', 'All'),
                _buildSecondContentItem('Price', '\$8 - \$316'),
              ],
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 70.0, bottom: 20, left: 10, right: 10),
          child: InkWell(
            onTap: () {
              //
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 13.0),
              decoration: style.contentButtonStyle(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'View Items',
                    style: TextStyle(
                        color: Colors.white, fontSize: 17, fontFamily: 'bold'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSecondContentItem(txt1, txt2) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 150,
                  child: Text(
                    '$txt1',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: Text(
                    '$txt2',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSegment() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {
                setState(() {
                  tabID = 1;
                });
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 5),
                decoration: segmentDecoration(1),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.audible,
                        size: 15,
                        color: tabID == 1 ? style.appColor : Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Sort', style: segmentText(1)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
                onTap: () {
                  setState(() {
                    tabID = 2;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 5),
                  decoration: segmentDecoration(2),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.filter,
                          size: 15,
                          color: tabID == 2 ? style.appColor : Colors.grey,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Filter', style: segmentText(2)),
                      ],
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }

  segmentDecoration(val) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border:
          Border.all(color: tabID == val ? style.appColor : Colors.transparent),
    );
  }

  segmentText(val) {
    return TextStyle(
        fontFamily: 'bold', color: tabID == val ? style.appColor : Colors.grey);
  }
}
