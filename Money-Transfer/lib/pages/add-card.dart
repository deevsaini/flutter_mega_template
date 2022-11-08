/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class AddCardPage extends StatefulWidget {
    AddCardPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Add Card';

    @override
    State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBack,
            appBar: AppBar(
                backgroundColor: style.appBack,
                automaticallyImplyLeading: false,
                elevation: 0,
            ),
            body: _buildBody(),
        );
    }

    Widget _buildBody() {
        return SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                        Text('Add New Card', style: style.pageTitle()),
                        SizedBox(height: 20),
                        _buildCard(),
                        Text('Fill in the fields below to add a new card',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'medium'
                            ),
                        ),
                        SizedBox(height: 20),

                        TextField(
                          decoration: style.inputTextDecoration('Place 16 digit card number', Colors.white),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          decoration: style.inputTextDecoration('Card Holder Name', Colors.white),
                        ),
                        SizedBox(height: 20),
                        Row(
                            children: [
                                Expanded(
                                    flex: 8,
                                    child: TextField(
                                      decoration: style.inputTextDecoration('Expiration Date', Colors.white),
                                    )
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                    flex: 4,
                                    child: TextField(
                                      decoration: style.inputTextDecoration('CVV', Colors.white),
                                    )
                                )
                            ],
                        ),
                        SizedBox(height: 20),
                        Container(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Add Card'),
                                style: style.simpleButton(),
                            ),
                        ),

                    ],
                ),
            ),
        );
    }

    Widget _buildCard() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 24),
        padding: EdgeInsets.all(16),
        decoration: style.cardDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('MasterCard'.toUpperCase(),
              style: style.boldLabel(),
            ),
            SizedBox(height: 16),
            Image.asset('assets/images/chip.png', width: 60),
            SizedBox(height: 10),
            Text('4242 4242 4242 4242',
              style: style.boldLabel(),
            ),
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Cardholder Name',
                            style: style.smallLabel()
                        ),
                        Text('Michel James'.toUpperCase(),
                          style: style.boldLabel(),
                        ),
                      ],
                    )
                ),
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Valid till',
                          style: style.smallLabel(),
                        ),
                        Text('24-25'.toUpperCase(),
                          style: style.boldLabel(),
                        ),
                      ],
                    )
                ),
                SizedBox(width: 16),
                Image.asset('assets/images/mastercard.png', width: 60)
              ],
            )
          ],
        ),
      );
    }

}
