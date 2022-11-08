/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:salon/helper/style.dart' as style;
import 'package:country_picker/country_picker.dart';
import 'package:salon/pages/otp.dart';

class phoneVerification extends StatefulWidget {
  phoneVerification({Key? key}) : super(key: key);

  static const String page_id = "Phone Verification";

  @override
  _phoneVerificationState createState() => _phoneVerificationState();
}

class _phoneVerificationState extends State<phoneVerification> {
  final maskFormatter = MaskTextInputFormatter(mask: '+## ##### #####');

  final TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      reverse: true,
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Phone!',
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'bold',
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'A 4 digit security code will sent via SMS to verify your mobile number!',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'medium',
                      color: style.greyTextColor,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          showCountryPicker(
                            context: context,
                            exclude: <String>['KN', 'MF'],
                            showPhoneCode: true,
                            showWorldWide: false,
                            onSelect: (Country country) {
                              print('Select country: ${country.displayName}');
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
                        child: const Text('+91'),
                      ),
                      Container(
                        child: TextField(
                          decoration: style.simpleInputIconText(
                            '7545455656',
                            Icon(Icons.phone_android),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    child: const Text(
                      "Continue",
                      style: TextStyle(fontFamily: 'medium'),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => otpVerify()));
                    },
                    style: style.simpleButton(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget picker() {
    return ElevatedButton(
      onPressed: () => {
        showCountryPicker(
          context: context,
          exclude: <String>['KN', 'MF'],
          showPhoneCode: true,
          showWorldWide: false,
          onSelect: (Country country) {},
          countryListTheme: CountryListThemeData(
            flagSize: 25,
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
                  color: const Color(0xFF8C98A8).withOpacity(0.2),
                ),
              ),
            ),
          ),
        )
      },
      child: const Text('+91'),
    );
  }
}
