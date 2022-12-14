/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/logIn.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class slider extends StatefulWidget {
  slider({Key? key}) : super(key: key);

  static const String page_id = "Slider Screen";

  @override
  _sliderState createState() => _sliderState();
}

class customshape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class _sliderState extends State<slider> {
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
      child: Stack(
        children: <Widget>[
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
            items: [1, 2, 3, 4].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: double.infinity,
                    height: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Column(
                        children: [
                          if (i == 1)
                            _buildSlide1()
                          else if (i == 2)
                            _buildSlide2()
                          else if (i == 3)
                            _buildSlide3()
                          else if (i == 4)
                            _buildSlide4()
                        ],
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildSlide1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 400,
          width: double.infinity,
          child: ClipPath(
            clipper: customshape(),
            child: ClipRRect(
              child: Image.asset(
                'assets/images/slider.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                'Online Learning \n Plateform',
                textAlign: TextAlign.center,
                style: headText(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'A handful of model sentence \n structurs, too generet lorem which \n looks reason able.',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: appColor,
                child: IconButton(
                  onPressed: () {
                    _controller.nextPage();
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.black87,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildSlide2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 400,
          width: double.infinity,
          child: ClipPath(
            clipper: customshape(),
            child: ClipRRect(
              child: Image.asset(
                'assets/images/slider.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                'Learning on your \n Schedule',
                textAlign: TextAlign.center,
                style: headText(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'A handful of model sentence \n structurs, too generet lorem which \n looks reason able.',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: appColor,
                child: IconButton(
                  onPressed: () {
                    _controller.nextPage();
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.black87,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildSlide3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 400,
          width: double.infinity,
          child: ClipPath(
            clipper: customshape(),
            child: ClipRRect(
              child: Image.asset(
                'assets/images/slider.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                'Ready to find \n a Course',
                textAlign: TextAlign.center,
                style: headText(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'A handful of model sentence \n structurs, too generet lorem which \n looks reason able.',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: appColor,
                child: IconButton(
                  onPressed: () {
                    _controller.nextPage();
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.black87,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildSlide4() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 400,
          width: double.infinity,
          child: ClipPath(
            clipper: customshape(),
            child: ClipRRect(
              child: Image.asset(
                'assets/images/slider.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                'Explore it \n Today!',
                textAlign: TextAlign.center,
                style: headText(),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'A handful of model sentence \n structurs, too generet lorem which \n looks reason able.',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: appColor,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => logIn()));
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.black87,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
