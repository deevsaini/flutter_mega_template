/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:prime_video_fluttermarketplace/pages/loginPage.dart';
import 'package:prime_video_fluttermarketplace/pages/selectLanguagePage.dart';
import 'package:prime_video_fluttermarketplace/utilities/constancePage.dart'
    as style;

class welcomePage extends StatefulWidget {
  welcomePage({Key? key}) : super(key: key);

  static const String pageId = 'welcomePage';

  @override
  State<welcomePage> createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.white,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Color(0xFF1A242F), Color(0xFF121920)]),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(30),
                  child: FittedBox(
                    child: Image.asset('assets/images/l2.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => selectLanguagePage()));
                },
                child: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/mp1.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.8), BlendMode.dstATop),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              'Welcome To Prime Video',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Text(
              'Join Prime to watch the latest movies, TV shows and award winning Amazon Originals.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => loginPage()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 13.0),
                decoration: style.trialButtonStyle(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Start your 30-day free trial',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'bold'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Text(
              'with select credit or debit card',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    'Your fevorite channel all in one place',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    'with prime video channels. find shows and movies from your fevorite channels all in one place. enjoy with an add on subscription to channels to channels of your choice.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Wrap(
                  children: [
                    _buildChannelBox('LIONSGATE PLAY'),
                    _buildChannelBox('discovery+'),
                    _buildChannelBox('erosnow'),
                    _buildChannelBox('hoichoi'),
                    _buildChannelBox('DOCUBAY'),
                    _buildChannelBox('SHORTSTV'),
                    _buildChannelBox('MUBI'),
                    _buildChannelBox('manorama'),
                    _buildChannelBox('hayu'),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/i1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Text(
              'One membership, many benefits',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Text(
              'Join Prime to watch the latest movies, TV shows and award winning Amazon Originals.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => loginPage()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 13.0),
                decoration: style.trialButtonStyle(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'bold'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 200,
            width: double.infinity,
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: Color(0xFF1E1E1E),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/l1.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  'Terms and Privacy Notice Send us Feedback Help',
                  style: TextStyle(color: Colors.lightBlue),
                ),
                Text(
                  '@ 1996-2022,Amazon.com,Inc or its addliates',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChannelBox(txt) {
    return Container(
      height: 100,
      width: 150,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[Color(0xFF3A82A6), Color(0xFF002961)]),
      ),
      child: Center(
        child: Text(
          '$txt',
          textAlign: TextAlign.center,
          style:
              TextStyle(color: Colors.white, fontFamily: 'bold', fontSize: 17),
        ),
      ),
    );
  }
}
