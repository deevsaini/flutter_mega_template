/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:pet_care/pages/select_doctor.dart';
import 'package:pet_care/widget/elevated_button.dart';
import '../components/styles.dart';
import 'package:flutter/cupertino.dart';

class SearchService extends StatefulWidget {
  static const String id = 'SearchService';

  const SearchService({Key? key}) : super(key: key);

  @override
  _SearchServiceState createState() => _SearchServiceState();
}

class _SearchServiceState extends State<SearchService> {
  List<Item> Items = [
    Item('assets/images/50.png', 'Veternity'),
    Item('assets/images/41.png', 'Crooming'),
    Item('assets/images/42.png', 'Pvt boarding'),
    Item('assets/images/43.png', 'Adoption'),
    Item('assets/images/44.png', 'Dog Walking'),
    Item('assets/images/45.png', 'Training'),
    Item('assets/images/47.png', 'Pvt Taxi'),
    Item('assets/images/46.png', 'Pvt date'),
    Item('assets/images/48.png', 'Other'),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: backgroundColor,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.all(30),
              color: backgroundColor,
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'What are you \n looking for, ',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'bold',
                            fontSize: 32),
                        children: [
                          TextSpan(
                            text: 'Richard?',
                            style: TextStyle(
                                color: appColor3,
                                fontFamily: 'bold',
                                fontSize: 32),
                          ),
                        ]),
                  ),
                  SizedBox(height: 50),
                  GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    shrinkWrap: true,
                    children: Items.map((e) {
                      return _buildCards(context, e);
                    }).toList(),
                  )
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildCards(context, e) {
    return GestureDetector(
      onTap: () {
        _ModalBottomSheetCart(context);
      },
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(e.img, width: 40, height: 40)),
                SizedBox(height: 10),
                blackText(e.txt),
              ])),
    );
  }

  void _ModalBottomSheetCart(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30.0),
          ),
        ),
        builder: (BuildContext bc) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              centerTitle: true,
              automaticallyImplyLeading: false,
              title: boldText("Select a date"),
              leading: IconButton(
                icon: Icon(
                  Icons.close,
                  size: 20,
                  color: appColor,
                ),
                onPressed: () {},
              ),
            ),
            body: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (value) {},
              initialDateTime: DateTime.now(),
            ),
            bottomNavigationBar: Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(children: [
                Expanded(
                  child: MyElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SelectDoctor()));
                      },
                      text: 'Show 12 results',
                      colors: appColor),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    child: OutlinedButton(
                      child: Text("Skip", style: TextStyle(color: appColor)),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.all(14),
                        side: BorderSide(
                          color: appColor,
                        ),
                        backgroundColor: Colors.transparent,
                        primary: Colors.black54,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ]),
            ),
          );
        });
  }
}

class Item {
  const Item(this.img, this.txt);
  final img;
  final txt;
}
