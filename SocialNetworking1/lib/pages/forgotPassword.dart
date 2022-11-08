/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:socialnetworking/helper/style.dart';
import 'package:socialnetworking/pages/signin.dart';

class forgotPassword extends StatefulWidget {
  forgotPassword({Key? key}) : super(key: key);

  static const String page_id = "Forgot Password";

  @override
  _forgotPasswordState createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
  final CarouselController _controller = CarouselController();
  int _currentIndex = 0;
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
      backgroundColor: appColor,
      iconTheme: IconThemeData(color: Colors.black),
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Text(
        'Forgot Password',
        style: whiteHeadText(),
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
          items: [1, 2, 3].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: double.infinity,
                  height: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 0),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Column(
                            children: [],
                          ),
                        ),
                        if (i == 1)
                          sentContainer()
                        else if (i == 2)
                          enterCodeContainer()
                        else if (i == 3)
                          resetContainer()
                      ],
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

  Widget sentContainer() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 3,
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    hintText: '+91',
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 9,
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    hintText: '9898 202 020',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry and typesetting',
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              _controller.nextPage();
            },
            child: Text(
              'Next',
              style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
            ),
            style: blueButton(),
          )
        ],
      ),
    );
  }

  Widget enterCodeContainer() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Text(
              'Enter the 4-digit code we sent you +91 9898 202 020',
            ),
          ),
          SizedBox(
            height: 50,
          ),
          OTPTextField(
            length: 4,
            width: MediaQuery.of(context).size.width,
            fieldWidth: 50,
            style: TextStyle(fontSize: 18),
            textFieldAlignment: MainAxisAlignment.spaceAround,
            fieldStyle: FieldStyle.underline,
            onCompleted: (pin) {
              print("Completed: " + pin);
            },
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              _controller.nextPage();
            },
            child: Text(
              'Reset Password',
              style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
            ),
            style: blueButton(),
          )
        ],
      ),
    );
  }

  Widget resetContainer() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Change Password',
            style: headText(),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            decoration: simpleInput('Email'),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: true,
            decoration: simpleInput('Password'),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            obscureText: true,
            decoration: simpleInput('Confirm Password'),
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => signin()));
            },
            child: Text(
              'Save Now',
              style: TextStyle(fontFamily: 'medium'),
            ),
            style: blueButton(),
          )
        ],
      ),
    );
  }
}
