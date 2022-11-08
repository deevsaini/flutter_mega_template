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

class paymentMethod extends StatefulWidget {
  paymentMethod({Key? key}) : super(key: key);

  static const String page_id = "Payment Methods";

  @override
  _paymentMethodState createState() => _paymentMethodState();
}

class _paymentMethodState extends State<paymentMethod> {
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
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Text(
        'Payment Methods',
        style: style.boldText(),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: Row(
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
                        style: TextStyle(fontFamily: 'medium', fontSize: 16),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey.shade400,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Row(
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
                        '**** **** **** 8295',
                        style: TextStyle(fontFamily: 'medium', fontSize: 16),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey.shade400,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {},
              child: Row(
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
                        '**** **** **** 4554',
                        style: TextStyle(fontFamily: 'medium', fontSize: 16),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey.shade400,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return addPaymentmethodModal();
                    });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.add,
                    color: style.appColor,
                    size: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Add Payment Method',
                    style:
                        TextStyle(color: style.appColor, fontFamily: 'medium'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget addPaymentmethodModal() {
    return Container(
      height: 300,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Add Payment Method',
              style: style.headText(),
            ),
            SizedBox(
              height: 40,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return addCardModal();
                  },
                );
              },
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
                        'Paypal',
                        style: TextStyle(fontFamily: 'medium'),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey.shade400,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return addCardModal();
                  },
                );
              },
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
                        'Master Card',
                        style: TextStyle(fontFamily: 'medium'),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey.shade400,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                  isScrollControlled: true,
                  context: context,
                  builder: (BuildContext context) {
                    return addCardModal();
                  },
                );
              },
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
                        'Visa Card',
                        style: TextStyle(
                          fontFamily: 'medium',
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.grey.shade400,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget addCardModal() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Add Card',
                  style: style.headText(),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Image(
              image: AssetImage('assets/images/card.png'),
            ),
            SizedBox(
              height: 20,
            ),
            InputText('Card Number', '1234 4567 6789 9876'),
            InputText('Card Holder', 'Jenny Wilson'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Exp Date'),
                  ],
                ),
                Row(
                  children: [
                    Text('CVV'),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Checkbox(
                  activeColor: style.appColor,
                  value: true,
                  onChanged: (bool) {
                    setState(() {});
                  },
                ),
                Text(
                  'Set as your default payment method',
                  style: TextStyle(color: style.appColor),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              child: const Text(
                "Add",
                style: TextStyle(fontFamily: 'semi-bold'),
              ),
              onPressed: () {},
              style: style.simpleButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget InputText(head, hint) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            head,
          ),
          TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint,
                contentPadding: EdgeInsets.only(left: 20)),
          ),
        ],
      ),
    );
  }
}
