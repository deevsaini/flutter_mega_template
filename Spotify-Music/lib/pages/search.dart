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
import 'package:spotify/pages/seararchBrowse.dart';
import 'package:spotify/pages/searchPlay.dart';

class search extends StatefulWidget {
  search({Key? key}) : super(key: key);

  static const String page_id = "Search";

  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      automaticallyImplyLeading: false,
      title: Text('Search'),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.transparent,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => searchPlay()));
                },
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Artists, songs, or podcasts')
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Browse all',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            GridView.count(
              primary: false,
              crossAxisCount: 2,
              shrinkWrap: true,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 150 / 100,
              children: [
                _buildGrid('assets/images/s1.jpg', 'Podcast'),
                _buildGrid('assets/images/s2.jpg', 'New Release'),
                _buildGrid('assets/images/s3.jpg', 'Charts'),
                _buildGrid('assets/images/s4.jpg', 'Concerts'),
                _buildGrid('assets/images/s5.jpg', 'Podcast'),
                _buildGrid('assets/images/s6.jpg', 'New Release'),
                _buildGrid('assets/images/s7.jpg', 'Charts'),
                _buildGrid('assets/images/s9.jpg', 'Podcast'),
                _buildGrid('assets/images/s10.jpg', 'New Release'),
                _buildGrid('assets/images/s1.jpg', 'Podcast'),
                _buildGrid('assets/images/s2.jpg', 'New Release'),
                _buildGrid('assets/images/s3.jpg', 'Charts'),
                _buildGrid('assets/images/s4.jpg', 'Concerts'),
                _buildGrid('assets/images/s5.jpg', 'Podcast'),
                _buildGrid('assets/images/s6.jpg', 'New Release'),
                _buildGrid('assets/images/s7.jpg', 'Charts'),
                _buildGrid('assets/images/s9.jpg', 'Podcast'),
                _buildGrid('assets/images/s10.jpg', 'New Release'),
                _buildGrid('assets/images/s1.jpg', 'Podcast'),
                _buildGrid('assets/images/s2.jpg', 'New Release'),
                _buildGrid('assets/images/s3.jpg', 'Charts'),
                _buildGrid('assets/images/s4.jpg', 'Concerts'),
                _buildGrid('assets/images/s5.jpg', 'Podcast'),
                _buildGrid('assets/images/s6.jpg', 'New Release'),
                _buildGrid('assets/images/s7.jpg', 'Charts'),
                _buildGrid('assets/images/s9.jpg', 'Podcast'),
                _buildGrid('assets/images/s10.jpg', 'New Release'),
                _buildGrid('assets/images/s1.jpg', 'Podcast'),
                _buildGrid('assets/images/s2.jpg', 'New Release'),
                _buildGrid('assets/images/s3.jpg', 'Charts'),
                _buildGrid('assets/images/s4.jpg', 'Concerts'),
                _buildGrid('assets/images/s5.jpg', 'Podcast'),
                _buildGrid('assets/images/s6.jpg', 'New Release'),
                _buildGrid('assets/images/s7.jpg', 'Charts'),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildGrid(img, text) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => searchBrowse()));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(img),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: Text(
            text,
            style: TextStyle(fontFamily: 'medium'),
          ),
        ),
      ),
    );
  }
}
