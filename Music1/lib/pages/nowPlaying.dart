/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:music/helper/style.dart';
import 'package:music/pages/lyrics.dart';
import 'package:music/pages/share.dart';

class nowPlaying extends StatefulWidget {
  nowPlaying({Key? key}) : super(key: key);

  static const String page_id = "Now Playing";

  @override
  State<nowPlaying> createState() => _nowPlayingState();
}

class _nowPlayingState extends State<nowPlaying> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
      automaticallyImplyLeading: false,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_circle_left_outlined)),
      title: Text(
        'Now Playing',
        style: headText(),
      ),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => share()));
            },
            icon: Icon(Icons.share))
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              radius: 75,
              backgroundColor: Color(0xFFFE3047),
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage('assets/images/art3.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'You are my sunshine',
                    style: headText(),
                  ),
                  Text('By adward micheal')
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: appColor,
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Slider(
                value: _value.toDouble(),
                min: 0.0,
                max: 5.0,
                activeColor: appColor,
                inactiveColor: Colors.white,
                onChanged: (double newValue) {
                  setState(() {
                    _value = newValue.round();
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '02:35',
                      style: TextStyle(fontSize: 10),
                    ),
                    Text(
                      '03:12',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.refresh),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.skip_previous),
              ),
              CircleAvatar(
                backgroundColor: appColor,
                radius: 30,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.pause_circle_outline,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.skip_next),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shuffle),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => lyrics()));
                  },
                  icon: Icon(Icons.keyboard_arrow_up),
                ),
                Text('Lyrics')
              ],
            ),
          )
        ],
      ),
    );
  }
}
