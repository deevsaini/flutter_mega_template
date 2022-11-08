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
import 'package:carousel_slider/carousel_slider.dart';
import 'package:spotify/pages/musicLanguage.dart';

class signup extends StatefulWidget {
  signup({Key? key}) : super(key: key);

  static const String page_id = "Sign Up";

  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
  final CarouselController _controller = CarouselController();
  int _currentIndex = 0;
  DateTime selectedDate = DateTime.now();
  int selectID = 1;
  bool card = false;

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppbar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      title: Text(
        'Create account',
        style: headText(),
      ),
    );
  }

  Widget _buildBody() {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            onPageChanged: ((index, reason) {
              setState(() {
                _currentIndex = index;
                print(index);
              });
            }),
            height: double.infinity,
            viewportFraction: 1.0,
            initialPage: 0,
            enableInfiniteScroll: false,
            reverse: false,
            autoPlay: false,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          carouselController: _controller,
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: double.infinity,
                  height: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          if (i == 1)
                            infoContainer()
                          else if (i == 2)
                            passwordContainer()
                          else if (i == 3)
                            birthdateContainer()
                          else if (i == 4)
                            genderContainer()
                          else if (i == 5)
                            privacyContainer()
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget infoContainer() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Whta\'s your email?',
            style: headText(),
          ),
          Container(
            color: Colors.white10,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text('You\'ll need to confirm this email later.'),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  _controller.nextPage();
                },
                child: Text(
                  'Next',
                  style: TextStyle(fontFamily: 'semi-bold'),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget passwordContainer() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Create a password',
            style: headText(),
          ),
          Container(
            color: Colors.white10,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                suffixIcon: Icon(Icons.visibility),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Container(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  _controller.nextPage();
                },
                child: Text(
                  'Next',
                  style: TextStyle(fontFamily: 'semi-bold'),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget birthdateContainer() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'What\'s your date of birth?',
            style: headText(),
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () => _selectDate(context),
            child: Text("${selectedDate.toLocal()}".split(' ')[0]),
          ),
          SizedBox(
            height: 30.0,
          ),
          Center(
            child: Container(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  _controller.nextPage();
                },
                child: Text(
                  'Next',
                  style: TextStyle(fontFamily: 'semi-bold'),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget genderContainer() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'What\'s your gender?',
            style: headText(),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              _buildSelect('Female', 1),
              _buildSelect('Male', 2),
              _buildSelect('Non-binary', 3),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          Center(
            child: Container(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  _controller.nextPage();
                },
                child: Text(
                  'Next',
                  style: TextStyle(fontFamily: 'semi-bold'),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSelect(title, id) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectID = id;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: segmentDecoration(id),
        child: Row(
          children: [
            Container(
              child: Text(
                title,
                style: TextStyle(
                    color: selectID == id ? Colors.white : Colors.white30,
                    fontFamily: selectID == id ? 'medium' : 'regular'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  segmentDecoration(id) {
    return BoxDecoration(
      border: Border.all(
        color: selectID == id ? Colors.white : Colors.white30,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(20.0),
      ),
    );
  }

  Widget privacyContainer() {
    return Padding(
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Whta\'s your name?',
                    style: headText(),
                  ),
                  Container(
                    color: Colors.white10,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        hintText: 'Jaydeep Hirani',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'This appers on your spotify profile.',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.white30),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      'By tapping "create account", you agree to the spotify Terms of Use.'),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Terms of Use',
                    style: TextStyle(color: appColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                      'To learn more about how Spotify collects, uses, shares and protects your personal data,please see the Spotify Privacy Policy.'),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Privacy Policy',
                    style: TextStyle(color: appColor),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                            'I would prefer not to receive marketing messages from Spotify.'),
                      ),
                      Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        value: this.card,
                        onChanged: (value) {
                          setState(() {
                            this.card = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                            'Share my registration data with Spotify\'s content providers for marketing purposes.'),
                      ),
                      Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        value: this.card,
                        onChanged: (value) {
                          setState(() {
                            this.card = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 180,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => musicLanguage()));
                },
                child: Text(
                  'Create account',
                  style: TextStyle(fontFamily: 'semi-bold'),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
