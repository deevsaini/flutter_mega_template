/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:realestate/helper/style.dart';
import 'package:realestate/pages/home.dart';

class profile extends StatefulWidget {
  profile({Key? key}) : super(key: key);

  static const String page_id = "Profile";

  @override
  _profileState createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      title: Text(
        'Profile Details',
        style: headText(),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Center(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                      image: AssetImage('assets/images/profile.jpg'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Jaydeep Hirani',
              style: TextStyle(fontFamily: 'semi-bold', fontSize: 18),
            ),
            RichText(
              text: TextSpan(
                text: 'Account Credit ',
                style: TextStyle(
                    fontFamily: 'regular', color: Colors.black, fontSize: 16),
                children: <TextSpan>[
                  TextSpan(
                    text: ' \$200.00',
                    style: TextStyle(
                        fontFamily: 'medium', color: appColor, fontSize: 16),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              decoration: suffixIconText(
                'Jaydeep Hirani',
                Icon(
                  Icons.edit,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: suffixIconText(
                '+91 9898 300 300',
                Icon(
                  Icons.edit,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: suffixIconText(
                'yourname@gmail.com',
                Icon(
                  Icons.edit,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: suffixIconText(
                'Iris Watson P.O.Box 283 8562 Fusce Rd. Frederick Nebraska',
                Icon(
                  Icons.edit,
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => home()));
              },
              child: Text(
                'Save Now',
                style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
              ),
              style: greenButton(),
            )
          ],
        ),
      ),
    );
  }
}
