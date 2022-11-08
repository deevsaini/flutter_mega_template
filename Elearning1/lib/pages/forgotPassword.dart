/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:carousel_slider/carousel_slider.dart';
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/logIn.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

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
      backgroundColor: Colors.white,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      child: CarouselSlider(
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
        items: [1, 2, 3, 4].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (i == 1)
                      forgotContainer()
                    else if (i == 2)
                      otpContainer()
                    else if (i == 3)
                      changeContainer()
                    else if (i == 4)
                      successContainer()
                  ],
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }

  Widget forgotContainer() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1, color: Colors.grey.shade300),
              ),
              child: Icon(
                Icons.key_outlined,
                size: 35,
                color: Colors.green,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Forgot Password',
              textAlign: TextAlign.center,
              style: headText(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'A handful of model sentense structures',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: simpleInputIconText(
                'Phone',
                Icon(Icons.phone_outlined),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                _controller.nextPage();
              },
              child: Text(
                'Continue',
                style: TextStyle(fontFamily: 'medium'),
              ),
              style: simpleButton(),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'We sent a',
                  style: TextStyle(fontFamily: 'regular', color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Verification Code',
                      style: TextStyle(
                        fontFamily: 'medium',
                        color: appColor,
                      ),
                    ),
                    TextSpan(
                      text: ' to your Phone Number',
                      style:
                          TextStyle(fontFamily: 'regular', color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget otpContainer() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1, color: Colors.grey.shade300),
              ),
              child: Icon(
                Icons.key_outlined,
                size: 35,
                color: Colors.green,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Enter a Code',
              textAlign: TextAlign.center,
              style: headText(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'We sent a verification code to your phone number',
                  style: TextStyle(fontFamily: 'regular', color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' (+91) 9898 2323 2323',
                      style: TextStyle(
                        fontFamily: 'medium',
                        color: appColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OTPTextField(
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 60,
              style: TextStyle(fontSize: 18),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                _controller.nextPage();
              },
              child: Text(
                'Change Password',
                style: TextStyle(fontFamily: 'medium'),
              ),
              style: simpleButton(),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  border:
                      Border(bottom: BorderSide(width: 1, color: appColor))),
              child: Text(
                'Resend Code',
                style: TextStyle(color: appColor),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget changeContainer() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1, color: Colors.grey.shade300),
              ),
              child: Icon(
                Icons.key_outlined,
                size: 35,
                color: Colors.green,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Change Password',
              textAlign: TextAlign.center,
              style: headText(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Your password legth consist of \n 6-characters',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: simpleInputIconText(
                'New Password',
                Icon(Icons.visibility_off_outlined),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: simpleInputIconText(
                'Confirm Password',
                Icon(Icons.visibility_off_outlined),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                _controller.nextPage();
              },
              child: Text(
                'Save Password',
                style: TextStyle(fontFamily: 'medium'),
              ),
              style: simpleButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget successContainer() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/pass.png',
              fit: BoxFit.cover,
              height: 150,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Password Changed \n Successfully!',
              style: headText(),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => logIn()));
              },
              child: Text(
                'Sign in',
                style: TextStyle(fontFamily: 'medium'),
              ),
              style: simpleButton(),
            ),
          ],
        ),
      ),
    );
  }
}
