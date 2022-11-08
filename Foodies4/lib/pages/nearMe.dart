/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:fooddoor/helper/style.dart' as style;
import 'package:fooddoor/pages/filter.dart';

class nearMe extends StatefulWidget {
  nearMe({Key? key}) : super(key: key);

  static const String page_id = "Near Me";

  @override
  _nearMeState createState() => _nearMeState();
}

class _nearMeState extends State<nearMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: Colors.black),
      title: Center(
        child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: style.appColor.withOpacity(0.08),
              borderRadius: BorderRadius.circular(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on_outlined),
              SizedBox(
                width: 5,
              ),
              Text(
                '13A Masr Street New York',
                style: TextStyle(color: Colors.black, fontSize: 12),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Icon(Icons.notification_add_outlined),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Flexible(
                  child: TextField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: 'Search food and Restaurant',
                      prefixIcon: Icon(Icons.search, color: Colors.black54),
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                IconButton(
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => filter())),
                  },
                  icon: Icon(
                    Icons.format_align_left_rounded,
                    color: style.secondaryColor,
                    size: 36,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Near By Restaurants',
              style: style.headText(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '200+ Restaurants found near you',
            ),
            SizedBox(
              height: 20,
            ),
            style.shopContainer(),
            style.shopContainer(),
            style.shopContainer(),
            style.shopContainer(),
          ],
        ),
      ),
    );
  }
}
