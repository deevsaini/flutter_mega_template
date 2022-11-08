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
import 'package:pet_care/widget/elevated_button.dart';
import 'package:pet_care/widget/text_btn.dart';
import '../components/styles.dart';

class SliderScreen extends StatefulWidget {
  static const String id = 'SliderScreen';

  const SliderScreen({Key? key}) : super(key: key);

  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  int _current = 0;

  final CarouselController _controller = CarouselController();

  List<Item> imgList = <Item>[
    Item('assets/images/s1.png', 'Welcome to Pet Care',
        'All types of services for your pet in one place, instantly searchable'),
    Item('assets/images/s2.png', 'Proven Experts',
        'We interview every specialist before they get to work'),
    Item('assets/images/s3.png', 'Share your happy moment',
        'A review can be left only by a user who used the service.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return Container(
            height: height,
            child: Stack(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                      height: MediaQuery.of(context).size.height,
                      viewportFraction: 1.0,
                      enlargeCenterPage: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }
                      // autoPlay: false,
                      ),
                  items: imgList
                      .map((e) => Container(
                            // color: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 32),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    MyTextButton(
                                      onPressed: () {},
                                      colors: appColorDark,
                                      text: 'Sign In',
                                    ),
                                  ],
                                ),
                                Image.asset(
                                  e.img,
                                  fit: BoxFit.fitWidth,
                                  width: MediaQuery.of(context).size.width * .7,
                                  height:
                                      MediaQuery.of(context).size.height * .45,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 36),
                                  child: Column(
                                    children: [
                                      centerkHeading(e.name),
                                      SizedBox(height: 10),
                                      centerText(e.detail),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 30),
                                MyElevatedButton(
                                  onPressed: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             const Login()));
                                  },
                                  colors: appColor,
                                  text: 'Get started',
                                ),
                              ],
                            ),
                          ))
                      .toList(),
                ),
                Positioned(
                    bottom: 24,
                    width: MediaQuery.of(context).size.width * 1,
                    height: MediaQuery.of(context).size.width * .1,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
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
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : appColor3)
                                    .withOpacity(
                                        _current == entry.key ? 1 : 0.4)),
                          ),
                        );
                      }).toList(),
                    ))
              ],
            ),
          );
        },
      ),
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
