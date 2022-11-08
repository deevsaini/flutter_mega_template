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
import 'package:carousel_slider/carousel_slider.dart';

class Cards extends StatefulWidget {
  static const String id = 'Cards';

  const Cards({Key? key}) : super(key: key);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
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
      backgroundColor: backgroundColor,
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
        title: Text("Cards",
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
                  SizedBox(height: 30),
                  _itemCarausl(),
                  _buildbtns(),
                  _buildSettingCard(),
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildbtns() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          squreBtn(Icons.payment, appColor2, 'Payments'),
          squreBtn(Icons.change_circle_outlined, appColor3, 'Transfer'),
          squreBtn(Icons.phone_android_sharp, appColor, 'Replenish'),
          Column(
            children: [
              Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: appColor)),
                  child: Icon(
                    Icons.add,
                    color: appColor,
                  )),
              SizedBox(height: 10),
              cardText('Add Card'),
            ],
          )
        ],
      ),
    );
  }

  squreBtn(icn, color, txt) {
    return Column(
      children: [
        CircleAvatar(
          radius: 26,
          backgroundColor: color,
          child: Icon(
            icn,
            size: 32,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        cardText(txt),
      ],
    );
  }

  Widget _buildSettingCard() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SettingLabel(Icons.credit_card, "Contactless payment"),
          SettingLabel(Icons.block, "Block card"),
          SettingLabel(Icons.lock_outline_rounded, "Edit PIN"),
          SettingLabel(Icons.security, "Security settings"),
        ],
      ),
    );
  }

  SettingLabel(icn, lbl) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: Colors.black12)),
      ),
      child: Row(
        children: [
          Icon(icn, color: appColor),
          SizedBox(width: 10),
          cardText(lbl),
        ],
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(_current == entry.key ? 0.4 : 0.2)),
                  ),
                );
              }).toList(),
            )
          ],
        );
      },
    );
  }
}
