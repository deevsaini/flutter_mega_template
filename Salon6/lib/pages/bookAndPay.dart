/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon/helper/style.dart' as style;
import 'package:salon/pages/appointmentBookSuccess.dart';

class bookAndPay extends StatefulWidget {
  bookAndPay({Key? key}) : super(key: key);

  static const String page_id = "Book Appointment And Pay";

  @override
  State<bookAndPay> createState() => _bookAndPayState();
}

class _bookAndPayState extends State<bookAndPay> {
  bool isChecked = false;
  bool checked = false;
  bool nonchecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: _buildbottombar(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Text(
        'Book Appointment',
        style: style.boldText(),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          style.shopDetail(() {}),
          SizedBox(
            height: 20,
          ),
          Text(
            'Services',
            style: style.headText(),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(15),
                  child: FittedBox(
                    child: Image(image: AssetImage('assets/images/g1.jpg')),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Regular Haircut',
                    style: TextStyle(fontFamily: 'medium'),
                  ),
                ),
              ),
              Text(
                '\$5.00',
                style:
                    TextStyle(color: style.appColor, fontFamily: 'semi-bold'),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(15),
                  child: FittedBox(
                    child: Image(image: AssetImage('assets/images/g1.jpg')),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Classic Shaving',
                    style: TextStyle(fontFamily: 'medium'),
                  ),
                ),
              ),
              Text(
                '\$3.12',
                style:
                    TextStyle(color: style.appColor, fontFamily: 'semi-bold'),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Date & Time',
                style: style.headText(),
              ),
              Text(
                '12 September, 12:00',
                style: TextStyle(
                    color: style.appColor, fontFamily: 'medium', fontSize: 16),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Payment Method',
            style: style.headText(),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: style.appColor, width: 2),
            ),
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage('assets/images/paypal.png'),
                    height: 30,
                    width: 30,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Jenny Wilson',
                        style: TextStyle(fontFamily: 'medium'),
                      ),
                    ),
                  ),
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
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage('assets/images/master.png'),
                    height: 30,
                    width: 30,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        '**** **** **** 5455',
                        style: TextStyle(fontFamily: 'medium'),
                      ),
                    ),
                  ),
                  Checkbox(
                    checkColor: Colors.grey,
                    activeColor: Colors.grey,
                    value: nonchecked,
                    shape: CircleBorder(),
                    onChanged: (bool? value) {
                      setState(() {
                        nonchecked = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage('assets/images/visa.png'),
                    height: 30,
                    width: 30,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        '**** **** **** 4545',
                        style: TextStyle(fontFamily: 'medium'),
                      ),
                    ),
                  ),
                  Checkbox(
                    checkColor: Colors.grey,
                    activeColor: Colors.grey,
                    value: checked,
                    shape: CircleBorder(),
                    onChanged: (bool? value) {
                      setState(() {
                        checked = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildbottombar() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 60,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: const Text(
                  "Back",
                  style: TextStyle(fontFamily: 'semi-bold'),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => appointmentBookSuccess()));
            },
            child: Container(
              height: 60,
              width: 200,
              decoration: BoxDecoration(
                color: style.appColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "Continue",
                      style: TextStyle(
                          fontFamily: 'semi-bold', color: Colors.white),
                    ),
                    Text(
                      '\$8.12',
                      style: TextStyle(
                          fontFamily: 'semi-bold', color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
