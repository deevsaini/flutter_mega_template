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
import 'package:music/helper/style.dart';
import 'package:music/pages/signin.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class forgotPassword extends StatefulWidget {
  forgotPassword({Key? key}) : super(key: key);

  static const String page_id = "Forgot Password";

  @override
  State<forgotPassword> createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
  final CarouselController _controller = CarouselController();

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        items: [1, 2].map((i) {
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
            Text(
              'Forgot Password',
              textAlign: TextAlign.center,
              style: headText(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Enter Mobile Number To Reset Password',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: simpleInputText('Mobile Number'),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  _controller.nextPage();
                },
                child: Text(
                  'Continue',
                  style: TextStyle(fontFamily: 'medium'),
                ),
                style: simpleButton(),
              ),
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
                  style: TextStyle(fontFamily: 'regular', color: Colors.white),
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
                          TextStyle(fontFamily: 'regular', color: Colors.white),
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
                  style: TextStyle(fontFamily: 'regular', color: Colors.white),
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
              style: TextStyle(fontSize: 18, color: Colors.white),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  showDialog<String>(
                      context: context,
                      builder: (BuildContext context) {
                        return successContainer();
                      });
                },
                child: Text(
                  'Verify',
                  style: TextStyle(fontFamily: 'medium'),
                ),
                style: simpleButton(),
              ),
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

  Widget successContainer() {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      title: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              appColor,
              secondColor,
            ],
          ),
        ),
        child: Column(
          children: [
            Icon(
              Icons.check_circle_outline,
              color: Colors.white,
              size: 120,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Verified!',
              style: headText(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Yahoo! You have successfully Verified account',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => signin()));
                },
                child: Text(
                  'Go To Dashboard',
                  textAlign: TextAlign.center,
                ),
                style: simpleOutlineButton(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
