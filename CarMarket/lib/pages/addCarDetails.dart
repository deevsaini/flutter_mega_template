/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:car/helper/style.dart';
import 'package:flutter/material.dart';

class addCarDetails extends StatefulWidget {
  addCarDetails({Key? key}) : super(key: key);

  static const String page_id = "Add Car Details";

  @override
  _addCarDetailsState createState() => _addCarDetailsState();
}

class _addCarDetailsState extends State<addCarDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: _buildBody()),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/welcome.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_vert),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('PORSCHE'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '911 CAREERA RS 3.0',
                  style: headText(),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '\$2,634,899',
                  style: TextStyle(
                      fontSize: 16, color: appColor, fontFamily: 'medium'),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.calendar_month_sharp,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Modal Year',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Text(
                          '2018',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.offline_bolt_outlined,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Fual Type',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Text(
                          'Diesel',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.looks,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'KM\'s Driven',
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        Text(
                          '12,210',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'OVERVIEW',
                  style: TextStyle(fontSize: 16, fontFamily: 'medium'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'FEATURES',
                  style: TextStyle(fontSize: 16, fontFamily: 'medium'),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Row(
                        children: [
                          Icon(
                            Icons.wifi_rounded,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Keyless Entry')
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Row(
                        children: [
                          Icon(
                            Icons.wifi_rounded,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Keyless Entry')
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Row(
                        children: [
                          Icon(
                            Icons.wifi_rounded,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Keyless Entry')
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Row(
                        children: [
                          Icon(
                            Icons.wifi_rounded,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Keyless Entry')
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
