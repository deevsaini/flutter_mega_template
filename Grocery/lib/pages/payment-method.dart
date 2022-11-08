/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutternewgrocery/pages/add-card.dart';
import 'package:flutternewgrocery/pages/checkout.dart';
import 'package:flutternewgrocery/pages/tabs.dart';
import '../helper/style.dart' as style;

class PaymentMethodPage extends StatefulWidget {
    PaymentMethodPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Payment Method';

    @override
    State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {

    String _current = '';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                automaticallyImplyLeading: true,
                iconTheme: IconThemeData(
                    color: style.appColor
                ),
                title: Text('Payment'),
                centerTitle: false,
                titleTextStyle: style.pageTitle(),
            ),
            body: _buildBody(), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    Widget _buildBody() {
        return SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: style.shadowContainer(),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Order Total', style: greyLabel()),
                                  Text('\$10.20', style: greyLabel()),
                                ],
                              ),
                              SizedBox(height: 12),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Delivery Free', style: greyLabel()),
                                  Text('\$2.00', style: greyLabel()),
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                          color: Color.fromARGB(255, 244, 244, 244),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Order Total', style: totalLabel()),
                              Text('\$10.20', style: totalLabel()),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Text('Choose Payment Method',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18
                    ),
                  ),
                  SizedBox(height: 20),

                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: paymentContainer('apple_pay'),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _current = 'apple_pay';
                          Navigator.push(context, new MaterialPageRoute(
                              builder: (context) => new CheckoutPage())
                          );
                        });
                      },
                      child: Row(
                        children: [
                          Image.asset('assets/images/apple-pay.png', width: 56),
                          SizedBox(width: 16),
                          Expanded(child: Text('Apple Pay', style: TextStyle(fontSize: 16))),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: paymentContainer('visa'),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _current = 'visa';
                        });
                      },
                      child: Row(
                        children: [
                          Image.asset('assets/images/visa.png', width: 56),
                          SizedBox(width: 16),
                          Expanded(child: Text('•••• 4242', style: TextStyle(fontSize: 16))),
                        ],
                      ),
                    ),
                  ),

                  Container(
                      margin: EdgeInsets.only(bottom: 20),
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(context, new MaterialPageRoute(
                              builder: (context) => new AddCardPage())
                          );
                        },
                        child: Text('Add Payment Method'),
                        style: style.outlineButton(),
                      )
                  )
                ],
              ),
            ),
        );
    }

    greyLabel() {
        return TextStyle(
            fontSize: 16,
            color: Colors.grey
        );
    }

    totalLabel() {
        return TextStyle(
            fontSize: 18
        );
    }

    paymentContainer(val) {
        return BoxDecoration(
            boxShadow: [
                BoxShadow(
                    color: (Colors.grey[200])!,
                    blurRadius: 5.0,
                    offset: Offset(0.0,0.0)
                ),
            ],
            borderRadius: BorderRadius.all(
                Radius.circular(5)
            ),
            border: Border.all(
                width: 2,
                color: val == _current ? style.appColor : Colors.transparent
            ),
            color: Colors.white
        );
    }
}