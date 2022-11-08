/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:medical/helper/style.dart';
import 'package:medical/pages/eventDetails.dart';

class eventAndNews extends StatefulWidget {
  eventAndNews({Key? key}) : super(key: key);

  static const String page_id = "Event And News";

  @override
  _eventAndNewsState createState() => _eventAndNewsState();
}

class _eventAndNewsState extends State<eventAndNews> {
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
      leadingWidth: 80,
      elevation: 0,
      backgroundColor: appColor,
      iconTheme: IconThemeData(color: Colors.white),
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: SizedBox(
        child: Text(
          'Event & News',
          style: TextStyle(fontSize: 16, fontFamily: 'medium'),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          softWrap: false,
        ),
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              appColor,
              secondColor,
            ],
          ),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.filter_list_outlined,
              color: Colors.white,
            )
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Row(
            children: [
              Icon(
                Icons.search_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.notification_add_outlined,
                color: Colors.white,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          events(),
          events(),
          events(),
        ],
      ),
    );
  }

  Widget events() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => eventDetails()));
      },
      child: Container(
        width: double.infinity,
        height: 250,
        color: Colors.white,
        child: Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/event.jpg'),
                fit: BoxFit.cover),
          ),
          child: Container(
            width: double.infinity,
            height: 250,
            padding: EdgeInsets.only(top: 180, left: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'MONDAY,FEBRUARY 29TH 2022',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    '5 SURPRICING SOURCES OF VITA',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    softWrap: false,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontFamily: 'medium'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
