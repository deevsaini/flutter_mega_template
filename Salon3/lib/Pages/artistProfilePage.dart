/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:slon3/Pages/artistDetailsPage.dart';
import 'package:slon3/Pages/artistWorkPage.dart';
import 'package:slon3/Pages/followingPage.dart';
import 'package:slon3/Utilities/constancePage.dart' as style;

class artistProfilePage extends StatefulWidget {
  artistProfilePage({Key? key}) : super(key: key);

  static const String pageId = 'artistProfilePage';

  @override
  State<artistProfilePage> createState() => _artistProfilePageState();
}

class _artistProfilePageState extends State<artistProfilePage> {
  List<int> text = [1, 2, 3, 4, 5, 6, 7];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              _buildProfile(),
              _favoriteButton(),
              _profileContent(),
            ],
          ),
          _buildDetailContent(),
          _buildTitle(),
          customProfile(),
          for (var i in text) _buildBooking(),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Work',
            style: TextStyle(fontFamily: 'bold', fontSize: 20),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => artistWorkPage()));
            },
            child: Text(
              'View All',
              style: TextStyle(fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
            alignment: FractionalOffset.center,
            image: AssetImage('assets/images/2.jpg'),
            fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.transparent,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.transparent,
                      child: IconButton(
                        icon: Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          //
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBooking() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Subcategories Type',
                    style: TextStyle(fontFamily: 'bold'),
                  ),
                  Text(
                    'Rs. 200 for 20 Min.',
                    style: TextStyle(
                        fontFamily: 'bold', fontSize: 10, color: Colors.grey),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => artistDetailsPage()));
                },
                child: Container(
                  height: 35,
                  width: 80,
                  decoration: style.contentButtonStyle(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Book',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _favoriteButton() {
    return Positioned(
        bottom: -50,
        right: 20,
        child: IconButton(
          icon: Icon(
            Icons.favorite,
            color: style.appColor,
          ),
          onPressed: () {
            //
          },
        ));
  }

  Widget _profileContent() {
    return Positioned(
      bottom: -190,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: style.appColor, width: 2),
                borderRadius: BorderRadius.circular(50)),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(40),
                  child: FittedBox(
                    child: Image.asset('assets/images/1.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Text(
            'Shayra Alam',
            style: TextStyle(
                color: style.appColor, fontFamily: 'bold', fontSize: 20),
          ),
          Text(
            'Hairstyle Artist',
            style: TextStyle(color: Colors.grey),
          ),
          Row(
            children: [
              Icon(Icons.star, color: Colors.orangeAccent),
              Icon(Icons.star, color: Colors.orangeAccent),
              Icon(Icons.star, color: Colors.orangeAccent),
              Icon(Icons.star, color: Colors.orangeAccent),
              Icon(Icons.star, color: Colors.orangeAccent),
              SizedBox(
                width: 10,
              ),
              Text(
                '4.2 (460 Review)',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.location_on, color: Colors.grey),
              SizedBox(
                width: 10,
              ),
              Text(
                'Hawamahal Road 13 KM',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => followingPage()));
            },
            child: Container(
              height: 35,
              width: 100,
              decoration: style.contentButtonStyle(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Follow',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailContent() {
    return Container(
      margin: EdgeInsets.only(top: 200),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => followingPage()));
            },
            child: Column(
              children: [
                Text(
                  '100',
                  style: TextStyle(color: style.appColor, fontSize: 25),
                ),
                Text(
                  'Request',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            width: 1,
            color: Colors.grey,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => followingPage()));
            },
            child: Column(
              children: [
                Text(
                  '300',
                  style: TextStyle(color: style.appColor, fontSize: 25),
                ),
                Text(
                  'Followers',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget customProfile() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          children: [
            buildProfile(Image.asset('assets/images/2.jpg'), ('Dodiya')),
            buildProfile(Image.asset('assets/images/1.jpg'), ('Mehul')),
            buildProfile(Image.asset('assets/images/3.jpg'), ('Hirani')),
            buildProfile(Image.asset('assets/images/2.jpg'), ('Dodiya')),
            buildProfile(Image.asset('assets/images/1.jpg'), ('Mehul')),
            buildProfile(Image.asset('assets/images/3.jpg'), ('Hirani')),
            buildProfile(Image.asset('assets/images/2.jpg'), ('Dodiya')),
            buildProfile(Image.asset('assets/images/1.jpg'), ('Mehul')),
            buildProfile(Image.asset('assets/images/3.jpg'), ('Hirani')),
          ],
        ),
      ),
    );
  }

  Widget buildProfile(img, txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox.fromSize(
                size: Size.fromRadius(30),
                child: FittedBox(
                  child: img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            '$txt',
            style: TextStyle(fontFamily: 'semibold'),
          ),
        ],
      ),
    );
  }
}
