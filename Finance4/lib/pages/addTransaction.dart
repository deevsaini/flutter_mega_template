/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:banky/pages/expenceSuccess.dart';
import 'package:flutter/material.dart';
import 'package:banky/helper/style.dart' as style;

class addTransaction extends StatefulWidget {
  addTransaction({Key? key}) : super(key: key);

  static const String page_id = "Add Transaction";

  @override
  _addTransactionState createState() => _addTransactionState();
}

class _addTransactionState extends State<addTransaction> {
  DateTime date = DateTime(2022, 12, 24);

  List<int> text = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: SingleChildScrollView(child: _buildBody()),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => expenseSuccess()));
          },
          child: Text(
            'Add Transaction',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontFamily: 'semi-bold'),
          ),
          style: style.simpleButton(),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(80),
      child: AppBar(
        backgroundColor: style.appColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.white),
        flexibleSpace: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Add Transaction',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'medium'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.white54, fontSize: 14),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    'Expense',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 18,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(left: 16, top: 50, bottom: 20),
          decoration: BoxDecoration(color: style.appColor),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\$ 2,600',
                style: TextStyle(
                    fontSize: 32, fontFamily: 'medium', color: Colors.white),
              ),
              Row(
                children: [
                  Text(
                    'USD',
                    style: TextStyle(color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.chevron_right,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Transaction Date',
                  style: TextStyle(color: Colors.grey),
                ),
                ElevatedButton(
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
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Category',
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shopping',
                      style: style.darkText(),
                    ),
                    IconButton(
                      onPressed: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return selectCategoryBottomModal();
                          },
                          isScrollControlled: true,
                        );
                      },
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Notes',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Buy a Macbook Pro 2020 \'15',
                  style: style.darkText(),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget selectCategoryBottomModal() {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: 30),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select Category',
                    style: style.darkText(),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      size: 20,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Enter name or email',
                  prefixIcon: Icon(Icons.search, color: Colors.black54),
                  hintStyle: TextStyle(color: Colors.grey.shade400),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              for (var i in text) catagory(),
            ],
          ),
        ),
      ),
    );
  }

  Widget catagory() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.local_drink_outlined,
              color: Colors.white,
              size: 25,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                'Cafe & Drinks',
                style: style.darkText(),
              ),
            ),
          ),
          Text(
            '28 trans.',
            style: TextStyle(color: Colors.grey),
          )
        ],
      ),
    );
  }
}
