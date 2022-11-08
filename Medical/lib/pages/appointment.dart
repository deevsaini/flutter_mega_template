/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

import '../helper/style.dart';

class appointment extends StatefulWidget {
  appointment({Key? key}) : super(key: key);

  static const String page_id = "Appointment";

  @override
  _appointmentState createState() => _appointmentState();
}

class _appointmentState extends State<appointment> {
  int tabID = 1;

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
      leadingWidth: 80,
      elevation: 0,
      backgroundColor: appColor,
      iconTheme: IconThemeData(color: Colors.white),
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: SizedBox(
        child: Text(
          'Appointment',
          style: TextStyle(fontSize: 16, fontFamily: 'medium'),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          softWrap: false,
        ),
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              appColor,
              secondColor,
            ],
          ),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.filter_list_outlined,
              color: Colors.white,
            )
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Row(
            children: [
              Icon(
                Icons.search_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.notification_add_outlined,
                color: Colors.white,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: [
              _buildSegment(),
              if (tabID == 1)
                initiateContainer()
              else if (tabID == 2)
                verifyContainer()
              else if (tabID == 3)
                paymentContainer()
              else if (tabID == 4)
                confirmContainer()
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  tabID = 1;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 5),
                decoration: segmentDecoration(1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      size: 15,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Initiate', style: segmentText(1)),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
                onTap: () {
                  setState(() {
                    tabID = 2;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 5),
                  decoration: segmentDecoration(2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check_circle_outline,
                        size: 15,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Verify', style: segmentText(2)),
                    ],
                  ),
                )),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  tabID = 3;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 5),
                decoration: segmentDecoration(3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.circle_outlined,
                      size: 15,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('Payment', style: segmentText(3)),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                setState(() {
                  tabID = 4;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 5),
                decoration: segmentDecoration(4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Confirm', style: segmentText(4)),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  segmentDecoration(val) {
    return BoxDecoration(
      color: tabID == val ? Colors.blue : secondColor,
      // border: Border(
      //   right: BorderSide(
      //       width: 2, color: tabID == val ? Colors.white : secondColor),
      // ),
    );
  }

  segmentText(val) {
    return TextStyle(
        fontFamily: tabID == val ? 'semi-bold' : 'regular',
        color: tabID == val ? Colors.white : Colors.white);
  }

  Widget initiateContainer() {
    return Container();
  }

  Widget verifyContainer() {
    return Container();
  }

  Widget paymentContainer() {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
            'Enter Your Credit Card Information',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontFamily: 'medium'),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Payment Secured Via Secured SSL',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: simpleInputText('Credit Holder Name'),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Card type",
              suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
              border: OutlineInputBorder(),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: simpleInputText('Expiry Date'),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: TextField(
                  decoration: simpleInputText('CVV'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: simpleInputText('CreditCard Number'),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  appColor,
                  secondColor,
                ],
              ),
            ),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => searchList()));
              },
              child: Text(
                'Make Payment',
                style: TextStyle(fontFamily: 'medium', fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: Colors.transparent,
                onPrimary: Colors.white,
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'We accept below payment method',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/master.png',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/master.png',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/america.png',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/visa.png',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            color: Colors.grey.shade300,
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => searchList()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.paypal_rounded,
                    color: appColor,
                  ),
                  Text(
                    'Let me pay via Paypal',
                    style: TextStyle(
                        fontFamily: 'medium', fontSize: 16, color: appColor),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: Colors.transparent,
                onPrimary: Colors.white,
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget confirmContainer() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/confirm.png',
            height: 140,
            width: 140,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Appointment Confirm!',
            style: TextStyle(
                fontFamily: 'semi-bold', fontSize: 18, color: secondColor),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Your appointment with Dr John Smith on march at 2:30 is confirm',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Time left before appointment',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            '2 Days 5 hours',
            style: TextStyle(
              fontFamily: 'medium',
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Book a video/physical appointment',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  appColor,
                  secondColor,
                ],
              ),
            ),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => searchList()));
              },
              child: Text(
                'Yes Start Booking',
                style: TextStyle(
                    fontFamily: 'medium', fontSize: 16, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: Colors.transparent,
                onPrimary: Colors.white,
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'No, thanks! Take me to "My Appointment".',
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
