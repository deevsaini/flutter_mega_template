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
import 'package:learning/pages/result.dart';
import 'package:learning/widget/elevated_button.dart';
import '../components/styles.dart';

class TestTopic extends StatefulWidget {
  static const String id = 'TestTopic';

  const TestTopic({Key? key}) : super(key: key);

  @override
  _TestTopicState createState() => _TestTopicState();
}

class _TestTopicState extends State<TestTopic> {
  int tabID = 1;

  final CarouselController _controller = CarouselController();

  List<Item> imgList = <Item>[
    Item(
      '1 of 5',
      'What is Block Chain?',
      'assets/images/slide1.png',
    ),
    Item(
      '2 of 5',
      'How many server on Block Chain?',
      'assets/images/course.png',
    ),
    Item(
      '3 of 5',
      'which one is Crypto?',
      'assets/images/slide1.png',
    ),
    Item(
      '4 of 5',
      'How many Crypto in world?',
      'assets/images/course.png',
    ),
    Item(
      '5 of 5',
      'What is Main Crypto Chain?',
      'assets/images/slide1.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          onPressed: () {
            _controller.previousPage();
          },
          icon: Icon(
            Icons.chevron_left,
            size: 30,
          ),
        ),
      ),
      body: _buildBody(),
      bottomNavigationBar: bottomBtn(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _itemCarausl(),
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
              carouselController: _controller,
              options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * .9,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  onPageChanged: (index, reason) {}
                  // autoPlay: true,
                  ),
              items: imgList
                  .map((e) => Container(
                        child: Column(
                          children: [
                            greyTextSmall(e.no),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 10),
                              child: Text(
                                e.que,
                                textAlign: TextAlign.center,
                                style:
                                    TextStyle(fontFamily: 'bold', fontSize: 22),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 16),
                              height: 180,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                border: Border.all(color: Colors.black26),
                                color: appColorTint,
                                image: DecorationImage(
                                    image: AssetImage(e.img),
                                    fit: BoxFit.fitHeight),
                              ),
                            ),
                            ListView(
                                physics: const ScrollPhysics(),
                                shrinkWrap: true,
                                children: [
                                  _buildSelect('A.', '1'),
                                  _buildSelect('B.', '2'),
                                  _buildSelect('C.', 'None'),
                                ]),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ],
        );
      },
    );
  }

  Widget _buildSelect(id, opt) {
    return GestureDetector(
      onTap: () {
        setState(() {
          tabID = id.hashCode;
        });
      },
      child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(bottom: 16),
        decoration: segmentDecoration(id.hashCode),
        child: Row(
          children: [
            blackText(id),
            SizedBox(width: 20),
            blackText(opt),
          ],
        ),
      ),
    );
  }

  segmentDecoration(index) {
    return BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      border: Border.all(
          color: tabID == index.hashCode ? appColor : Colors.black26, width: 2),
      color: tabID == index.hashCode ? appColorTint : Colors.white,
    );
  }

  bottomBtn() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: MyElevatedButton(
                onPressed: () {
                  _controller.nextPage();
                },
                text: 'Continue'),
          ),
          SizedBox(width: 10),
          Container(
            width: 90,
            height: 55,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Result()));
              },
              style: ElevatedButton.styleFrom(
                primary: appColor,
                onPrimary: Colors.white,
                shadowColor: appColor,
                elevation: 3,
                shape: (RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                )),
              ),
              child: Text(
                'Submit',
                style: TextStyle(fontFamily: 'medium'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Item {
  const Item(
    this.no,
    this.que,
    this.img,
  );
  final String no;
  final String que;
  final img;
}

class Option {
  const Option(
    this.id,
    this.opt,
  );
  final String id;
  final String opt;
}
