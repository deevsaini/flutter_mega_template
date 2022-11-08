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
import '../components/styles.dart';

class Story extends StatefulWidget {
  static const String id = 'Story';

  const Story({Key? key}) : super(key: key);

  @override
  _StoryState createState() => _StoryState();
}

class _StoryState extends State<Story> {
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
            SizedBox(height: 40),
            centerHeading("Our Story"),
            sepLine(),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  boldText(
                      "Fashion Shop - Free Ecommerce App Kit is a free download App. You can open This Fashion Shop - File by Initappz you can buy this app from oficial website."),
                  SizedBox(height: 20),
                  boldText(
                      "Create stunning shop wiht bulletproof guidelines and thoughtful components. Its library contains more than 50+ components supporting Light & dark Mode and 60+ ready to use mobile screens.")
                ],
              ),
            ),
            SizedBox(height: 30),
            Image.asset(
              'assets/images/collection.jpg',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width * 1,
            ),
            SizedBox(height: 40),
            centerHeading("Sign up"),
            sepLine(),
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                  "Receive early access to new arrivals, sales, exclusive content, events and much more!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email Address',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text("Submit",
                    style: TextStyle(fontSize: 16, fontFamily: 'medium')),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: appColor2,
                  onPrimary: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
