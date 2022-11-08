/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:salon2/pages/slot.dart';
import '../components/styles.dart' as style;

class Category extends StatefulWidget {
  static const String id = 'Category';

  const Category({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container();
  }

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedValue = 0;

  List<Item> stylist = <Item>[
    Item('assets/images/profile2.jpg'),
    Item('assets/images/barber.jpg'),
    Item('assets/images/beard.jpg'),
    Item('assets/images/beard2.jpg'),
    Item('assets/images/banner.jpg'),
  ];
  // CategoryType categoryType = CategoryType.ui;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
        iconTheme: const IconThemeData(color: Colors.black87),
        centerTitle: true,
        title: const Text(
          'Mens',
          style: TextStyle(color: style.appColor, fontFamily: "semi-bold"),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                segmentedControl(),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(children: [
                    if (selectedValue == 0)
                      _buildStylist()
                    else if (selectedValue == 1)
                      _buildStylist1()
                    else if (selectedValue == 2)
                      _buildStylist1()
                    else if (selectedValue == 3)
                      _buildStylist1()
                  ]),
                ),
                // _buildStylist(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildFooter(),
    );
  }

  Widget segmentedControl() {
    return Container(
      height: 75,
      child: ListView(
          padding: EdgeInsets.all(16),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          physics: ScrollPhysics(),
          children: [
            CupertinoSlidingSegmentedControl(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              groupValue: selectedValue,
              backgroundColor: Colors.black12,
              children: {
                0: buildSegment('Hair'),
                1: buildSegment('Beard'),
                2: buildSegment('Face'),
                3: buildSegment('Massage'),
              },
              onValueChanged: (i) {
                selectedValue = i.hashCode;
                setState(() {});
              },
            ),
          ]),
    );
  }

  Widget buildSegment(String text) => Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Text(text, style: TextStyle(fontSize: 16)),
      );

  Widget _buildStylist() {
    return Container(
      height: 600,
      child: ListView(
        children: stylist.map((e) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  height: 190,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.4), BlendMode.darken),
                        image: AssetImage(e.img),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const <Widget>[
                            Text("Custom Hair Cut",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                )),
                            Text("Rs.250",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                )),
                          ],
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                          child: const Text("Add Service",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "medium",
                              )),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: style.appColor,
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildStylist1() {
    return Container(
      height: 600,
    );
  }

  Widget _buildFooter() {
    return Container(
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          children: <Widget>[
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: style.appColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  )),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: Container(
                height: 50,
                child: ElevatedButton(
                  child: const Text("Book Appointment",
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "medium",
                      )),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Slot()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: style.appColor,
                    onPrimary: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Item {
  const Item(
    this.img,
  );
  final String img;
}
