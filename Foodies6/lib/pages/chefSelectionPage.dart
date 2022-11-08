/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/itemPage.dart';
import 'package:foodies_fluttermarketplace_hardik/utilities/constance.dart'
    as style;

class chefSelectionPage extends StatefulWidget {
  chefSelectionPage({Key? key}) : super(key: key);

  static const String pageId = 'chefSelectionPage';

  @override
  State<chefSelectionPage> createState() => _chefSelectionPageState();
}

class _chefSelectionPageState extends State<chefSelectionPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: _buildBody(),
          bottomNavigationBar: _buildBottomNavigationBar()),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            _buildTitle(),
            _buildContent(AssetImage('assets/images/c1.jpg'), 'PERSONAL CHEF'),
            _buildContent(AssetImage('assets/images/c2.jpg'), 'BECOME A CHEF'),
            _buildContent(
                AssetImage('assets/images/c3.jpg'), 'BECOME A TRAINER'),
            _buildContent(
                AssetImage('assets/images/c4.jpg'), 'BECOME A TRAINER'),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Welcome John!',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: 'bold', color: Colors.black, fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                'What are you looking for today?',
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContent(img, txt) {
    return Container(
      height: 200,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.srcOver),
            image: img,
            fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                child: Center(
                  child: SizedBox(
                    width: 180,
                    child: Text(
                      '$txt',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontFamily: 'bold'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            child: Container(
              height: 40,
              width: 50,
              decoration: BoxDecoration(
                  color: style.itemColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Center(
                child: Checkbox(
                  checkColor: style.itemColor,
                  activeColor: Colors.white,
                  value: isChecked,
                  shape: CircleBorder(),
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => itemPage()));
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle1(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Continue',
                style: TextStyle(
                    color: Colors.white, fontSize: 17, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
