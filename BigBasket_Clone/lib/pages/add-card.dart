/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:bigbasket/pages/delivery-options.dart';
import 'package:bigbasket/pages/verification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class AddCardPage extends StatefulWidget {
    AddCardPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Add card';

    @override
    State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {

    bool check = false;

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
            title: Text('Add card'),
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
                                children: [

                                    Container(
                                        width: double.infinity,
                                        padding: EdgeInsets.all(16),
                                        margin: EdgeInsets.only(bottom: 16),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)
                                            )
                                        ),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Text('Card Number', style: greyLabel()),
                                                TextField(
                                                    decoration: textFieldDecoration('Enter card number'),
                                                ),
                                                SizedBox(height: 24),
                                                Row(
                                                    children: [
                                                        Expanded(
                                                            child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                    Text('Valid Thru', style: greyLabel()),
                                                                    TextField(
                                                                        decoration: textFieldDecoration('DD-MM-YY'),
                                                                    ),
                                                                ],
                                                            )
                                                        ),
                                                        SizedBox(width: 16),
                                                        Expanded(
                                                            child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                    Text('CVV', style: greyLabel()),
                                                                    TextField(
                                                                        decoration: textFieldDecoration('Security Code'),
                                                                    ),
                                                                ],
                                                            )
                                                        ),
                                                    ],
                                                ),
                                                SizedBox(height: 24),
                                                Row(
                                                    children: [
                                                        SizedBox(
                                                            width: 22,
                                                            height: 22,
                                                            child: Checkbox(
                                                                value: check,
                                                                onChanged: (bool? val) {
                                                                    setState(() {
                                                                        check = !check;
                                                                    });
                                                                },
                                                                activeColor: style.appColor,
                                                            ),
                                                        ),
                                                        Padding(
                                                            padding: EdgeInsets.only(left: 4, right: 4),
                                                            child: Text('Save this card for faster payments',
                                                                style: TextStyle(
                                                                    color: Color.fromARGB(255, 139, 139, 139)
                                                                ),
                                                            ),
                                                        ),
                                                        Icon(Icons.info_outline, size: 16, color: Color.fromARGB(255, 139, 139, 139))
                                                    ],
                                                )
                                            ],
                                        ),
                                    ),

                                    Container(
                                        width: double.infinity,
                                        child: ElevatedButton(
                                            onPressed: () {},
                                            child: Text('Place Order & Pay'),
                                            style: style.simpleButton(),
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

    greyLabel() {
        return TextStyle(
            color: Colors.grey,
            fontSize: 16,
            fontFamily: 'medium'
        );
    }

    textFieldDecoration(val) {
        return InputDecoration(
            hintText: '$val',
            border: underlineDecoration(),
            enabledBorder: underlineDecoration(),
            focusedBorder: underlineDecoration()
        );
    }

    underlineDecoration() {
        return UnderlineInputBorder(
            borderSide: BorderSide(
                width: 1,
                color: (Colors.grey[300])!
            )
        );
    }

}