/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/pages/booking_bill.dart';
import 'package:home/widget/elevated_button.dart';
import '../components/styles.dart';

class PaymentDetail extends StatefulWidget {
  static const String id = 'PaymentDetail';

  const PaymentDetail({Key? key}) : super(key: key);

  @override
  _PaymentDetailState createState() => _PaymentDetailState();
}

class _PaymentDetailState extends State<PaymentDetail> {
  int selectID = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        title: Text('Payment Detail', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.bookmark_border,
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: _buildBottomBtn(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            boldHeading("My Card"),
            greyText("Please select card to pay book items"),
            SizedBox(height: 40),
            _buildSelect('assets/images/google.png', '****9120', 1),
            _buildSelect('assets/images/apple.png', 'admin@initappz.com', 2),
            _buildSelect('assets/images/credit-card.png', 'RXJDIYA1220', 3),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomBtn() {
    return Container(
      padding: EdgeInsets.all(24),
      child: MyElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const BookingBill()));
        },
        text: 'Select Payment Method',
      ),
    );
  }

  Widget _buildSelect(img, title, id) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectID = id;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(24),
        margin: EdgeInsets.symmetric(vertical: 16),
        decoration: segmentDecoration(id),
        child: Row(
          children: [
            Image.asset(
              img,
              width: 24,
              height: 24,
            ),
            SizedBox(width: 16),
            Expanded(child: Text(title)),
            Icon(Icons.radio_button_checked,
                size: 18, color: selectID == id ? appColor : Colors.black12),
          ],
        ),
      ),
    );
  }

  segmentDecoration(id) {
    return BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: selectID == id ? Colors.black12 : Colors.transparent,
          blurRadius: 20.0,
        ),
      ],
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
    );
  }
}
