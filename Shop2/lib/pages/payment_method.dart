/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shop2/widget/appbar.dart';
import 'package:shop2/widget/NavBar.dart';
import '../components/styles.dart';

class PaymentMethod extends StatefulWidget {
  static const String id = 'PaymentMethod';

  const PaymentMethod({Key? key}) : super(key: key);

  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  List<String> imgList = [
    'assets/images/card.png',
    'assets/images/card.png',
    'assets/images/card.png',
    'assets/images/card.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Colors.white,
      appBar: BaseAppBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(height: 24),
            centerHeading("Payment Method"),
            sepLine(),
            SizedBox(height: 10),
            _itemCarausl(),
            _buildForm()
          ],
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

  Widget _buildForm() {
    return Column(
      children: [
        _buildTextField("Name on Card"),
        _buildTextField("Card Number"),
        Row(
          children: [
            Expanded(child: _buildTextField("Exp Month")),
            Expanded(child: _buildTextField("Exp Date")),
          ],
        ),
        _buildTextField("CVV"),
      ],
    );
  }

  Widget _buildTextField(hint) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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

  Widget _buildBottomNav() {
    return Container(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        child: Text("Add card".toUpperCase(), style: TextStyle(fontSize: 16)),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: appColor2,
          onPrimary: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 14),
        ),
      ),
    );
  }
}
