/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:finance1/pages/confirmation.dart';
import 'package:flutter/material.dart';
import '../components/styles.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TransferFromCard extends StatefulWidget {
  static const String id = 'TransferFromCard';

  const TransferFromCard({Key? key}) : super(key: key);

  @override
  _TransferFromCardState createState() => _TransferFromCardState();
}

class _TransferFromCardState extends State<TransferFromCard> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  List<String> imgList = [
    'assets/images/card.png',
    'assets/images/card.png',
    'assets/images/card.png',
    'assets/images/card.png',
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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.black54),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text("Transfer from card",
            style: TextStyle(
              fontFamily: 'medium',
              color: Colors.black,
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
            ),
          )
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              color: backgroundColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16),
                  _itemCarausl(),
                  _buildTextMain(),
                  elivatedButton('Continue')
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildTextMain() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          _buildTextField('Enter card number'),
          _buildTextField('Amount'),
        ],
      ),
    );
  }

  Widget _buildTextField(hint) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: TextField(
        decoration: InputDecoration(
          labelText: hint,
          labelStyle: TextStyle(color: Colors.black),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget _itemCarausl() {
    return Builder(
      builder: (context) {
        return Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  height: 240,
                  viewportFraction: 0.9,
                  aspectRatio: 10.0,
                  enlargeCenterPage: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
              items: imgList
                  .map((item) => Container(
                        padding: EdgeInsets.all(8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          child: Center(
                              child: Image.asset(
                            item,
                            fit: BoxFit.fill,
                            width: MediaQuery.of(context).size.width * 1,
                            height: MediaQuery.of(context).size.height * .8,
                          )),
                        ),
                      ))
                  .toList(),
              carouselController: _controller,
            ),
            SizedBox(height: 40),
          ],
        );
      },
    );
  }

  elivatedButton(btn) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      width: double.infinity,
      child: ElevatedButton(
        child: Text(btn, style: TextStyle(fontSize: 16, fontFamily: 'medium')),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Confirmation()));
        },
        style: ElevatedButton.styleFrom(
          primary: appColor,
          onPrimary: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }
}
