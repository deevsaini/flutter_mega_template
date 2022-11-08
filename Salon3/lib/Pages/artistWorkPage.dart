/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:slon3/Utilities/constancePage.dart' as style;

class artistWorkPage extends StatefulWidget {
  artistWorkPage({Key? key}) : super(key: key);

  static const String pageId = 'artistWorkPage';

  @override
  State<artistWorkPage> createState() => _artistWorkPageState();
}

class _artistWorkPageState extends State<artistWorkPage> {
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
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.transparent,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
            Text(
              'Artist Work',
              style: TextStyle(fontSize: 17),
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
          gallaryContent(),
        ],
      ),
    );
  }

  Widget gallaryContent() {
    final List<String> imageList = [
      'assets/images/3.jpg',
      "assets/images/2.jpg",
      "assets/images/1.jpg",
      "assets/images/2.jpg",
      "assets/images/3.jpg",
      "assets/images/4.jpg",
      "assets/images/2.jpg",
      "assets/images/3.jpg",
      "assets/images/4.jpg",
    ];
    return Container(
      child: GridView.count(
        primary: false,
        crossAxisCount: 2,
        shrinkWrap: true,
        childAspectRatio: 90 / 100,
        padding: EdgeInsets.only(top: 16, left: 16, bottom: 16),
        children: List.generate(imageList.length, (index) {
          return Container(
            child: Stack(
              children: <Widget>[
                Container(
                    height: double.infinity,
                    margin: EdgeInsets.only(right: 16, bottom: 16),
                    child: Container(
                      height: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imageList[index]),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    )),
              ],
            ),
          );
        }),
      ),
    );
  }
}
