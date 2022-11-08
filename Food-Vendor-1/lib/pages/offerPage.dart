/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:admin_app/pages/sideMenuPage.dart';
import 'package:flutter/material.dart';
import 'package:admin_app/utilities/consultsPage.dart' as style;

class offerPage extends StatefulWidget {
  offerPage({Key? key}) : super(key: key);

  static const String pageId = 'offerPage';

  @override
  State<offerPage> createState() => _offerPageState();
}

class _offerPageState extends State<offerPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int tabID = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: myDrawer(),
        key: _scaffoldKey,
        drawerEnableOpenDragGesture: false,
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  Widget myDrawer() {
    return Drawer(
      child: sideMenuPage(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: style.appColor,
      leading: InkWell(
        onTap: () => _scaffoldKey.currentState?.openDrawer(),
        child: Icon(Icons.menu),
      ),
      centerTitle: true,
      title: Text(
        'Offers',
        style: TextStyle(
            color: Colors.white, fontSize: 17, fontFamily: 'semibold'),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            _buildContent(),
            _buildContent(),
            _buildContent(),
            _buildContent(),
            _buildContent(),
            _buildContent(),
            _buildContent(),
            _buildContent(),
            _buildContent(),
            _buildContent(),
            _buildContent(),
            _buildContent(),
            _buildContent(),
            _buildContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: SizedBox.fromSize(
              size: Size.fromRadius(30),
              child: FittedBox(
                child: Image.asset('assets/images/3.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'Specails Thali - Veg',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontFamily: 'bold', fontSize: 15),
                        ),
                      ),
                      _buildSegment(),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            '1 Vegetable, Dal Makhani, 3 Roti, Rice, Curd, Salad & Papad.',
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'bold',
                                fontSize: 10),
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 40,
                              child: Text(
                                '\$ 12.02',
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontFamily: 'bold'),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                              child: Text(
                                '\$ 18.00',
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: style.appColor,
                                    fontSize: 13,
                                    fontFamily: 'bold'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      decoration: BoxDecoration(
          border:
              Border.all(color: tabID == 1 ? Colors.black : style.appColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                tabID = 1;
              });
            },
            child: Container(
              height: 20,
              decoration: segmentDecoration2(1),
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text('Off', style: segmentText(1)),
              )),
            ),
          ),
          InkWell(
              onTap: () {
                setState(() {
                  tabID = 2;
                });
              },
              child: Container(
                height: 20,
                decoration: segmentDecoration(2),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text('On', style: segmentText(2)),
                )),
              )),
        ],
      ),
    );
  }

  segmentDecoration(val) {
    return BoxDecoration(
        color: tabID == val ? style.appColor : Colors.transparent,
        border: Border());
  }

  segmentDecoration2(val) {
    return BoxDecoration(
        color: tabID == val ? Colors.black : Colors.transparent,
        border: Border());
  }

  segmentText(val) {
    return TextStyle(
      fontFamily: tabID == val ? 'bold' : 'semibold',
      color: tabID == val ? Colors.white : Colors.grey,
      fontSize: 10,
    );
  }
}
