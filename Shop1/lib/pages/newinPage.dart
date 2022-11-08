/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:shop1_flutter_marketplace_hardik/utilities/constancePage.dart'
    as style;
import 'package:flutter/material.dart';

class newinPage extends StatefulWidget {
  newinPage({Key? key}) : super(key: key);

  static const String pageId = 'newinPage';

  @override
  State<newinPage> createState() => _newinPageState();
}

class _newinPageState extends State<newinPage> {
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
      backgroundColor: Colors.white,
      elevation: 0,
      flexibleSpace: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.chevron_left,
              color: Colors.black,
            ),
          ),
          Text(
            'New In',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            GridView.count(
              primary: false,
              crossAxisCount: 2,
              shrinkWrap: true,
              childAspectRatio: 100 / 100,
              children: [
                InkWell(
                  onTap: () {},
                  child: _buildItemContent('Handbag Lv', '\$ 18',
                      AssetImage('assets/images/s1.png')),
                ),
                InkWell(
                  onTap: () {},
                  child: _buildItemContent(
                      'Dress B', '\$ 18', AssetImage('assets/images/s11.png')),
                ),
                InkWell(
                  onTap: () {},
                  child: _buildItemContent(
                      'Jackate F', '\$ 50', AssetImage('assets/images/s5.png')),
                ),
                InkWell(
                  onTap: () {},
                  child: _buildItemContent(
                      'Shirt M', '\$ 20', AssetImage('assets/images/s2.png')),
                ),
                InkWell(
                  onTap: () {},
                  child: _buildItemContent(
                      'T-Shirt F', '\$ 30', AssetImage('assets/images/s3.png')),
                ),
                InkWell(
                  onTap: () {},
                  child: _buildItemContent(
                      'Jacket Lv', '\$ 40', AssetImage('assets/images/s4.png')),
                ),
                InkWell(
                  onTap: () {},
                  child: _buildItemContent('Handbag Lv', '\$ 18',
                      AssetImage('assets/images/s1.png')),
                ),
              ],
            ),
            _buildTitle('New Edits'),
            _buildHeadingItemContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Wrap(
            children: [
              Text(
                '$txt',
                style: TextStyle(fontFamily: 'bold', fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildItemContent(txt1, txt2, img) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 130,
          width: 150,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 20.0,
              ),
            ],
          ),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 20, left: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Text(
                            '$txt1',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                        ),
                        Icon(
                          Icons.arrow_right,
                          color: style.appColor,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                right: -10,
                top: -10,
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: img,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHeadingItemContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Stack(
        alignment: Alignment.center,
        textDirection: TextDirection.rtl,
        fit: StackFit.loose,
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            height: 150,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 20.0,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 300,
                    child: Text(
                      'New Trend',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontFamily: 'bold'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            height: 180,
            width: 130,
            right: 20,
            bottom: 10,
            child: SizedBox(
              height: 180,
              width: 130,
              child: Image.asset('assets/images/s13.png', fit: BoxFit.contain),
            ),
          ),
        ],
      ),
    );
  }
}
