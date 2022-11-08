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

class ProfileStory extends StatefulWidget {
  static const String id = 'ProfileStory';

  const ProfileStory({Key? key}) : super(key: key);

  @override
  _ProfileStoryState createState() => _ProfileStoryState();
}

class _ProfileStoryState extends State<ProfileStory> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black12,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.close)),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/2.jpg'),
              radius: 20,
            ),
            SizedBox(width: 10),
            Text('Andrew Rassel',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'bold', fontSize: 16)),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 80.0, right: 5),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: appColorBtn,
          child: const Icon(Icons.navigation),
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/live.jpg"), fit: BoxFit.cover),
        ),
        child: Container(
          padding: EdgeInsets.all(24),
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [_buildComment(), CommentTexfield()],
          ),
        ),
      ),
    );
  }

  Widget _buildComment() {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white30,
          borderRadius: BorderRadius.all(Radius.circular(50))),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      margin: EdgeInsets.only(bottom: 12),
      child: Flexible(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Vivian Richardson',
                style: TextStyle(
                    fontSize: 14, color: Colors.white, fontFamily: 'bold')),
            Text('Its so nice. love it!',
                style: TextStyle(fontSize: 14, color: Colors.white)),
          ],
        ),
      ),
    );
  }

  CommentTexfield() {
    return Container(
      color: Colors.transparent,
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
