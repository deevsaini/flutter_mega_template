/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:ride/helper/style.dart';
import 'package:ride/pages/signIn.dart';

class setLocation extends StatefulWidget {
  setLocation({Key? key}) : super(key: key);

  static const String page_id = "Set Location";

  @override
  State<setLocation> createState() => _setLocationState();
}

class _setLocationState extends State<setLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            appColor,
            styleColor,
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 300,
            width: 300,
            child: ClipPath(
              child: ClipRRect(
                child: Image.asset(
                  'assets/images/set.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  'That\'s Awesome',
                  textAlign: TextAlign.center,
                  style: whiteHeadText(),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    'Start choose your location to order \n taxi car',
                    style: simpleWhiteText(),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => signIn()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Use Current Location',
                        style: TextStyle(fontFamily: 'bold', fontSize: 16),
                      ),
                    ],
                  ),
                  style: blueButton(),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Colors.white70))),
                  child: Text(
                    'Select Manualy',
                    style: TextStyle(
                        fontFamily: 'semi-bold',
                        fontSize: 16,
                        color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
