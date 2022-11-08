/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:banky/helper/style.dart' as style;

class home extends StatefulWidget {
  home({Key? key}) : super(key: key);

  static const String page_id = "Home";

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  DateTime date = DateTime(2022, 12, 24);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.black),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Good Morning',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          Text(
            'Jaydeep Hirani',
            style: style.darkText(),
          ),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notification_add_outlined),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(18),
                  child: FittedBox(
                    child: Image(
                      image: AssetImage('assets/images/profile.jpg'),
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 160,
                    width: 280,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: style.appColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Mandiri Platinum',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: 'medium'),
                            ),
                            Image.asset(
                              'assets/images/visa.png',
                              height: 40,
                              width: 40,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Balance',
                          style: TextStyle(color: Colors.white54),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '\$ 6,800.86',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: 'medium'),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 160,
                    width: 280,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Mandiri Platinum',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontFamily: 'medium'),
                            ),
                            Image.asset(
                              'assets/images/visa.png',
                              height: 40,
                              width: 40,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Balance',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '\$ 6,800.86',
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 22,
                              fontFamily: 'medium'),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: () async {
                            DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: date,
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100),
                              helpText: 'Birth Date',
                            );
                            if (newDate == null) return;
                            setState(() => date = newDate);
                          },
                          child: Text(
                            '${date.day}/${date.month}/${date.year}',
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.grey.shade300,
                              onPrimary: style.darkColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 10),
                              textStyle: TextStyle(
                                fontSize: 18,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        child: ElevatedButton(
                          onPressed: () async {
                            DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: date,
                              firstDate: DateTime(1900),
                              lastDate: DateTime(2100),
                              helpText: 'Birth Date',
                            );
                            if (newDate == null) return;
                            setState(() => date = newDate);
                          },
                          child: Text(
                            '${date.day}/${date.month}/${date.year}',
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.grey.shade300,
                              onPrimary: style.darkColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 10),
                              textStyle: TextStyle(
                                fontSize: 18,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.arrow_upward,
                          color: Colors.blue,
                          size: 25,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Spending',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '\$980',
                              style: style.darkText(),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: style.darkColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.arrow_downward,
                          color: style.darkColor,
                          size: 25,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Incoming',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              '\$2,860',
                              style: style.darkText(),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transaction',
                  style: style.darkText(),
                ),
                Text(
                  'See all',
                  style: TextStyle(color: style.appColor, fontFamily: 'medium'),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            allTransactions(),
            allTransactions(),
            allTransactions(),
            allTransactions(),
            allTransactions(),
          ],
        ),
      ),
    );
  }

  Widget allTransactions() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.all(7),
                child: Icon(
                  Icons.work_outlined,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Freelance Work'),
                    Text(
                      'Apr 28',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Text(
            '+\$2,600',
            style: style.darkText(),
          )
        ],
      ),
    );
  }
}
