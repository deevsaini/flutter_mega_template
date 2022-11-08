/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/pages/tabs.dart';
import '../components/styles.dart';

class ProfileListingStatus extends StatefulWidget {
  static const String id = 'ProfileListingStatus';

  const ProfileListingStatus({Key? key}) : super(key: key);

  @override
  _ProfileListingStatusState createState() => _ProfileListingStatusState();
}

class _ProfileListingStatusState extends State<ProfileListingStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        title: Text('Status Listing', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.close,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TabsExample()));
            },
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                boldHeading('All Listing'),
                Row(
                  children: [
                    Text('Sort by'),
                    Icon(
                      Icons.sort,
                      color: appColor,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            _buildHouseList('assets/images/h1.jpg',
                'The world seamdsouse hotel', '30 Feb. 2022'),
            _buildHouseList('assets/images/h2.jpg',
                'Romantic sunsetvibe Love bali', '30 Feb. 2022'),
            _buildHouseList('assets/images/h3.jpg', 'Romantic sunset Love bali',
                '32 Feb. 2022'),
            _buildHouseList('assets/images/h1.jpg', 'Romantic sunset Love bali',
                '12 Feb. 2024'),
            _buildHouseList('assets/images/h1.jpg', 'Romantic sunset Love bali',
                '30 Feb. 2022'),
          ],
        ),
      ),
    );
  }

  Widget _buildHouseList(img, name, address) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(24),
        margin: EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                img,
                fit: BoxFit.cover,
                width: 80,
                height: 80,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        blackText(name),
                        SizedBox(height: 5),
                        greyTextSmall(address),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.favorite_border, color: Colors.black)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
