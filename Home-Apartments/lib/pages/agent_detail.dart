/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/pages/property_detail.dart';
import '../components/styles.dart';

class AgentDetail extends StatefulWidget {
  static const String id = 'AgentDetail';

  const AgentDetail({Key? key}) : super(key: key);

  @override
  _AgentDetailState createState() => _AgentDetailState();
}

class _AgentDetailState extends State<AgentDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        title: Text('Hosted By', style: TextStyle(color: Colors.black)),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.close,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 1,
              color: backgroundColor,
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(24),
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width * 1,
                        child: _buildAgent('assets/images/profile.jpg',
                            'Eldorado Marshian', '(201) 022-6452'),
                      ),
                      Container(
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width * 1,
                        height: MediaQuery.of(context).size.height * .2,
                      ),
                    ],
                  ),
                  Positioned(
                      top: 130,
                      width: MediaQuery.of(context).size.width * 1,
                      child: _buildContent()),
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      child: Container(
        color: backgroundColor,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        child: SingleChildScrollView(
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
                  'The world seamdsouse hotel', 'Felibury, In 452100'),
              _buildHouseList('assets/images/h2.jpg',
                  'Romantic sunsetvibe Love bali', 'Dolphine 4587700'),
              _buildHouseList('assets/images/h3.jpg',
                  'Romantic sunset Love bali', 'Dolphine 4587700'),
              _buildHouseList('assets/images/h1.jpg',
                  'Romantic sunset Love bali', 'Dolphine 4587700'),
              _buildHouseList('assets/images/h1.jpg',
                  'Romantic sunset Love bali', 'Dolphine 4587700'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHouseList(img, name, address) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const PropertyDetail()));
      },
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

  Widget _buildAgent(img, name, phone) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                img,
                width: 70,
                height: 70,
              ),
            ),
            Positioned(
              bottom: -5,
              right: -5,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                      color: appColor,
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  child: Row(
                    children: [
                      Icon(Icons.star, size: 10, color: Colors.white),
                      SizedBox(width: 5),
                      Text(
                        "220",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  )),
            )
          ],
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              blackText(name),
              SizedBox(height: 5),
              greyTextSmall(phone),
            ],
          ),
        ),
        CircleAvatar(
            backgroundColor: Colors.blue.shade50,
            child: Icon(Icons.call, color: appColor)),
      ],
    );
  }
}
