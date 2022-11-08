/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/pages/add_properties_step1.dart';
import 'package:home/pages/profile.dart';
import 'package:home/widget/elevated_button.dart';
import '../components/styles.dart';

class AddPropertyStart extends StatefulWidget {
  static const String id = 'AddPropertyStart';

  const AddPropertyStart({Key? key}) : super(key: key);

  @override
  _AddPropertyStartState createState() => _AddPropertyStartState();
}

class _AddPropertyStartState extends State<AddPropertyStart> {
  String dropdownValue = 'Sale';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: appColor),
        elevation: 0,
        title: new Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            buildDropDown(),
          ],
        ),
        leading: Container(
          padding: EdgeInsets.only(left: 16),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Profile()));
            },
            child: CircleAvatar(
              radius: 14,
              backgroundImage: AssetImage('assets/images/man.png'),
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.all(40),
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      boldHeading('Add your properties'),
                      SizedBox(height: 6),
                      blackText(
                          'Please add some properties that you hosted on your area'),
                    ],
                  ),
                ),
                // Opacity(
                //   opacity: 0.4,
                //   child: ClipRRect(
                //     borderRadius: const BorderRadius.only(
                //         bottomLeft: Radius.circular(30),
                //         bottomRight: Radius.circular(30)),
                //     child: Image.asset(
                //       'assets/images/home.jpg',
                //       fit: BoxFit.cover,
                //       width: double.infinity,
                //     ),
                //   ),
                // )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 50),
                child: MyElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddPropertyStep1()));
                  },
                  text: 'Add New Properties',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildDropDown() {
    return Container(
      height: 30,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              offset: const Offset(0, 2),
              blurRadius: 12.0),
        ],
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
      ),
      child: DropdownButton<String>(
        underline: SizedBox(),
        iconSize: 18,
        iconEnabledColor: appColor,
        value: dropdownValue,
        onChanged: (newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
        },
        items: [
          'Sale',
          'Buy',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(color: appColor, fontSize: 14),
            ),
          );
        }).toList(),
      ),
    );
  }
}
