/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:elearn/helper/style.dart';
import 'package:elearn/pages/exam.dart';
import 'package:flutter/material.dart';

class practice extends StatefulWidget {
  practice({Key? key}) : super(key: key);

  static const String page_id = "Practice";

  @override
  State<practice> createState() => _practiceState();
}

class _practiceState extends State<practice> {
  int _value = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(210.0),
      child: SafeArea(
        child: AppBar(
          backgroundColor: Colors.amber.shade100,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
            ),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          flexibleSpace: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.amber.shade100,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
              ),
            ),
            margin: EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Practice English exam',
                          style: TextStyle(fontFamily: 'medium', fontSize: 16),
                        ),
                        Text(
                          'Has been the industry\'s \n standard dummy text ever',
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/teacher.png'),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_outlined),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            examContainer(),
            examContainer(),
            examContainer(),
            examContainer(),
          ],
        ),
      ),
    );
  }

  Widget examContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300, blurRadius: 30),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('assets/images/main.webp'),
                        fit: BoxFit.cover)),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Exam Number 1',
                        style: TextStyle(fontSize: 16, fontFamily: 'medium'),
                      ),
                      Text(
                        'November 2022',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(10),
                          child: FittedBox(
                            child: Image(
                                image: AssetImage('assets/images/profile.jpg')),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext Context) {
                        return replayContainer();
                      });
                },
                child: Image.asset(
                  'assets/images/check.png',
                  height: 40,
                  width: 40,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
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
                '100 %',
                style: TextStyle(color: Colors.green),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget replayContainer() {
    return AlertDialog(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      content: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            ClipRRect(
              child: Image.asset(
                'assets/images/welcome.png',
                fit: BoxFit.cover,
              ),
            ),
            Text(
              'Replay Exam',
              style: TextStyle(fontSize: 16, fontFamily: 'medium'),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry and typesetting industry',
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => exam()));
              },
              child: Text(
                'Replay exam',
                style: TextStyle(fontFamily: 'medium', fontSize: 16),
              ),
              style: blueButton(),
            ),
          ],
        ),
      ),
    );
  }
}
