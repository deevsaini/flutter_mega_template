/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon/helper/style.dart' as style;
import 'package:country_picker/country_picker.dart';

class changeProfile extends StatefulWidget {
  changeProfile({Key? key}) : super(key: key);

  static const String page_id = "Change Profile";

  @override
  _changeProfileState createState() => _changeProfileState();
}

class _changeProfileState extends State<changeProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          child: const Text(
            "Save",
            style: TextStyle(fontFamily: 'semi-bold'),
          ),
          onPressed: () {},
          style: style.simpleButton(),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/profile.webp',
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Change Avatar',
                style: TextStyle(color: style.appColor, fontFamily: 'medium'),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          InputText('Full Name', 'Robert Fox'),
          InputText('Email', 'jaydeephirani@gmail.com'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Gender',
                    style: TextStyle(color: style.greyTextColor),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Birth of date',
                    style: TextStyle(color: style.greyTextColor),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          InputText('Address', '6391 Elgin St. Celina, Delaware 10299'),
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
                            color: const Color(0xFF8C98A8).withOpacity(0.2),
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
        ],
      ),
    );
  }
}

Widget InputText(head, hint) {
  return Container(
    margin: EdgeInsets.only(bottom: 30),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          head,
          style: TextStyle(color: style.greyTextColor),
        ),
        TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
              contentPadding: EdgeInsets.only(left: 20)),
        ),
      ],
    ),
  );
}
