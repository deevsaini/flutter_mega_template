/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/review.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:percent_indicator/percent_indicator.dart';

class exam extends StatefulWidget {
  exam({Key? key}) : super(key: key);

  static const String page_id = "Exam";

  @override
  State<exam> createState() => _examState();
}

class _examState extends State<exam> {
  final CarouselController _controller = CarouselController();
  int _currentIndex = 0;
  int _value = 70;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_currentIndex == 0)
            bottomNav1()
          else if (_currentIndex == 1)
            bottomNav2()
          else if (_currentIndex == 2)
            bottomNav3()
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      centerTitle: true,
      title: Text(
        'Exam',
        style: headText(),
      ),
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
                          questionSlider1()
                        else if (_currentIndex == 1)
                          questionSlider2()
                        else if (_currentIndex == 2)
                          questionSlider3()
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

  Widget questionSlider1() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: SliderTheme(
                  child: Slider(
                    value: _value.toDouble(),
                    min: 0.0,
                    max: 100.0,
                    activeColor: Colors.orange,
                    inactiveColor: Colors.grey,
                    onChanged: (double newValue) {
                      setState(() {
                        _value = newValue.round();
                      });
                    },
                  ),
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 20,
                    thumbShape: SliderComponentShape.noThumb,
                    thumbColor: Colors.transparent,
                  ),
                ),
              ),
              Text(
                '07:00',
                style: TextStyle(color: Colors.red),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
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
                          Icons.check_circle,
                          color: Colors.green,
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

  Widget bottomNav1() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lightbulb,
                  color: Colors.yellow,
                ),
                Text('Suggestion 1')
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 6,
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
          ),
        ],
      ),
    );
  }

  Widget questionSlider2() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: SliderTheme(
                  child: Slider(
                    value: _value.toDouble(),
                    min: 0.0,
                    max: 100.0,
                    activeColor: Colors.orange,
                    inactiveColor: Colors.grey,
                    onChanged: (double newValue) {
                      setState(() {
                        _value = newValue.round();
                      });
                    },
                  ),
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 20,
                    thumbShape: SliderComponentShape.noThumb,
                    thumbColor: Colors.transparent,
                  ),
                ),
              ),
              Text(
                '07:00',
                style: TextStyle(color: Colors.red),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
                color: appColor, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Question 2',
                  style: TextStyle(
                      fontFamily: 'medium', fontSize: 16, color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Retype the word you heard',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Icon(
                          Icons.volume_up_outlined,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                      Text(
                        'Listen',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      hintText: 'Typing...',
                      hintStyle: TextStyle(color: Colors.white)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomNav2() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lightbulb,
                  color: Colors.yellow,
                ),
                Text('Suggestion 2')
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 6,
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
          ),
        ],
      ),
    );
  }

  Widget questionSlider3() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: SliderTheme(
                  child: Slider(
                    value: _value.toDouble(),
                    min: 0.0,
                    max: 100.0,
                    activeColor: Colors.orange,
                    inactiveColor: Colors.grey,
                    onChanged: (double newValue) {
                      setState(() {
                        _value = newValue.round();
                      });
                    },
                  ),
                  data: SliderTheme.of(context).copyWith(
                    trackHeight: 20,
                    thumbShape: SliderComponentShape.noThumb,
                    thumbColor: Colors.transparent,
                  ),
                ),
              ),
              Text(
                '07:00',
                style: TextStyle(color: Colors.red),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        'Hold Down the button to start recording, release to end',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: appColor,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.mic_outlined,
                            color: Colors.white,
                            size: 30,
                          )),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget bottomNav3() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lightbulb,
                  color: Colors.yellow,
                ),
                Text(
                  'Suggestion 3',
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 6,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext Context) {
                      return completeContainer();
                    });
              },
              child: Text(
                'Continue',
                style: TextStyle(fontFamily: 'medium', fontSize: 16),
              ),
              style: blueButton(),
            ),
          ),
        ],
      ),
    );
  }

  Widget completeContainer() {
    late AnimationController controller;

    return AlertDialog(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      content: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              radius: 80,
              backgroundColor: appColor,
              child: CircularPercentIndicator(
                radius: 60.0,
                lineWidth: 10.0,
                percent: 1.0,
                center: Text(
                  "100%",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'medium', fontSize: 22),
                ),
                progressColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('You are awesome!'),
            SizedBox(
              height: 10,
            ),
            Text(
              'Congratulations for getting all the answers correct!',
              style: TextStyle(fontSize: 14, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                signInButtons('assets/images/google.png'),
                signInButtons('assets/images/facebook.png'),
                signInButtons('assets/images/twitter.png'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => review()));
              },
              child: Text(
                'Review',
                style: TextStyle(fontFamily: 'medium', fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue.shade100,
                onPrimary: appColor,
                minimumSize: const Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => exam()));
              },
              child: Text(
                'Go Exam',
                style: TextStyle(fontFamily: 'medium', fontSize: 16),
              ),
              style: blueButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget signInButtons(icon) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: Colors.grey.shade300,
        ),
      ),
      child: InkWell(
        onTap: () {},
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(icon, width: 20.0, height: 20.0),
        ),
      ),
    );
  }
}
