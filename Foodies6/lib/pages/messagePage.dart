/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/chatPage.dart';
import 'package:foodies_fluttermarketplace_hardik/utilities/constance.dart'
    as style;

class messagePage extends StatefulWidget {
  messagePage({Key? key}) : super(key: key);

  static const String pageId = 'messagePage';

  @override
  State<messagePage> createState() => _messagePageState();
}

class _messagePageState extends State<messagePage> {
  List<int> text = [1, 2, 3, 4, 5, 6, 7, 8];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => directionsPage()));
          },
          backgroundColor: style.itemColor,
          child: const Icon(Icons.message),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Chef\'s Online',
                      style: TextStyle(color: Colors.black, fontFamily: 'bold'),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        buildProfile(
                            Image.asset('assets/images/c1.jpg'), ('dodiya')),
                        buildProfile(
                            Image.asset('assets/images/c2.jpg'), ('mehul')),
                        buildProfile(
                            Image.asset('assets/images/c3.jpg'), ('hirani')),
                        buildProfile(
                            Image.asset('assets/images/c4.jpg'), ('darshan')),
                        buildProfile(
                            Image.asset('assets/images/c3.jpg'), ('devang')),
                        buildProfile(
                            Image.asset('assets/images/c2.jpg'), ('dodiya')),
                        buildProfile(
                            Image.asset('assets/images/c1.jpg'), ('dodiya')),
                        buildProfile(
                            Image.asset('assets/images/c4.jpg'), ('dodiya')),
                        buildProfile(
                            Image.asset('assets/images/c2.jpg'), ('dodiya')),
                        buildProfile(
                            Image.asset('assets/images/c4.jpg'), ('dodiya')),
                        buildProfile(
                            Image.asset('assets/images/c1.jpg'), ('dodiya')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          for (var i in text) messageContent(),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Colors.grey.shade100,
      shape: Border(bottom: BorderSide(color: Colors.grey.shade300)),
      title: Text(
        'Messages',
        style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: 'bold'),
      ),
      centerTitle: true,
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {},
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProfile(img, txt) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Stack(
            overflow: Overflow.visible,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  border: Border.all(
                    width: 2,
                    color: style.itemColor,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(30),
                      child: FittedBox(
                        child: img,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 3,
                bottom: 3,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                  ),
                ),
              ),
            ],
          ),
          Text(
            '$txt',
            style: TextStyle(fontFamily: 'semibold'),
          ),
        ],
      ),
    );
  }

  Widget messageContent() {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => chatPage()));
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey.shade300),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Stack(
                      overflow: Overflow.visible,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: SizedBox.fromSize(
                            size: Size.fromRadius(30),
                            child: FittedBox(
                              child: Image.asset('assets/images/p1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                            right: -5,
                            bottom: -2,
                            child: Container(
                              height: 20,
                              child: CircleAvatar(
                                backgroundColor: style.itemColor,
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                      fontFamily: 'bold',
                                      color: Colors.white,
                                      fontSize: 10),
                                ),
                              ),
                            )),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 150,
                          child: Text(
                            'Patrica Luke',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style:
                                TextStyle(fontSize: 17.0, fontFamily: 'bold'),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: Text(
                            'Hey your order has been delivered?',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: false,
                            style: TextStyle(
                                color: Colors.black54, fontSize: 13.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                '8:30 PM',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: false,
                style: TextStyle(color: Colors.black54, fontSize: 13.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
