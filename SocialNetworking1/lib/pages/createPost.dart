/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:socialnetworking/helper/style.dart';
import 'package:socialnetworking/pages/addLocation.dart';

class createPost extends StatefulWidget {
  createPost({Key? key}) : super(key: key);

  static const String page_id = "Create Post";

  @override
  State<createPost> createState() => _createPostState();
}

class _createPostState extends State<createPost> {
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
      backgroundColor: appColor,
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.close),
      ),
      title: Text(
        'Create Post',
        style: whiteHeadText(),
      ),
      actions: [
        TextButton(
            onPressed: () {},
            child: Text(
              'Next',
              style: TextStyle(color: Colors.white),
            ))
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                          image: AssetImage('assets/images/man.jpg'),
                          fit: BoxFit.cover)),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Hardik Gohil',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                hintText: 'What do you think ?',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/images/s2.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.close),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                rowContainer(Icons.camera_alt_outlined, () {}),
                rowContainer(Icons.person_add_outlined, () {}),
                rowContainer(Icons.attach_file_outlined, () {}),
                rowContainer(Icons.location_on_outlined, () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => addLocation()));
                }),
                rowContainer(Icons.emoji_emotions_outlined, () {}),
                rowContainer(Icons.gif_box_outlined, () {}),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget rowContainer(icon, route) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: CircleAvatar(
        backgroundColor: appColor,
        child: IconButton(
            onPressed: route,
            icon: Icon(
              icon,
              color: Colors.white,
            )),
      ),
    );
  }
}
