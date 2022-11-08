/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

class hiddenVideosPage extends StatefulWidget {
  hiddenVideosPage({Key? key}) : super(key: key);

  static const String pageId = 'hiddenVideosPage';

  @override
  State<hiddenVideosPage> createState() => _hiddenVideosPageState();
}

class _hiddenVideosPageState extends State<hiddenVideosPage> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.black,
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Text(
          'Hidden Videos',
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hidden Videos',
                  style: TextStyle(
                      color: Colors.black, fontFamily: 'bold', fontSize: 20),
                ),
                Text(
                  'We\'ll keep these videos out of future recommendations, but they\'ll still appear in search results, Use this page to remove a video from hidden list. Each profile has it\'s own list. To view and manage items hidden with a diffrent profile, switch to that profile.',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          _buildline(),
          _buildContent(),
          _buildline(),
          _buildContent(),
          _buildline(),
          _buildContent(),
          _buildline(),
          _buildContent(),
          _buildline(),
          _buildContent(),
          _buildline(),
          _buildContent(),
          _buildline(),
          _buildContent(),
          _buildline(),
          _buildContent(),
          _buildline(),
          _buildContent(),
          _buildline(),
          _buildContent(),
          _buildline(),
          _buildContent(),
          _buildline(),
          _buildContent(),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            height: 70,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/p16.jpg'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Tanhaji the Unsung Warrior',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(fontSize: 17, fontFamily: 'bold'),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Don\'t hide',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildline() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
