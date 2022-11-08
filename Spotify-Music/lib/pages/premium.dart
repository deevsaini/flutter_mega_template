/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:spotify/helper/style.dart';

class premium extends StatefulWidget {
  premium({Key? key}) : super(key: key);

  static const String page_id = "Premium";

  @override
  _premiumState createState() => _premiumState();
}

class _premiumState extends State<premium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    ('assets/images/s1.jpg'),
                  ),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        height: 20,
                        width: 20,
                        fit: BoxFit.fill,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Premium',
                        style: TextStyle(fontFamily: 'medium'),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('LIMITED TIME OFFER'),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Get 3 months of Premium for free',
                        style: headText(),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'GET 3 MONTHS FREE',
              style: TextStyle(fontFamily: 'medium', fontSize: 16),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Individual plan only. ₹119/month after. Open only to users who haven\'t already tried Premium. Terms and conditions apply.Offer ends 5/12/22.',
              style: TextStyle(fontSize: 12),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 20)]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.white54),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Why join Premium?',
                      style: TextStyle(fontFamily: 'medium', fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.check,
                            color: appColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Download to listen offline without wifi')
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check,
                            color: appColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Music without ad interruptions')
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check,
                            color: appColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('2x higher sound quality than our free plan')
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check,
                            color: appColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Play songs in any order, with unlimited skips')
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.check,
                            color: appColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Cancel monthly plans online anytimes')
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 20)]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Spotify Free',
                  style: TextStyle(fontFamily: 'medium', fontSize: 16),
                ),
                Text(
                  'CURRENT PLAN',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Pick your Premium',
              style: TextStyle(fontFamily: 'medium', fontSize: 16),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          plansContainer(),
          plansContainer(),
          plansContainer(),
          plansContainer(),
          plansContainer(),
        ],
      ),
    );
  }

  Widget plansContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Mini',
                style: TextStyle(fontFamily: 'medium', fontSize: 16),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'From ₹7',
                    style: headText(),
                  ),
                  Text(
                    'FOR 1 DAY',
                    style: TextStyle(color: Colors.white60, fontSize: 12),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Day and week plans Ad-free music listning on mobile Download 30 songs on 1 mobile device',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 180,
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => musicLanguage()));
              },
              child: Text(
                'VIEW PLANS',
                style: TextStyle(fontFamily: 'semi-bold'),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white,
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Prices very according to duration of plan.',
            style: TextStyle(color: Colors.white60, fontSize: 12),
          ),
          Text(
            'Termes and Conditions apply.',
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
