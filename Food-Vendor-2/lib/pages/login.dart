/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:zomato/helper/style.dart';
import 'package:country_picker/country_picker.dart';
import 'package:zomato/pages/otpVerify.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  static const String page_id = "Login";

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/menu.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    'India\'s #1 Food Delivery and Dining App',
                    textAlign: TextAlign.center,
                    style: headText(),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text('Log in or sign up'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(3)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 12),
                          child: InkWell(
                            onTap: () {
                              showCountryPicker(
                                context: context,
                                exclude: <String>['KN', 'MF'],
                                showPhoneCode: true,
                                showWorldWide: false,
                                onSelect: (Country country) {
                                  print(
                                      'Select country: ${country.displayName}');
                                },
                                countryListTheme: CountryListThemeData(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40.0),
                                    topRight: Radius.circular(40.0),
                                  ),
                                  inputDecoration: InputDecoration(
                                    labelText: 'Search',
                                    hintText: 'Start typing to search',
                                    prefixIcon: const Icon(Icons.search),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: const Color(0xFF8C98A8)
                                            .withOpacity(0.2),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/login.png',
                                  height: 20,
                                  width: 20,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        flex: 10,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            border: OutlineInputBorder(),
                            hintText: 'Enter Phone Number',
                            prefixText: '+91',
                            prefixStyle: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => otpVerify()));
                    },
                    child: Text(
                      'Continue',
                      style:
                          TextStyle(color: Colors.white, fontFamily: 'medium'),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: secondaryColor,
                      onPrimary: Colors.white,
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text('or'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      signInButtons('assets/images/google.png'),
                      signInButtons('assets/images/facebook.png'),
                      signInButtons('assets/images/mail.png')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'By continuing,you agree to our Terms of service Privacy policy Content Policy',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget signInButtons(icon) {
    return Container(
      padding: EdgeInsets.all(12),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: InkWell(
        onTap: () {},
        child: ClipRRect(
          child: Image.asset(icon, width: 25.0, height: 25.0),
        ),
      ),
    );
  }
}
