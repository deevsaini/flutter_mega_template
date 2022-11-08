/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

class profilePage extends StatefulWidget {
  profilePage({Key? key}) : super(key: key);

  static const String pageId = 'profilePage';

  @override
  State<profilePage> createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE7EFFA),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildProfile(),
          SizedBox(
            height: 70,
          ),
          _buildContent('Name', 'Rahul Jograna'),
          _buildContent('Email', 'rahuljograna@gmail.com'),
          _buildContent('Phone', '+81 8884 5675 6443'),
          _buildContent('Address', 'Rupsha, Khulna, Bangladesh'),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/bg5.jpg'), fit: BoxFit.cover),
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
                Text(
                  'Profile',
                  style: TextStyle(
                      fontFamily: 'bold', fontSize: 20, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {
                      //
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Edit',
                          style: TextStyle(
                              fontFamily: 'bold', color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            bottom: -200,
            child: Align(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(60),
                  child: FittedBox(
                    child: Image.asset('assets/images/3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(txt1, txt2) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$txt1',
            style:
                TextStyle(color: Colors.grey, fontFamily: 'bold', fontSize: 17),
          ),
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$txt2',
                  style: TextStyle(
                      color: Colors.black, fontFamily: 'bold', fontSize: 17),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
