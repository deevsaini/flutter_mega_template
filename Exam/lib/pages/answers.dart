/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/tabs.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class answers extends StatefulWidget {
  answers({Key? key}) : super(key: key);

  static const String page_id = "Answers";

  @override
  State<answers> createState() => _answersState();
}

class _answersState extends State<answers> {
  final CarouselController _controller = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_currentIndex == 0)
            bottomNavation1()
          else if (_currentIndex == 1)
            bottomNavation2()
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      automaticallyImplyLeading: false,
      centerTitle: true,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close)),
      title: Text(
        'Answers',
        style: headText(),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notification_add_outlined),
        ),
      ],
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
              print('index value changed' + _currentIndex.toString());
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        if (_currentIndex == 0)
                          answerSlider1()
                        else if (_currentIndex == 1)
                          answerSlider2()
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }

  Widget answerSlider1() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                    color: appColor, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Question 1',
                      style: TextStyle(
                          fontFamily: 'medium',
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry and typesetting industry Lorem Ipsum is simply dummy text of the printing and typesetting industry and typesetting industry industry and typesetting industry',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.circle_outlined,
                          color: Colors.green,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry and typesetting',
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.red,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry and typesetting',
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.circle_outlined,
                          color: appColor,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry and typesetting'),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.circle_outlined,
                          color: appColor,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry and typesetting'),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget bottomNavation1() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: () {
          _controller.nextPage();
        },
        child: Text(
          'Continue',
          style: TextStyle(fontFamily: 'medium', fontSize: 16),
        ),
        style: blueButton(),
      ),
    );
  }

  Widget answerSlider2() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                decoration: BoxDecoration(
                    color: appColor, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Question 3',
                      style: TextStyle(
                          fontFamily: 'medium',
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            'Conversation',
                            style: TextStyle(
                              fontFamily: 'medium',
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Noun',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            '/a,kamadasHan',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.chat_outlined),
                        Text('Answers'),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Wrong pronunciation',
                        style: TextStyle(
                          fontFamily: 'regular',
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'C',
                            style: TextStyle(
                                fontFamily: 'medium',
                                color: Colors.red,
                                fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: '/C/',
                          style: TextStyle(
                            fontFamily: 'medium',
                            fontSize: 20,
                            color: Colors.red,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'onversion',
                              style: TextStyle(
                                  fontFamily: 'regular',
                                  color: Colors.black,
                                  fontSize: 20),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget bottomNavation2() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => tabs()));
        },
        child: Text(
          'Continue',
          style: TextStyle(fontFamily: 'medium', fontSize: 16),
        ),
        style: blueButton(),
      ),
    );
  }
}
