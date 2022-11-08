/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:social_network/widget/text_btn.dart';
import '../components/styles.dart';

class CreatePost extends StatefulWidget {
  static const String id = 'CreatePost';

  const CreatePost({Key? key}) : super(key: key);

  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
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
            MyTextButton(onPressed: () {}, text: 'Share', colors: appColorBtn)
          ],
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black54),
          elevation: 0,
          centerTitle: true,
          title: Text('Create post',
              style: TextStyle(color: Colors.black, fontFamily: 'medium')),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 30, top: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Start writing..',
                      labelStyle:
                          TextStyle(color: Colors.black54, fontSize: 12),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: appColor),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        image: DecorationImage(
                            image: AssetImage('assets/images/37.jpg'),
                            fit: BoxFit.fitHeight),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                              top: 5,
                              right: 5,
                              child: Icon(
                                Icons.close,
                                color: Colors.white,
                                size: 22,
                              )),
                        ],
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius: BorderRadius.all(Radius.circular(16))),
                      child: Icon(Icons.add),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
