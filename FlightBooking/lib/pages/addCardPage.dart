/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:travelo/pages/bookFlightPage.dart';
import 'package:travelo/utilities/constantPage.dart' as style;

class addCardPage extends StatefulWidget {
  addCardPage({Key? key}) : super(key: key);

  static const String pageId = 'addCardPage';

  @override
  State<addCardPage> createState() => _addCardPageState();
}

class _addCardPageState extends State<addCardPage> {
  String Value = 'India';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF0F2F6),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              _buildProfile(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                _buildInputTextfield('Name'),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: style.appColor.withOpacity(0.3),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(13),
                            child: FittedBox(
                              child: Image(
                                  image: AssetImage('assets/images/f1.jpg')),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(child: _buildInputTextfield('Card Number')),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(child: _buildInputTextfield('Exp.Date')),
                    SizedBox(width: 10),
                    Expanded(child: _buildInputTextfield('CVV')),
                  ],
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Country City',
                        style: TextStyle(color: Colors.grey),
                      ),
                      DropdownButton<String>(
                        value: Value,
                        icon: const Icon(Icons.arrow_drop_down),
                        elevation: 16,
                        isExpanded: true,
                        style: const TextStyle(color: style.appColor),
                        onChanged: (String? newValue) {
                          setState(() {
                            Value = newValue!;
                          });
                        },
                        items: <String>[
                          'India',
                          'Us',
                          'Indonesia',
                          'Punjab',
                          'Russia',
                          'Turkey'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
                _buildButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
        image: DecorationImage(
            image: AssetImage('assets/images/1.jpg'), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    'Add Card',
                    style: TextStyle(
                        fontFamily: 'bold', color: Colors.white, fontSize: 30),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
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

  Widget _buildInputTextfield(txt) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        cursorColor: style.appColor,
        autofocus: true,
        decoration: InputDecoration(
          focusColor: Colors.black,
          labelText: '$txt',
          filled: true,
          fillColor: Colors.white,
          labelStyle: TextStyle(
            color: Colors.grey,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => bookFlightPage()));
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 13.0),
              decoration: style.contentButtonStyle(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Add Card',
                    style: TextStyle(
                        color: Colors.white, fontSize: 17, fontFamily: 'bold'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
