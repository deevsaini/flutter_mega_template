/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:travelo/pages/reviewsPage.dart';
import 'package:travelo/utilities/constantPage.dart' as style;

class selectRoomPage extends StatefulWidget {
  selectRoomPage({Key? key}) : super(key: key);

  static const String pageId = 'selectRoomPage';

  @override
  State<selectRoomPage> createState() => _selectRoomPageState();
}

class _selectRoomPageState extends State<selectRoomPage> {
  List<int> text = [1, 2, 3, 4, 5, 6, 7];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF0F2F6),
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              _buildProfile(),
              Padding(
                padding: const EdgeInsets.only(
                    top: 130, right: 20, left: 20, bottom: 10),
                child: _buildContent(
                  Image.asset('assets/images/h2.jpg'),
                  'Delux Room',
                  'Room Size : 27 m2',
                  'Free Cancellation',
                  '\$ 143',
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: _buildContent(
              Image.asset('assets/images/h2.jpg'),
              'Delux Room',
              'Room Size : 27 m2',
              'Free Cancellation',
              '\$ 143',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: _buildContent(
              Image.asset('assets/images/h2.jpg'),
              'Delux Room',
              'Room Size : 27 m2',
              'Free Cancellation',
              '\$ 143',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: _buildContent(
              Image.asset('assets/images/h2.jpg'),
              'Delux Room',
              'Room Size : 27 m2',
              'Free Cancellation',
              '\$ 143',
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
        image: DecorationImage(
            image: AssetImage('assets/images/1.jpg'), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Text(
                    'Select Room',
                    style: TextStyle(
                        fontFamily: 'bold', color: Colors.white, fontSize: 30),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(img, txt1, txt2, txt3, txt4) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        '$txt1',
                        style: TextStyle(fontFamily: 'bold', fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      Text('$txt2')
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(30),
                      child: FittedBox(
                        child: img,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '$txt3',
              style: TextStyle(fontFamily: 'bold'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildInfoContent(style.appColor.withOpacity(0.3), Icons.wifi,
                      style.appColor, 'Free \nWifi'),
                  _buildInfoContent(Colors.orange.withOpacity(0.3),
                      Icons.dangerous, Colors.orange, 'Non - \nRefunded'),
                  _buildInfoContent(Colors.red.withOpacity(0.3),
                      Icons.restaurant, Colors.red, 'Free \nRestaurant'),
                  _buildInfoContent(Colors.green.withOpacity(0.3),
                      Icons.smoking_rooms, Colors.green, 'No - \nSmoking'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border(
                  bottom: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$txt4',
                        style: TextStyle(fontFamily: 'bold', fontSize: 20),
                      ),
                      Text(
                        '/ night',
                        style: TextStyle(fontFamily: 'bold', fontSize: 10),
                      ),
                    ],
                  ),
                  _buildButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoContent(bgclr, icn, icnclr, txt) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, left: 5, right: 5),
      child: Column(
        children: [
          Container(
            height: 40,
            width: 40,
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              color: bgclr,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Icon(
                icn,
                color: icnclr,
              ),
            ),
          ),
          Text(
            '$txt',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => reviewsPage()));
            },
            child: Container(
              width: 150,
              padding: EdgeInsets.symmetric(vertical: 13.0),
              decoration: style.contentButtonStyle(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Choose',
                    style: TextStyle(
                        color: Colors.white, fontSize: 17, fontFamily: 'bold'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
