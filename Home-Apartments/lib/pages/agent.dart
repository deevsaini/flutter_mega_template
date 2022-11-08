/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/pages/agent_detail.dart';
import '../components/styles.dart';

class Agent extends StatefulWidget {
  static const String id = 'Agent';

  const Agent({Key? key}) : super(key: key);

  @override
  _AgentState createState() => _AgentState();
}

class _AgentState extends State<Agent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        title: Text('List Agent', style: TextStyle(color: Colors.black)),
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
      child: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                boldHeading('List Agent'),
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
            _buildSelect('assets/images/profile.jpg', 'Eldorado Marshian',
                '(201) 022-6452'),
            _buildSelect(
                'assets/images/profile.jpg', 'John Snowborn', '(201) 022-6452'),
            _buildSelect(
                'assets/images/profile.jpg', 'Jack Ryne', '(201) 022-6452'),
            _buildSelect(
                'assets/images/profile.jpg', 'Jim Grier', '(201) 022-6452'),
            _buildSelect(
                'assets/images/profile.jpg', 'Marshian', '(201) 022-6452'),
            _buildSelect('assets/images/profile.jpg', 'Carmen Velasco',
                '(201) 022-6452'),
          ],
        ),
      ),
    );
  }

  Widget _buildSelect(img, name, phone) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AgentDetail()));
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
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
        ),
      ),
    );
  }
}
