/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:saloon5/pages/home.dart';
import 'package:saloon5/pages/tabs.dart';
import '../components/styles.dart' as style;

class Location extends StatefulWidget {
  static const String id = 'Location';

  const Location({Key? key}) : super(key: key);

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  void initState() {
    super.initState();
  }

  final List _elements = [
    '1',
    '2',
    '3',
    '4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Scaffold(
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: <Widget>[
              Image.asset(
                'assets/images/salon-banner.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              _buildContent()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return DraggableScrollableSheet(
      initialChildSize: .9,
      minChildSize: .7,
      builder: (BuildContext context, ScrollController scrollController) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [_buildLocationDesc()],
            ),
          ),
        );
      },
    );
  }

  Widget _buildLocationDesc() {
    return Container(
      color: style.appColor2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(),
              child: Text(
                'Choose Location',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black54,
                    fontSize: 24),
              ),
            ),
            ListView(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              children: _elements.map((e) {
                return _buildLocation();
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocation() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TabsExample()));
            },
            child: Container(
                height: 200,
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 16),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/2.jpg'),
                        fit: BoxFit.cover))),
          ),
          Row(
            children: const [
              SizedBox(width: 8),
              Icon(
                Icons.star,
                size: 20,
                color: Colors.orange,
              ),
              SizedBox(width: 8),
              Text('5.0',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.orange,
                  )),
              SizedBox(width: 8),
              Text('(356 reviews)',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black38,
                  )),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(width: 8),
              Icon(
                Icons.location_on_outlined,
                size: 20,
                color: Colors.black54,
              ),
              SizedBox(width: 8),
              Flexible(
                child: Text(
                    '3454 Westheinher Rd. Santa paola, white house, black strit',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black38,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
