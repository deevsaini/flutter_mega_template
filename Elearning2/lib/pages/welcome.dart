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
import 'package:learning/pages/login.dart';
import 'package:learning/widget/elevated_button.dart';
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
    Item('assets/images/slide1.png', 'Learn anytime and anywhere',
        'Quarantine is the perfect time to spend day learning something new, from anywhere!'),
    Item('assets/images/slide2.png', 'Find a course for your',
        'Quarantine is the perfect time to spend day learning something new, from anywhere!'),
    Item('assets/images/slide2.png', 'Improve your skills',
        'Quarantine is the perfect time to spend day learning something new, from anywhere!'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _buildBody(),
      bottomNavigationBar: bottomBtn(),
    );
  }

  Widget _buildBody() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _itemCarausl(),
        ],
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
                        padding: EdgeInsets.all(16),
                        child: Center(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              e.img,
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width * .6,
                            ),
                            SizedBox(height: 20),
                            centerkHeading(e.name),
                            centerText(e.detail),
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

  bottomBtn() {
    return Container(
      padding: EdgeInsets.all(30),
      child: MyElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Login()));
          },
          text: 'Next'),
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
