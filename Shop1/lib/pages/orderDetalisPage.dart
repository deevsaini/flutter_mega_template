/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:shop1_flutter_marketplace_hardik/utilities/constancePage.dart'
    as style;

class orderDetailsPage extends StatefulWidget {
  orderDetailsPage({Key? key}) : super(key: key);

  static const String pageId = 'orderDetailsPage';

  @override
  State<orderDetailsPage> createState() => _orderDetailsPageState();
}

class _orderDetailsPageState extends State<orderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _buildBody(),
        appBar: _buildAppBar(),
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
          Row(
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
                "Orders Details",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  //
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {
                  //
                },
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              ),
            ],
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
            InkWell(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => orderDetailsPage()));
              },
              child: _buildHeadingItemContent(
                'Women Bags',
                Image.asset('assets/images/s1.png', fit: BoxFit.contain),
                '2020/06/10 - 09:30',
                'Handbage LV',
                '\$ 220',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildRowContent(Icons.shopping_cart, 'Order Confirmed!',
                      'Your order has been send.'),
                  _buildLine(),
                  _buildRowContent(Icons.home, 'Order Confirmed!',
                      'Your order has been send.'),
                  _buildLine(),
                  _buildRowContent(Icons.car_rental, 'Order Confirmed!',
                      'Your order has been send.'),
                  _buildLine(),
                  _buildRowContent(Icons.favorite, 'Order Confirmed!',
                      'Your order has been send.'),
                ],
              ),
            ),
          ],
        ),
      ),
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
              padding: const EdgeInsets.only(
                  left: 100, top: 10, bottom: 10, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Text(
                            '$txt1',
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 100,
                          child: Text(
                            '$txt2',
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '$txt3',
                            style: TextStyle(fontFamily: 'bold', fontSize: 17),
                          ),
                          InkWell(
                            onTap: () {
                              //
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: style.roundedBorderButtonStyle(),
                              child: Center(child: Icon(Icons.chevron_right)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cash on delivery :',
                          style: TextStyle(
                              fontFamily: 'bold',
                              fontSize: 13,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          width: 50,
                          child: Text(
                            '$txt4',
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontFamily: 'bold'),
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
            height: 100,
            width: 130,
            left: -25,
            bottom: 90,
            child: SizedBox(
              child: img,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRowContent(icn, txt1, txt2) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            height: 50,
            width: 50,
            decoration: style.roundedButtonStyle(),
            child: Center(
                child: Icon(
              icn,
              color: Colors.white,
            )),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$txt1',
              style: TextStyle(color: style.appColor),
            ),
            Text(
              '$txt2',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLine() {
    return Container(
      margin: EdgeInsets.only(left: 25, bottom: 5),
      height: 50,
      width: 1,
      color: style.appColor,
    );
  }
}
