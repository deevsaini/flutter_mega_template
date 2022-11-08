/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:travelo/pages/checkoutPage.dart';
import 'package:travelo/utilities/constantPage.dart' as style;

class appointmentPage extends StatefulWidget {
  appointmentPage({Key? key}) : super(key: key);

  static const String pageId = 'appointmentPage';

  @override
  State<appointmentPage> createState() => _appointmentPageState();
}

class _appointmentPageState extends State<appointmentPage> {
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
                  'assets/images/h5.jpg',
                  'Royal Palm Heritage',
                  'Purwokerto, Jateng',
                  '364 m from destonation',
                  '4.5',
                  '(3241 reviews)',
                  '\$ 143',
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: _buildContent(
              'assets/images/h1.jpg',
              'Grand Luxury\'s',
              'Banyumas, Jateng',
              '2.3 m from destonation',
              '4.2',
              '(2567 reviews)',
              '\$ 234',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: _buildContent(
              'assets/images/h2.jpg',
              'The Orlando House',
              'Ajibarang, Jateng',
              '1.1 Km from destonation',
              '3.8',
              '(1235 reviews)',
              '\$ 132',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: _buildContent(
              'assets/images/h3.jpg',
              'Mention Island',
              'Maldives, Jateng',
              '5.6 Km from destonation',
              '4.8',
              '(5432 reviews)',
              '\$ 320',
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Appointment',
                    style: TextStyle(
                        fontFamily: 'bold', color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(img, txt1, txt2, txt3, txt4, txt5, txt6) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            height: 100,
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$txt1',
                  style: TextStyle(fontFamily: 'bold', fontSize: 20),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.red,
                      size: 15,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '$txt2 - ',
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    Text(
                      '$txt3',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 15,
                    ),
                    SizedBox(width: 5),
                    Text(
                      '$txt4 - ',
                      style: TextStyle(color: Colors.black, fontSize: 10),
                    ),
                    Text(
                      '$txt5',
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                  ],
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
                            '$txt6',
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
                  MaterialPageRoute(builder: (context) => checkoutPage()));
            },
            child: Container(
              width: 150,
              padding: EdgeInsets.symmetric(vertical: 13.0),
              decoration: style.contentButtonStyle(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Appointment',
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
