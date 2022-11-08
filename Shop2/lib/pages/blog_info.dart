/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:shop2/widget/appbar.dart';
import 'package:shop2/widget/NavBar.dart';
import 'package:shop2/widget/footer.dart';
import '../components/styles.dart';

class BlogInfo extends StatefulWidget {
  static const String id = 'BlogInfo';

  const BlogInfo({Key? key}) : super(key: key);

  @override
  _BlogInfoState createState() => _BlogInfoState();
}

class _BlogInfoState extends State<BlogInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Colors.white,
      appBar: BaseAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 16),
            Image.asset(
              'assets/images/collection.jpg',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width * 1,
              height: 260,
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                      "2022 Style Guide: The Biggest Fall Trends".toUpperCase(),
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 3,
                        fontSize: 16,
                      )),
                  SizedBox(height: 16),
                  boldText(
                      "Fashion Shop - Free Ecommerce App Kit is a free download App. You can open This Fashion Shop - File by Initappz you can buy this app from oficial website."),
                  SizedBox(height: 20),
                  boldText(
                      "Create stunning shop wiht bulletproof guidelines and thoughtful components. Its library contains more than 50+ components supporting Light & dark Mode and 60+ ready to use mobile screens."),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Image.asset(
                      'assets/images/collection1.jpg',
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width * 1,
                      height: 500,
                    ),
                  ),
                  boldText(
                      "I found this Saint Laurent Canvas handbag this summer and immediately fell in love. The neutral fabrics are so beautiful and i like how this handbag can also carry into fall. The mini Fendi bucket bag with the shree fabric is so fun and such a statement bag. Also this DeMellier off white bag is so cute to carry to a dinner with you or going out, it's small but not too small to fit your phone and keys still."),
                  SizedBox(height: 25),
                  boldText("Posted by FashionShop | 3 Days ago"),
                  SizedBox(height: 25),
                  boldText("#Fashion    #Tips"),
                ],
              ),
            ),
            footerMain(),
          ],
        ),
      ),
    );
  }
}
