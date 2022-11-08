/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:hotelbooking/pages/hotel-list.dart';
import 'package:hotelbooking/pages/profile.dart';
import '../helper/style.dart' as style;

class HomePage extends StatefulWidget {
    HomePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Home';

    @override
    State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.transparent,
                centerTitle: true,
                elevation: 0,
                iconTheme: IconThemeData(
                    color: Colors.white
                ),
                flexibleSpace: Container(
                    decoration: style.appBarDecoration(),
                ),
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                child: Column(
                    children: [
//                        WaveWidget(
//                            backgroundColor: Colors.green,
//                            duration: 0,
//                            heightPercentange: 20.0,
//                            config: CustomConfig(
//    //                          colors: [
//    //                            Colors.white70,
//    //                            Colors.white54,
//    //                            Colors.white30,
//    //                            Colors.white24,
//    //                          ],
//                                gradients: [
//                                    [Colors.red, Color(0xEEF44336)],
//                                    [(Colors.red[800])!, Color(0x77E57373)],
//                                    [Colors.orange, Color(0x66FF9800)],
//                                    [Colors.yellow, Color(0x55FFEB3B)]
//                                ],
//                                durations: [0, 0, 00, 00],
//                                heightPercentages: [0.0, 0.0, 0.0, 0.0],
//                                blur: MaskFilter.blur(BlurStyle.solid, 10),
//                                gradientBegin: Alignment.bottomLeft,
//                                gradientEnd: Alignment.topRight,
//                            ),
//                            waveAmplitude: 0,
//                            size: Size(
//                              double.infinity,
//                              200,
//                            ),
//                        ),

                        Container(
                            width: double.infinity,
                            height: 300,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [style.appColor, style.appColor2],
                                  begin: const FractionalOffset(0.0, 0.0),
                                  end: const FractionalOffset(1.0, 0.0),
                                )
                            ),
                            child: Column(
                            children: [
                              Text('Book your favourite hotels from anywhere & any place !',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                            child: Column(
                                children: [
                                    Text('Search place below now!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20
                                        ),
                                    ),
                                    SizedBox(height: 24),
                                    Row(
                                        children: [
                                            Expanded(
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        boxShadow: [
                                                            BoxShadow(
                                                                color: Colors.grey.withOpacity(0.1),
                                                                spreadRadius: 1,
                                                                blurRadius: 3,
                                                                offset: Offset(0, 3),
                                                            )
                                                        ],
                                                        borderRadius: BorderRadius.all(
                                                            Radius.circular(30)
                                                        ),
                                                        color: Colors.white
                                                    ),
                                                    child: TextField(
                                                        decoration: InputDecoration(
                                                            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
                                                            hintText: 'Search',
                                                            prefixIcon: Icon(Icons.search, color: style.appColor),
                                                            border: InputBorder.none,
                                                            enabledBorder: InputBorder.none,
                                                            focusedBorder: InputBorder.none,
                                                        ),
                                                    ),
                                                )
                                            ),
                                            SizedBox(width: 16),
                                            FloatingActionButton(
                                                onPressed: () {
                                                    Navigator.push(context, new MaterialPageRoute(
                                                        builder: (context) => new HotelListPage())
                                                    );
                                                },
                                                backgroundColor: style.appColor,
                                                child: Text('Go',
                                                    style: TextStyle(color: Colors.white, fontFamily: 'semi-bold'),
                                                ),
                                            )
                                        ],
                                    ),
                                    SizedBox(height: 50),

                                    InkWell(
                                        onTap: () {
                                            Navigator.push(context, new MaterialPageRoute(
                                                builder: (context) => new ProfilePage())
                                            );
                                        },
                                        child: CircleAvatar(
                                            backgroundColor: Colors.grey[400],
                                            radius: 40,
                                            child: CircleAvatar(
                                                radius: 36,
                                                backgroundImage: AssetImage('assets/images/user.jpg'),
                                            ),
                                        ),
                                    ),
                                    SizedBox(height: 20),
                                    Text('Hello Mike!',
                                        style: TextStyle(
                                            fontSize: 20
                                        ),
                                    )
                                ],
                            ),
                        )
                    ],
                ),
            ),
        );
    }


}

class Item {
    const Item(this.sign, this.name);
    final String sign;
    final String name;
}