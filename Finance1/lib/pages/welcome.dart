/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:carousel_slider/carousel_slider.dart';
import 'package:finance1/pages/login.dart';
import 'package:finance1/pages/registration.dart';
import 'package:flutter/material.dart';
import '../components/styles.dart';

class Welcome extends StatefulWidget {
  static const String id = 'Welcome';

  const Welcome({Key? key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  int _current = 0;

  final CarouselController _controller = CarouselController();

  List<Item> imgList = <Item>[
    Item('assets/images/slide1.png', 'Try it Now!',
        'Managing your  is never been easier. Start doing it right now.'),
    Item('assets/images/slide2.png', 'Start Now!',
        'Managing your Finance is never been easier. Start doing it right now.'),
    Item('assets/images/slide3.jpg', 'Try it Now!',
        'Managing your Finance is never been easier.  it right now.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            _itemCarausl(),
            SizedBox(height: 20),
            elivatedButton('Create an Account'),
            textButton('Login')
          ],
        ),
      ),
    );
  }

  Widget _itemCarausl() {
    return Builder(
      builder: (context) {
        return Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  height: 450,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }
                  // autoPlay: true,
                  ),
              items: imgList
                  .map((e) => Container(
                        padding: EdgeInsets.all(30),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              e.img,
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width * .5,
                              height: MediaQuery.of(context).size.width * .5,
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 30),
                              child: Text(
                                e.name,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28,
                                    fontFamily: 'medium'),
                              ),
                            ),
                            Text(
                              e.detail,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              ),
                            )
                          ],
                        )),
                      ))
                  .toList(),
              carouselController: _controller,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(_current == entry.key ? 0.4 : 0.2)),
                  ),
                );
              }).toList(),
            )
          ],
        );
      },
    );
  }

  elivatedButton(btn) {
    return Container(
      padding: EdgeInsets.all(16),
      width: double.infinity,
      child: ElevatedButton(
        child: Text(btn, style: TextStyle(fontSize: 16, fontFamily: 'medium')),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Registration()));
        },
        style: ElevatedButton.styleFrom(
          primary: appColor,
          onPrimary: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }

  textButton(val) {
    return TextButton(
      style: TextButton.styleFrom(
        textStyle: TextStyle(fontSize: 20),
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Login()));
      },
      child: Text(val,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'regular',
            fontSize: 18,
          )),
    );
  }
}

class Item {
  const Item(
    this.img,
    this.name,
    this.detail,
  );
  final String img;
  final String name;
  final String detail;
}
