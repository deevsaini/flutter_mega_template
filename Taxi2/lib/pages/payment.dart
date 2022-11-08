/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:taxi/pages/tabs.dart';
import '../components/styles.dart';

class Payment extends StatefulWidget {
  static const String id = 'Payment';

  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String paymentRadio = '';

  @override
  void initState() {
    super.initState();
  }

  List<Item> PaymentList = <Item>[
    const Item('assets/images/google.png', 'Google Pay', 'UPI'),
    const Item('assets/images/apple.png', 'Credit Card', 'Net Banking'),
    const Item('assets/images/paypal.png', 'Paypal', 'UPI'),
    const Item('assets/images/visa.png', 'Master Card', 'Net Banking'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black87),
        centerTitle: true,
        title: const Text(
          'Payment',
          style: TextStyle(color: Colors.black, fontFamily: "semibold"),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildbtn(),
    );
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          ListView(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            children: PaymentList.map((e) {
              return _buildPayments(context, e);
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildPayments(context, e) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      margin: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
          ),
        ],
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: <Widget>[
            Radio(
                value: e.toString(),
                activeColor: appColor,
                groupValue: paymentRadio,
                onChanged: (value) {
                  setState(() {
                    paymentRadio = value.toString();
                  });
                }),
            Container(
              padding: EdgeInsets.symmetric(vertical: 7, horizontal: 7),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Image.asset(
                e.img,
                width: 25,
                height: 25,
              ),
            ),
            Expanded(
                child: Container(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(e.name, style: TextStyle(fontFamily: "bold")),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(e.type, style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Widget _buildbtn() {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      child: ElevatedButton(
        child: btnText("Continue To Pay"),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TabsExample()));
        },
        style: btnStyle(),
      ),
    );
  }
}

class Item {
  const Item(
    this.img,
    this.name,
    this.type,
  );
  final String img;
  final String name;
  final String type;
}
