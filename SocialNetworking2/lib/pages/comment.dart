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

class Comments extends StatefulWidget {
  static const String id = 'Comments';

  const Comments({Key? key}) : super(key: key);

  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
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
          centerTitle: true,
          title: Text('Comments',
              style: TextStyle(color: Colors.black, fontFamily: 'medium')),
        ),
        bottomNavigationBar: _buildBottom(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                      text: 'VivRichard ',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'bold',
                          fontSize: 14),
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
                              color: appColor,
                              fontFamily: 'regular',
                              fontSize: 14),
                        )
                      ]),
                ),
                Text(
                  '#westindies #captain',
                  style: TextStyle(
                      color: Colors.black, fontFamily: 'bold', fontSize: 14),
                ),
                _buildComment(),
                _buildComment(),
                _buildComment(),
                _buildComment(),
                SizedBox(height: 16),
              ],
            ),
          ),
        ));
  }

  Widget _buildComment() {
    return Container(
      padding: EdgeInsets.only(top: 16),
      margin: EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.black26)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: 4),
                greyText('Lets play cricket tournament'),
                SizedBox(height: 6),
                smallText('30 mins ago')
              ],
            ),
          ),
          smallText('30m'),
        ],
      ),
    );
  }

  Widget _buildBottom() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 24),
      color: appColor2,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: const BorderRadius.all(
                  Radius.circular(38.0),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: const Offset(0, 2),
                      blurRadius: 8.0),
                ],
              ),
              child: TextField(
                onChanged: (String txt) {},
                style: const TextStyle(fontSize: 18, color: Colors.white),
                cursorColor: appColor,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'write a comment',
                    hintStyle: TextStyle(color: Colors.white70, fontSize: 12)),
              ),
            ),
          ),
          SizedBox(width: 8),
          GestureDetector(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 24,
              child: Icon(Icons.send_outlined, color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
