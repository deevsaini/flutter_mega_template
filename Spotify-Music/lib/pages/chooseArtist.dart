/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:spotify/helper/style.dart';
import 'package:spotify/pages/tabs.dart';

class chooseArtist extends StatefulWidget {
  chooseArtist({Key? key}) : super(key: key);

  static const String page_id = "Choose Artist";

  @override
  _chooseArtistState createState() => _chooseArtistState();
}

class _chooseArtistState extends State<chooseArtist> {
  List<Item> categories = <Item>[
    Item('assets/images/s1.jpg', 'Arjit Singh'),
    Item('assets/images/s2.jpg', 'Arjit Singh'),
    Item('assets/images/s3.jpg', 'Arjit Singh'),
    Item('assets/images/s4.jpg', 'Arjit Singh'),
    Item('assets/images/s5.jpg', 'Arjit Singh'),
    Item('assets/images/s1.jpg', 'Arjit Singh'),
    Item('assets/images/s2.jpg', 'Arjit Singh'),
    Item('assets/images/s3.jpg', 'Arjit Singh'),
    Item('assets/images/s1.jpg', 'Arjit Singh'),
    Item('assets/images/s2.jpg', 'Arjit Singh'),
    Item('assets/images/s3.jpg', 'Arjit Singh'),
    Item('assets/images/s4.jpg', 'Arjit Singh'),
    Item('assets/images/s5.jpg', 'Arjit Singh'),
    Item('assets/images/s1.jpg', 'Arjit Singh'),
    Item('assets/images/s2.jpg', 'Arjit Singh'),
    Item('assets/images/s3.jpg', 'Arjit Singh'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _buildBody(),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16),
        child: Container(
          color: Colors.transparent,
          width: 100,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => tabs()));
            },
            child: Text(
              'Done',
              style: TextStyle(fontFamily: 'semi-bold'),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.black,
              minimumSize: const Size.fromHeight(50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Choose 3 or more artist you like',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(color: Colors.black54)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              childAspectRatio: 90 / 100,
              physics: ScrollPhysics(),
              children: categories.map((e) {
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                image: AssetImage(
                                  (e.img),
                                ),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Text(
                      e.text,
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class Item {
  const Item(this.img, this.text);
  final String img;
  final String text;
}
