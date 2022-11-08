/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../components/styles.dart';

class PostDetail extends StatefulWidget {
  static const String id = 'PostDetail';

  const PostDetail({Key? key}) : super(key: key);

  @override
  _PostDetailState createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  bool isFollowing = false;
  List<Item> photoList = <Item>[
    Item('assets/images/32.jpg'),
    Item('assets/images/31.jpg'),
    Item('assets/images/34.jpg'),
    Item('assets/images/36.jpg'),
    Item('assets/images/38.jpg'),
    Item('assets/images/35.jpg'),
    Item('assets/images/40.jpg'),
    Item('assets/images/39.jpg'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
          ],
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black54),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [_buildPost(), _buildPost()],
            ),
          ),
        ));
  }

  Widget _buildPost() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/2.jpg'),
                radius: 24,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    boldText('Vivian Richardson'),
                    smallText('30 mins ago')
                  ],
                ),
              ),
              OutlinedButton(
                child: greyTextSmall("Following"),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: isFollowing ? Colors.black54 : appColor,
                  ),
                  backgroundColor: Colors.white,
                  primary: Colors.black54,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    if (isFollowing) {
                      true;
                    } else {
                      false;
                    }
                  });
                },
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            height: 320,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              // color: appColor,
              boxShadow: [
                BoxShadow(
                    blurRadius: 20,
                    offset: Offset(0, 24),
                    color: Colors.black38.withOpacity(.4),
                    spreadRadius: -5)
              ],

              image: DecorationImage(
                  image: AssetImage('assets/images/viv.jpg'),
                  fit: BoxFit.fitHeight),
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      Icon(Icons.favorite_border,
                          color: Colors.black54, size: 22),
                      SizedBox(width: 4),
                      greyTextSmall('24')
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      Icon(Icons.mode_comment_outlined,
                          color: Colors.black54, size: 22),
                      SizedBox(width: 4),
                      greyTextSmall('32')
                    ],
                  ),
                  SizedBox(width: 20),
                  Row(
                    children: [
                      Icon(Icons.remove_red_eye_outlined,
                          color: Colors.black54, size: 22),
                      SizedBox(width: 4),
                      greyTextSmall('820')
                    ],
                  )
                ],
              ),
              Icon(Icons.bookmark_border, color: Colors.black54, size: 22),
            ],
          ),
          SizedBox(height: 16),
          RichText(
            text: TextSpan(
                text: 'VivRichard ',
                style: TextStyle(
                    color: Colors.black, fontFamily: 'bold', fontSize: 14),
                children: [
                  TextSpan(
                    text:
                        'Its been a to play on sand of motherland. viv richardsan is best captain  thanks!',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'regular',
                        fontSize: 14),
                  ),
                  TextSpan(
                    text: ' @Gavaskara',
                    style: TextStyle(
                        color: appColor, fontFamily: 'regular', fontSize: 14),
                  )
                ]),
          ),
          Text(
            '#westindies #captain',
            style: TextStyle(
                color: Colors.black, fontFamily: 'bold', fontSize: 14),
          ),
          SizedBox(height: 8),
          greyTextSmall('View more comments'),
          SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: TextField(
              onChanged: (String txt) {},
              style: const TextStyle(
                fontSize: 14,
              ),
              cursorColor: appColor,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Comment',
                hintStyle: TextStyle(color: Colors.black38, fontSize: 14),
              ),
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}

class Item {
  const Item(this.img);
  final img;
}
