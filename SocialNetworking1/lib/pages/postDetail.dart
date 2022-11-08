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

class postDetail extends StatefulWidget {
  postDetail({Key? key}) : super(key: key);

  static const String page_id = "Post Detail";

  @override
  _postDetailState createState() => _postDetailState();
}

class _postDetailState extends State<postDetail> {
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
      automaticallyImplyLeading: false,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.dehaze),
      ),
      title: Text(
        'Post Detail',
        style: whiteHeadText(),
      ),
      actions: [
        IconButton(
          onPressed: () {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => search()));
          },
          icon: Icon(Icons.search),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                image: AssetImage('assets/images/man.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jaydeep Hirani',
                                style: TextStyle(
                                  fontFamily: 'medium',
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'San Francisco',
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_horiz,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
                  SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 170,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage('assets/images/image1.jpg'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.favorite_outline,
                            color: appColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('110'),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.chat_bubble_outline),
                          SizedBox(
                            width: 5,
                          ),
                          Text('66'),
                        ],
                      ),
                      Icon(Icons.bookmark_outline)
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  detailContainer(),
                  detailContainer(),
                  detailContainer(),
                  detailContainer(),
                  detailContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget detailContainer() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: DecorationImage(
                        image: AssetImage('assets/images/s3.jpg'),
                        fit: BoxFit.cover)),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Hardik Gohil',
                    style: TextStyle(
                      fontFamily: 'medium',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Text('32 min')
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
        ],
      ),
    );
  }
}
