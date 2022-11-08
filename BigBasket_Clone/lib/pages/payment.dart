/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:bigbasket/pages/add-card.dart';
import 'package:bigbasket/pages/net-banking.dart';
import 'package:bigbasket/pages/wallets.dart';
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class PaymentPage extends StatefulWidget {
    PaymentPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Payment';

    @override
    State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

    String _current = '';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBackDark,
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(56),
                child: _buildAppBar(),
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildAppBar() {
        return AppBar(
            backgroundColor: style.appColor,
            elevation: 0,
            centerTitle: true,
            automaticallyImplyLeading: false,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            leading: IconButton(
                onPressed: () {
                    Navigator.of(context).pop();
                },
                icon: Icon(Icons.keyboard_arrow_left),
            ),
            title: Text('Payment'),
            titleTextStyle: style.whitePageTitle()
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                            color: Colors.white,
                            width: double.infinity,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text('Total Amount Payable',
                                        style: TextStyle(
                                            fontFamily: 'medium'
                                        ),
                                    ),
                                    Text('Rs. 200.00'.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'medium'
                                        ),
                                    ),
                                ],
                            ),
                        ),

                        Container(
                            padding: EdgeInsets.all(16),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    _buildVoucherContainer(),

                                    _buildPriceContainer(),

                                    Text('Payment Option(s) with Offers', style: titleLabel()),
                                    SizedBox(height: 16),

                                    _buildWalletContainer(),

                                    Text('Other Payment Options', style: titleLabel(),),
                                    SizedBox(height: 16),

                                    Container(
                                        margin: EdgeInsets.only(bottom: 16),
                                        decoration: whiteBox(),
                                        child: Column(
                                            children: [
                                                Container(
                                                    padding: EdgeInsets.all(16),
                                                    decoration: borderBottom(),
                                                    child: Row(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                            Image.asset('assets/images/upi.png', width: 35),
                                                            SizedBox(width: 10),
                                                            Expanded(
                                                                child: Column(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                        Text('UPI Apps', style: boldLabel()),
                                                                        SizedBox(height: 20),
                                                                        Row(
                                                                            children: [
                                                                                _buildImageBox('assets/images/google-pay.png', 'GPay'),
                                                                                SizedBox(width: 16),
                                                                                _buildImageBox('assets/images/phone.png', 'PhonePe'),
                                                                            ],
                                                                        )
                                                                    ],
                                                                )
                                                            ),
                                                            SizedBox(width: 10),
                                                            Icon(Icons.arrow_right)
                                                        ],
                                                    ),
                                                ),
                                                _buildSimpleMethod(Icons.account_balance_wallet_outlined, 'UPI'),
                                                InkWell(
                                                    onTap: () {
                                                        Navigator.push(context, new MaterialPageRoute(
                                                            builder: (context) => new AddCardPage())
                                                        );
                                                    },
                                                    child: _buildSimpleMethod(Icons.card_giftcard_outlined, 'Credit / Debit Card'),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                        Navigator.push(context, new MaterialPageRoute(
                                                            builder: (context) => new WalletsPage())
                                                        );
                                                    },
                                                    child: _buildSimpleMethod(Icons.account_balance_wallet_outlined, 'Wallets'),
                                                ),
                                                _buildSimpleMethod(Icons.card_giftcard_outlined, 'Food Cards / Sodexo'),
                                                InkWell(
                                                    onTap: () {
                                                        Navigator.push(context, new MaterialPageRoute(
                                                            builder: (context) => new NetBankingPage())
                                                        );
                                                    },
                                                    child: _buildSimpleMethod(Icons.account_balance_wallet_outlined, 'Net Banking'),
                                                ),
                                                _buildLinkMethod2('assets/images/paytm.png', 'Cash on Delivery', 'Tip: To ensure a contactless delivery, we recommended you use an online payment method', Color.fromARGB(255, 255, 196, 9)),
                                                _buildLinkMethod2('assets/images/paytm.png', 'Card on Delivery', 'As a precautionary measure, we have temporariry disabled this payment option', style.appRed)
                                            ],
                                        ),
                                    ),

                                ],
                            ),
                        ),

                    ],
                ),
            ),
        );
    }

    Widget _buildVoucherContainer() {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          margin: EdgeInsets.only(bottom: 16),
          decoration: borderContainer(),
          child: Row(
            children: [
              Icon(Icons.local_offer, color: style.appColor, size: 16),
              SizedBox(width: 8),
              Expanded(
                  child: Text('14 Vouchers available',
                    style: TextStyle(
                        color: style.appColor,
                        fontFamily: 'medium'
                    ),
                  )
              ),
              Text('View',
                style: TextStyle(color: style.appRed),
              )
            ],
          ),
        );
    }

    borderContainer() {
        return BoxDecoration(
            border: Border.all(
                width: 1,
                color: (Colors.grey[300])!
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(5)
            ),
            color: Colors.white
        );
    }

    whiteBox() {
        return BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(5)
            ),
            color: Colors.white
        );
    }

    borderBottom() {
        return BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    width: 1,
                    color: (Colors.grey[300])!
                )
            )
        );
    }

    Widget _buildImageBox(img, text) {
        return Container(
            child: Column(
                children: [
                    Container(
                        height: 70,
                        width: 70,
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: squareBox(),
                        child: Image.asset(img),
                    ),
                    Text('$text', style: TextStyle(fontFamily: 'medium'))
                ],
            )
        );
    }

    squareBox() {
        return BoxDecoration(
            border: Border.all(
                width: 2,
                color: (Colors.grey[300])!
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(3)
            )
        );
    }

    Widget _buildPriceContainer() {
        return Container(
          margin: EdgeInsets.only(bottom: 16),
          decoration: whiteBox(),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: borderBottom(),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Basket Value'),
                        Text('Rs. 200.00')
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery Charge'),
                        Text('Rs. 50.00')
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Amount Payable',
                          style: TextStyle(fontFamily: 'medium'),
                        ),
                        Text('Rs. 250.00',
                          style: TextStyle(fontFamily: 'medium'),
                        )
                      ],
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 8),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 233, 242, 225),
                          borderRadius: BorderRadius.all(
                              Radius.circular(5)
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Total Savings',
                            style: TextStyle(
                                color: style.appColor,
                                fontFamily: 'medium'
                            ),
                          ),
                          Text('Rs. 10.00',
                            style: TextStyle(
                                color: style.appColor,
                                fontFamily: 'medium'
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        );
    }

    titleLabel() {
        return TextStyle(
            fontSize: 17,
            fontFamily: 'medium'
        );
    }

    Widget _buildWalletContainer() {
        return Container(
            margin: EdgeInsets.only(bottom: 16),
            decoration: whiteBox(),
            child: Column(
                children: [
                    _buildLinkMethod('assets/images/paytm.png', 'Paytm', 'Up to Rs.500 CB. Min order Rs.1000. Assured CB of Rs.30. Avail cashback through scratch card on Paytm App.'),
                    Container(
                        padding: EdgeInsets.all(16),
                        decoration: borderBottom(),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Image.asset('assets/images/payzapp.png', width: 35),
                                SizedBox(width: 10),
                                _buildMiddleContainer('PayZapp', '5% cashback up to Rs.75. Min order Rs.1000. Use code GROCERY on payZapp page'),
                                SizedBox(width: 10),
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Radio(
                                    value: 'payzapp',
                                    groupValue: _current,
                                    onChanged: (e) {
                                      setState(() {
                                        _current = 'payzapp';
                                      });
                                    },
                                    activeColor: style.appColor,
                                  )
                              )
                            ],
                        ),
                    ),
                    _buildLinkMethod('assets/images/mobi.png', 'Mobikwik', 'Up to 5% cashback. Assured cashback of Rs.40. Minimum order Rs.1200.'),
                    Container(
                        padding: EdgeInsets.all(16),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Image.asset('assets/images/ola.png', width: 35),
                                SizedBox(width: 10),
                                _buildMiddleContainer('Olamoney', '10% cashback up to 100. Minimum order Rs.500 once on wallet or Postpaid transaction.'),
                                SizedBox(width: 10),
                                SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: Radio(
                                        value: 'olamoney',
                                        groupValue: _current,
                                        onChanged: (e) {
                                            setState(() {
                                                _current = 'olamoney';
                                            });
                                        },
                                        activeColor: style.appColor,
                                    )
                                )
                            ],
                        ),
                    )
                ],
            ),
        );
    }

    Widget _buildLinkMethod(img, title, text) {
        return Container(
            padding: EdgeInsets.all(16),
            decoration: borderBottom(),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Image.asset('assets/images/paytm.png', width: 35),
                    SizedBox(width: 10),
                    _buildMiddleContainer('Paytm', 'Up to Rs.500 CB. Min order Rs.1000. Assured CB of Rs.30. Avail cashback through scratch card on Paytm App.'),
                    SizedBox(width: 10),
                    Text('Link', style: redLabel())
                ],
            ),
        );
    }

    Widget _buildLinkMethod2(img, title, text, clr) {
        return Container(
            padding: EdgeInsets.all(16),
            decoration: borderBottom(),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Image.asset('assets/images/paytm.png', width: 35),
                    SizedBox(width: 10),
                    _buildSimpleMiddleContainer('$title', '$text', clr),
                    SizedBox(width: 10),
                    Text('Link', style: redLabel())
                ],
            ),
        );
    }

    redLabel() {
        return TextStyle(
            color: style.appRed
        );
    }

    Widget _buildMiddleContainer(title, detail) {
        return Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text('$title', style: boldLabel()),
                    SizedBox(height: 8),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Icon(Icons.local_offer, color: style.appColor, size: 16),
                            SizedBox(width: 8),
                            Expanded(
                                child: Text('$detail',
                                    style: TextStyle(
                                        color: style.appColor,
                                        fontSize: 12
                                    ),
                                )
                            ),
                        ],
                    ),
                ],
            )
        );
    }

    boldLabel() {
        return TextStyle(
            fontFamily: 'medium',
            fontSize: 16
        );
    }

    Widget _buildSimpleMethod(icn, val) {
        return Container(
            padding: EdgeInsets.all(16),
            decoration: borderBottom(),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Icon(icn),
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text('$val', style: boldLabel()),
                        )
                    ),
                    Icon(Icons.arrow_right)
                ],
            ),
        );
    }

    Widget _buildSimpleMiddleContainer(title, detail, clr) {
        return Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text('$title',
                      style: TextStyle(
                          fontFamily: 'medium',
                          fontSize: 16
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('$detail',
                        style: TextStyle(
                            color: clr,
                            fontSize: 12
                        ),
                    )
                ],
            )
        );
    }

}