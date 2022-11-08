/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:prime_video_fluttermarketplace/utilities/constancePage.dart'
    as style;

class forgotPasswordPage extends StatefulWidget {
  forgotPasswordPage({Key? key}) : super(key: key);

  static const String pageId = 'forgotPasswordPage';

  @override
  State<forgotPasswordPage> createState() => _forgotPasswordPageState();
}

class _forgotPasswordPageState extends State<forgotPasswordPage> {
  int tabId = 1;
  String tabName = '';
  bool showLanguages = false;
  String DateValue = '01';
  String MonthValue = '1999';

  List<Item> categories = <Item>[
    Item('Get more help restoring access to your account'),
  ];

  List<String> cat = [
    'Please Contact Amazon Customer Service.',
    'Within the United States, Call 1-800-383-9484.',
    'Outside of the United States, Call 1-800-383-9484 (international, charges may apply).',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.black,
      flexibleSpace: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              child: SizedBox.fromSize(
                size: Size.fromRadius(30),
                child: FittedBox(
                  child: Image.asset('assets/images/l2.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          children: [
            if (tabId == 1)
              _buildContent1()
            else if (tabId == 2)
              _buildContent2()
            else if (tabId == 3)
              _buildContent3()
            else if (tabId == 4)
              _buildContent4()
            else if (tabId == 5)
              _buildContent5(),

            //
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Condition of Use',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                  Text(
                    'Privacy Notice',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                  Text(
                    'Help',
                    style: TextStyle(color: Colors.lightBlue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '@ 1996-2022, Amazon.com,Inc. or its affliates',
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent1() {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Password Assistance',
              style: TextStyle(
                  fontFamily: 'bold', fontSize: 20, color: Colors.white),
            ),
          ],
        ),
        Text(
          'Enter the email address or mobile phone number associated with your Amazon account.',
          style: TextStyle(color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              _buildInputContent('Email or Phone Number'),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              tabId = 2;
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 13.0),
            decoration: style.contentButtonStyle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Continue',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Has your email or mobile number changed?',
            style: TextStyle(
                fontFamily: 'bold', fontSize: 17, color: Colors.white),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: RichText(
            text: TextSpan(
              text:
                  'if you no longer use the email or mobile number associated with your Amazon account, you may contact ',
              children: const <TextSpan>[
                TextSpan(
                  text: 'Customer Service',
                  style: TextStyle(color: Colors.lightBlue),
                ),
                TextSpan(text: ' for help restoring access to your account.'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContent2() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF252E39),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFF252E39),
        ),
      ),
      child: Column(
        children: [
          Text(
            'Solve this puzzel to protect your account',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Container(
            height: 100,
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/c1.png'), fit: BoxFit.cover),
            ),
          ),
          Text(
            'Enter the latter and numbers above',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontFamily: 'bold'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                _buildInputContent('Enter Capcha Code'),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'See new characters',
                style: TextStyle(color: Colors.lightBlue),
              ),
              Container(
                height: 20,
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              Text(
                'Hear the characters',
                style: TextStyle(color: Colors.lightBlue),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: InkWell(
              onTap: () {
                setState(() {
                  tabId = 3;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 13.0),
                decoration: style.contentButtonStyle(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Continue',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent3() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF252E39),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFF252E39),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Thank You',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: 'bold'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'We have one more security option.',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          Text(
            'What is the expiration date for your Visa ending in 6711?',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontFamily: 'bold'),
          ),
          SizedBox(height: 10),
          Text(
            'Expiration Date',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontFamily: 'bold'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: _build1DropDownButton(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: InkWell(
              onTap: () {
                setState(() {
                  tabId = 4;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 13.0),
                decoration: style.contentButtonStyle(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Continue',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              children: categories.map((e) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(
                          () {
                            showLanguages = !showLanguages;
                          },
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: [
                            if (showLanguages == false)
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.white,
                              )
                            else if (showLanguages == true)
                              Icon(
                                Icons.arrow_drop_up,
                                color: Colors.white,
                              ),
                            Expanded(
                              child: Text(
                                e.name,
                                style: TextStyle(color: Colors.lightBlue),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    showLanguages == true
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: cat.map((item) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      item,
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              );
                            }).toList(),
                          )
                        : SizedBox(height: 0)
                  ],
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent4() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF252E39),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFF252E39),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Enter OTP Wia Send Your Mobile',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: 'bold'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'We have one time password in your email or phone enter OTP and reset your password.',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 30,
              style: TextStyle(fontSize: 15),
              textFieldAlignment: MainAxisAlignment.spaceEvenly,
              fieldStyle: FieldStyle.underline,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: InkWell(
              onTap: () {
                setState(() {
                  tabId = 5;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 13.0),
                decoration: style.contentButtonStyle(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Continue',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent5() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF252E39),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Color(0xFF252E39),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Enter Your New Password',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontFamily: 'bold'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                _buildInputContent('New Password'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                _buildInputContent('Confirm Password'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: InkWell(
              onTap: () {
                setState(() {
                  Navigator.pop(context);
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 13.0),
                decoration: style.contentButtonStyle(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Continue',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInputContent(txt) {
    return Container(
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFF252E39),
          hoverColor: Colors.grey,
          hintText: '$txt',
          hintStyle: TextStyle(color: Colors.grey),
          contentPadding:
              const EdgeInsets.only(bottom: 8.0, top: 14.0, left: 20),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: style.itemColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }

  Widget _build1DropDownButton() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(color: Colors.grey, style: BorderStyle.solid),
            ),
            child: DropdownButton<String>(
              value: DateValue,
              isExpanded: true,
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 16,
              style: const TextStyle(color: style.appColor),
              onChanged: (String? newValue) {
                setState(() {
                  DateValue = newValue!;
                });
              },
              items: <String>[
                '01',
                '02',
                '03',
                '04',
                '05',
                '06',
                '07',
                '08',
                '09',
                '10',
                '11',
                '12'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.orange),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(color: Colors.grey, style: BorderStyle.solid),
            ),
            child: DropdownButton<String>(
              isExpanded: true,
              value: MonthValue,
              icon: const Icon(Icons.arrow_drop_down),
              elevation: 16,
              style: const TextStyle(color: style.appColor),
              onChanged: (String? newValue) {
                setState(() {
                  MonthValue = newValue!;
                });
              },
              items: <String>['1999', '1998', '1997', '1996', '1995', '1994']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(color: Colors.orange),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class Item {
  const Item(this.name);
  final String name;
}
