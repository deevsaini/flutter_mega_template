/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/chekoutPage.dart';
import 'package:shop1_flutter_marketplace_hardik/utilities/constancePage.dart'
    as style;

class cartPage extends StatefulWidget {
  cartPage({Key? key}) : super(key: key);

  static const String pageId = 'cartPage';

  @override
  State<cartPage> createState() => _cartPageState();
}

class _cartPageState extends State<cartPage> {
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
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              'Cart',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildFirstContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildFirstContent() {
    return Column(
      children: [
        _buildHeadingItemContent(
          'NEW IN',
          Image.asset('assets/images/s1.png', fit: BoxFit.contain),
          'M',
          '\$ 109',
          '2',
        ),
        _buildHeadingItemContent(
          'CLOTHING',
          Image.asset('assets/images/s11.png', fit: BoxFit.contain),
          'F',
          '\$ 200',
          '1',
        ),
        _buildHeadingItemContent(
          'HATES',
          Image.asset('assets/images/s9.png', fit: BoxFit.contain),
          'S',
          '\$ 30',
          '1',
        ),
        _buildHeadingItemContent(
          'PANTS',
          Image.asset('assets/images/s15.png', fit: BoxFit.contain),
          'M',
          '\$ 150',
          '22',
        ),
      ],
    );
  }

  Widget _buildHeadingItemContent(txt1, img, txt2, txt3, txt4) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 30,
      ),
      child: Stack(
        alignment: Alignment.center,
        textDirection: TextDirection.rtl,
        fit: StackFit.loose,
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
              padding: const EdgeInsets.only(
                  left: 100, top: 10, bottom: 10, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 300,
                    child: Text(
                      '$txt1',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontFamily: 'bold'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        Text(
                          'Color : ',
                          style:
                              TextStyle(color: Colors.grey, fontFamily: 'bold'),
                        ),
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Size : $txt2',
                          style:
                              TextStyle(color: Colors.grey, fontFamily: 'bold'),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '$txt3',
                        style: TextStyle(fontFamily: 'bold', fontSize: 17),
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                //
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 30,
                              child: Text(
                                '$txt4',
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: style.appColor, fontFamily: 'bold'),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                //
                              },
                              child: Icon(
                                Icons.remove,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            height: 100,
            width: 130,
            left: -25,
            bottom: 90,
            child: SizedBox(
              child: img,
            ),
          ),
          Positioned(
            height: 40,
            width: 40,
            right: 0,
            top: 20,
            child: InkWell(
              onTap: () {
                //
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(5)),
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
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
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total :',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    '\$ 501',
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: 'bold',
                        color: style.appColor),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => checkoutPage()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: style.contentButtonStyle(),
                  child: Center(
                    child: Text(
                      'Checkout',
                      style: TextStyle(fontFamily: 'bold', color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
