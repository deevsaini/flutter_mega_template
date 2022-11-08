/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/orderDetalisPage.dart';
import 'package:shop1_flutter_marketplace_hardik/utilities/constancePage.dart'
    as style;

class orderPage extends StatefulWidget {
  orderPage({Key? key}) : super(key: key);

  static const String pageId = 'orderPage';

  @override
  State<orderPage> createState() => _orderPageState();
}

class _orderPageState extends State<orderPage> {
  int tabID = 1;
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
                "My Orders",
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
            _buildSegment(),
            if (tabID == 1)
              _buildFirstContent()
            else if (tabID == 2)
              _buildSecondContent()
          ],
        ),
      ),
    );
  }

  Widget _buildFirstContent() {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => orderDetailsPage()));
          },
          child: _buildHeadingItemContent(
            'Women Bags',
            Image.asset('assets/images/s1.png', fit: BoxFit.contain),
            '2020/06/10 - 09:30',
            'Handbage LV',
            '\$ 220',
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => orderDetailsPage()));
          },
          child: _buildHeadingItemContent(
            'CLOTHING',
            Image.asset('assets/images/s11.png', fit: BoxFit.contain),
            '2020/02/10 - 09:30',
            'Baby Dress',
            '\$ 119',
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => orderDetailsPage()));
          },
          child: _buildHeadingItemContent(
            'HATES',
            Image.asset('assets/images/s9.png', fit: BoxFit.contain),
            '2020/02/10 - 09:30',
            'Hates For Girl',
            '\$ 100',
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => orderDetailsPage()));
          },
          child: _buildHeadingItemContent(
            'PANTS',
            Image.asset('assets/images/s15.png', fit: BoxFit.contain),
            '2020/02/10 - 09:30',
            'Pants For Girl',
            '\$ 100',
          ),
        ),
      ],
    );
  }

  Widget _buildSecondContent() {
    return Column(
      children: [
        _buildHeadingItemContent(
          'CLOTHING',
          Image.asset('assets/images/s11.png', fit: BoxFit.contain),
          '2020/02/10 - 09:30',
          'Baby Dress',
          '\$ 119',
        ),
        _buildHeadingItemContent(
          'Women Bags',
          Image.asset('assets/images/s1.png', fit: BoxFit.contain),
          '2020/06/10 - 09:30',
          'Handbage LV',
          '\$ 220',
        ),
        _buildHeadingItemContent(
          'PANTS',
          Image.asset('assets/images/s15.png', fit: BoxFit.contain),
          '2020/02/10 - 09:30',
          'Pants For Girl',
          '\$ 100',
        ),
        _buildHeadingItemContent(
          'HATES',
          Image.asset('assets/images/s9.png', fit: BoxFit.contain),
          '2020/02/10 - 09:30',
          'Hates For Girl',
          '\$ 100',
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
                        Text(
                          '$txt4',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: 'bold'),
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

  Widget _buildSegment() {
    return Container(
      padding: EdgeInsets.only(top: 0, bottom: 20),
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
                  child: Text('Pending Orders', style: segmentText(1)),
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
                    child: Text('Past Orders', style: segmentText(2)),
                  ),
                )),
          ),
        ],
      ),
    );
  }

  segmentDecoration(val) {
    return BoxDecoration(
        border: Border(
            bottom: BorderSide(
                width: 2,
                color: tabID == val ? style.appColor : Colors.transparent)));
  }

  segmentText(val) {
    return TextStyle(
        fontFamily: 'bold', color: tabID == val ? style.appColor : Colors.grey);
  }
}
