/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food1_flutter_marketplace/utilities/constancePage.dart'
    as style;

class productsDetailsPage extends StatefulWidget {
  productsDetailsPage({Key? key}) : super(key: key);

  static const String pageId = 'productsDetailsPage';

  @override
  State<productsDetailsPage> createState() => _productsDetailsPageState();
}

class _productsDetailsPageState extends State<productsDetailsPage> {
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
            _buildCategories(
                Icon(
                  Icons.close,
                  size: 17,
                ),
                'Hotburger'),
            SizedBox(
              height: 10,
            ),
            _buildTab1Content(),
            _buildTab1Content(),
            _buildTab1Content(),
            _buildTab1Content(),
            _buildTab1Content(),
            _buildTab1Content(),
            _buildTab1Content(),
          ],
        ),
      ),
    );
  }

  Widget _buildCategories(icn, txt) {
    List<int> text = [1, 2, 3, 4, 5, 6, 7];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        child: Row(
          children: [
            Text(
              'Filter :  ',
              style: TextStyle(fontFamily: 'bold', fontSize: 17),
            ),
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
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              '$txt',
                              style: TextStyle(
                                  fontFamily: 'semibold', color: Colors.grey),
                            ),
                          ),
                          icn,
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

  Widget _buildTab1Content() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 20.0,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 120,
                    width: 120,
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
                      SizedBox(
                        width: 150,
                        child: Text(
                          'Maxican Food',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(fontFamily: 'bold', fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Maxican food - fast',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 15,
                            color: style.appColor,
                          ),
                          SizedBox(
                            width: 100,
                            child: Text(
                              '4.9 (124 Rating)',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 13, color: style.appColor),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 15,
                            color: style.appColor,
                          ),
                          SizedBox(
                            width: 100,
                            child: Text(
                              'No 03,4th lane, newyork',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 13, color: style.appColor),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
