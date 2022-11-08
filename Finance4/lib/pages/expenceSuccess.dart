/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:banky/pages/tabs.dart';
import 'package:flutter/material.dart';
import 'package:banky/helper/style.dart' as style;

class expenseSuccess extends StatefulWidget {
  expenseSuccess({Key? key}) : super(key: key);

  static const String page_id = "Expense Add Success";

  @override
  _expenseSuccessState createState() => _expenseSuccessState();
}

class _expenseSuccessState extends State<expenseSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: style.appColor,
      automaticallyImplyLeading: false,
      elevation: 0,
    );
  }

  Widget _buildBody() {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(color: style.appColor),
      child: Center(
        child: Container(
          height: 300,
          width: 250,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Colors.blue.shade50,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.check,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Success',
                style: TextStyle(
                    fontFamily: 'semi-bold',
                    fontSize: 26,
                    color: style.darkColor),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Successfully added expense.',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => tabs()));
                },
                child: Text('Done'),
                style: style.simpleButton(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
