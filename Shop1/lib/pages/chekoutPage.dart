/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/citySearchPage.dart';
import 'package:shop1_flutter_marketplace_hardik/pages/tabBarPage.dart';
import 'package:shop1_flutter_marketplace_hardik/utilities/constancePage.dart'
    as style;

class checkoutPage extends StatefulWidget {
  checkoutPage({Key? key}) : super(key: key);

  static const String pageId = 'checkoutPage';

  @override
  State<checkoutPage> createState() => _checkoutPageState();
}

class _checkoutPageState extends State<checkoutPage> {
  int tabID = 1;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
        bottomNavigationBar: tabID == 1
            ? _buildFirstBottomNavigationBar()
            : tabID == 2
                ? _buildSecondBottomNavigationBar()
                : tabID == 3
                    ? _buildThirdBottomNavigationBar()
                    : Container(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(120.0),
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        flexibleSpace: Column(
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
                  'Checkout',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  child: Column(
                    children: [
                      tabID == 1
                          ? Icon(
                              Icons.check_circle,
                              color: style.appColor,
                            )
                          : Icon(Icons.info),
                      Text('Information'),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  child: Column(
                    children: [
                      tabID == 2
                          ? Icon(
                              Icons.check_circle,
                              color: style.appColor,
                            )
                          : Icon(Icons.car_rental),
                      Text('Shipping'),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  child: Column(
                    children: [
                      tabID == 3
                          ? Icon(
                              Icons.check_circle,
                              color: style.appColor,
                            )
                          : Icon(Icons.money),
                      Text('Payments'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (tabID == 1)
              _buildInformation()
            else if (tabID == 2)
              _buildShipping()
            else if (tabID == 3)
              _buildPayment()
          ],
        ),
      ),
    );
  }

  Widget _buildInformation() {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => citySearchPage()));
          },
          child: Container(
            height: 50,
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Deliver To :',
                        style: TextStyle(fontSize: 17),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(20),
                            child: FittedBox(
                              child: Image.asset('assets/images/f1.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        'United State',
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              Text(
                'My Cart',
                style: TextStyle(fontFamily: 'bold', fontSize: 17),
              ),
            ],
          ),
        ),
        _buildFirstContent(),
        Container(
          height: 50,
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
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 200,
                  child: Text(
                    'Promo/Student Code or e-gift Cards',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildShipping() {
    return Column(
      children: [
        _buildTitle('Shipping Address'),
        Container(
          width: double.infinity,
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
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Postal Address',
                          style: TextStyle(fontFamily: 'bold', fontSize: 17),
                        ),
                        InkWell(
                          child: Icon(
                            Icons.edit,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Jessi Pham',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Los angels, Canifornia, USA',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '0124 456 789',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                DottedBorder(
                  dashPattern: [8, 4],
                  strokeWidth: 2,
                  radius: Radius.circular(10),
                  color: Colors.grey,
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                        child: Text(
                          'Click & Collect',
                          style: TextStyle(color: Colors.grey, fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        _buildTitle('Shipping Options'),
        Container(
          width: double.infinity,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: style.appColor,
                        value: isChecked,
                        shape: CircleBorder(),
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text(
                        'Free Standard Shipping',
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivery on before monday. june 8,2020',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        'No shipping on public holiday',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: style.appColor,
                        value: isChecked,
                        shape: CircleBorder(),
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text(
                        '\$10.00 Express Shipping',
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivery on before monday. june 8,2020',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: style.appColor,
                        value: isChecked,
                        shape: CircleBorder(),
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text(
                        '\$19.99 Express Shipping',
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Delivery on before monday. june 8,2020',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPayment() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle('Payments'),
        Container(
          width: double.infinity,
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
                Container(
                  decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.grey))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Billing Address',
                          style: TextStyle(fontFamily: 'bold', fontSize: 17),
                        ),
                        InkWell(
                          child: Icon(
                            Icons.edit,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Jessi Pham',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Los angels, Canifornia, USA',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '0124 456 789',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        _buildTitle2('Payments Type'),
        Container(
          width: double.infinity,
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
            child: Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: DottedBorder(
                    dashPattern: [8, 4],
                    strokeWidth: 2,
                    radius: Radius.circular(10),
                    color: Colors.grey,
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(30),
                            child: FittedBox(
                              child: Image.asset('assets/images/p1.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 80,
                    width: 80,
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
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(30),
                          child: FittedBox(
                            child: Image.asset('assets/images/p1.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 80,
                    width: 80,
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
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(30),
                          child: FittedBox(
                            child: Image.asset('assets/images/p1.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        _buildTitle2('We Accept'),
        Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30,
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(30),
                    child: FittedBox(
                      child: Image.asset('assets/images/p1.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30,
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(30),
                    child: FittedBox(
                      child: Image.asset('assets/images/p1.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30,
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
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(30),
                    child: FittedBox(
                      child: Image.asset('assets/images/p1.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          width: double.infinity,
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
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sub-total',
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                    Text(
                      '\$ 123',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping',
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                    Text(
                      'Free',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sale Tax',
                      style: TextStyle(color: Colors.grey, fontSize: 17),
                    ),
                    Text(
                      '\$ 5.70',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Pay',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    Text(
                      '\$ 5.70',
                      style: TextStyle(color: style.appColor, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.',
            style: TextStyle(fontSize: 17),
          ),
        ),
      ],
    );
  }

  Widget _buildTitle(txt) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            '$txt',
            style: TextStyle(fontFamily: 'bold', fontSize: 17),
          ),
        ),
      ],
    );
  }

  Widget _buildTitle2(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            '$txt',
            style: TextStyle(fontSize: 17),
          ),
        ],
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
          '\$ 105',
        ),
      ],
    );
  }

  Widget _buildHeadingItemContent(txt1, img, txt2, txt3, txt4) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 10, left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 10),
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
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 100, top: 10, bottom: 10, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
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
                              softWrap: false,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'bold',
                                  fontSize: 10),
                            ),
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Size : $txt2',
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              softWrap: false,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'bold',
                                  fontSize: 10),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Amount : $txt4',
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'bold',
                                  fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total :',
                            style: TextStyle(fontSize: 17, color: Colors.grey),
                          ),
                          Text(
                            '$txt3',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                                fontFamily: 'bold'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  height: 100,
                  width: 130,
                  left: -30,
                  bottom: 80,
                  child: SizedBox(
                    child: img,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFirstBottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: InkWell(
        onTap: () {
          setState(() {
            tabID = 2;
          });
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle(),
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
    );
  }

  Widget _buildSecondBottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: InkWell(
        onTap: () {
          setState(() {
            tabID = 3;
          });
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Continue',
                style: TextStyle(
                    color: Colors.white, fontSize: 17, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildThirdBottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: InkWell(
        onTap: () {
          setState(() {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => tabBarpage()));
          });
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Place Order',
                style: TextStyle(
                    color: Colors.white, fontSize: 17, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
