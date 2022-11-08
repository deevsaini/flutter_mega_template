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

class downloadPage extends StatefulWidget {
  downloadPage({Key? key}) : super(key: key);

  static const String pageId = 'downloadPage';

  @override
  State<downloadPage> createState() => _downloadPageState();
}

class _downloadPageState extends State<downloadPage>
    with TickerProviderStateMixin {
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
      flexibleSpace: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Download',
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontFamily: 'bold'),
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
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '1 Video • 0 s • 129.6 MB',
                  style: TextStyle(color: Colors.grey),
                ),
                Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Color(0xFF252E39),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    'Edit',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ],
            ),
          ),
          _buildContent(),
          _buildContent(),
          _buildContent(),
          _buildContent(),
          RichText(
            text: TextSpan(
              text: 'Auto Downloads : ',
              style: TextStyle(color: Colors.white),
              children: const <TextSpan>[
                TextSpan(
                    text: ' On ',
                    style: TextStyle(fontFamily: 'bold', color: Colors.white)),
                TextSpan(
                    text: ' • Manage',
                    style: TextStyle(color: Colors.lightBlue)),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildContent() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => playMoviesPage()));
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Color(0xFF252E39),
        ),
        child: Row(
          children: [
            Container(
              height: 100,
              width: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.5), BlendMode.dstATop),
                  image: AssetImage('assets/images/p2.jpg'),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      width: 30,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Motu Patlu Kunfu Returns',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.white, fontFamily: 'bold'),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        '229.6 MB',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Prime',
                          style: TextStyle(
                              color: Colors.lightBlue, fontFamily: 'bold'),
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
