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
import 'package:realestate/helper/style.dart';
import 'package:realestate/pages/signin.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Forgot Password',
          style: headText(),
        ),
      ),
      body: _buildBody(),
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
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Text(
              'We send a mail to the email address you registered to regain your password',
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Email Address',
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'Email sent to ex**********@gmail.com',
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              _controller.nextPage();
            },
            child: Text(
              'Send',
              style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
            ),
            style: greenButton(),
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
              'We send a mail to the email address you registered to regain your password',
              textAlign: TextAlign.center,
            ),
          ),
          // SizedBox(
          //   height: 20,
          // ),
          TextField(
            decoration: InputText('Enter 6 digit code'),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Not yet code',
                style: TextStyle(fontFamily: 'regular', color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Resend Now!',
                    style: TextStyle(
                      fontFamily: 'medium',
                      color: appColor,
                    ),
                    // recognizer: TapGestureRecognizer()
                    //   ..onTap = () {
                    //     Navigator.push(context,
                    //         MaterialPageRoute(builder: (context) => signup()));
                    //   },
                  ),
                ],
              ),
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
              'Reset Password',
              style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
            ),
            style: greenButton(),
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
            height: 20,
          ),
          TextField(
            decoration: suffixIconText('Old Password', Icon(Icons.visibility)),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: suffixIconText('New Password', Icon(Icons.visibility)),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration:
                suffixIconText('Confirm Password', Icon(Icons.visibility)),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => signin()));
            },
            child: Text(
              'Save Now',
              style: TextStyle(fontFamily: 'semi-bold', fontSize: 16),
            ),
            style: greenButton(),
          )
        ],
      ),
    );
  }
}
