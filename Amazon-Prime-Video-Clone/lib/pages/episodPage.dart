/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:prime_video_fluttermarketplace/pages/playMoviesPage.dart';

class episodPage extends StatefulWidget {
  episodPage({Key? key}) : super(key: key);

  static const String pageId = 'episodPage';

  @override
  State<episodPage> createState() => _episodPageState();
}

class _episodPageState extends State<episodPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0D171D),
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Color(0xFF0D171D),
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Text(
          'Episod',
          style:
              TextStyle(color: Colors.white, fontSize: 20, fontFamily: 'bold'),
        ),
      ),
      flexibleSpace: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: [
                Text(
                  '6 Videos',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          GridView.count(
            primary: false,
            crossAxisCount: 2,
            shrinkWrap: true,
            mainAxisSpacing: 2,
            crossAxisSpacing: 15,
            childAspectRatio: 1.3 / 0.7,
            children: [
              _buildWithMoviesType('assets/images/p1.jpg'),
              _buildWithMoviesType('assets/images/p2.jpg'),
              _buildWithMoviesType('assets/images/p3.jpg'),
              _buildWithMoviesType('assets/images/p4.jpg'),
              _buildWithMoviesType('assets/images/p5.jpg'),
              _buildWithMoviesType('assets/images/p6.jpg'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildWithMoviesType(img) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => playMoviesPage()));
      },
      child: Container(
        height: 100,
        width: 150,
        margin: EdgeInsets.only(top: 5, bottom: 5),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('$img'),
          ),
        ),
      ),
    );
  }
}
