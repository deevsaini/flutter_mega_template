/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food2/pages/home.dart';
import 'package:food2/pages/tabs.dart';
import '../components/styles.dart' as style;
import 'package:food2/widgets/star.dart';

class Rate extends StatefulWidget {
  static const String id = 'Rate';

  const Rate({Key? key}) : super(key: key);

  @override
  _RateState createState() => _RateState();
}

class _RateState extends State<Rate> {
  double rating = 3.5;
  List<Item> time = <Item>[
    const Item('Delicious'),
    const Item('Affordably Priced'),
    const Item('Hygienic'),
    const Item('Punctuality'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: style.background,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            size: 20,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        centerTitle: true,
        title: const Text(
          "Rate",
          style: TextStyle(color: Colors.black, fontFamily: 'semibold'),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [_buildHotelRate(), SizedBox(height: 16), _buildDriverRate()],
      ),
    );
  }

  Widget _buildHotelRate() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'HariramBapa Prasad',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'semibold', fontSize: 18, color: Colors.black),
            ),
            SizedBox(height: 5),
            Text(
              'abc Brocely Avenue, Bagdana IYA 1220',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'medium', fontSize: 14, color: Colors.black54),
            ),
            SizedBox(height: 16),
            Text(
              'Rate Restaurant',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'medium', fontSize: 14, color: Colors.black54),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StarRating(
                    rating: rating,
                    onRatingChanged: (rating) =>
                        setState(() => this.rating = rating),
                    color: style.appColor,
                  ),
                ],
              ),
            ),
            Container(
              child: Wrap(
                spacing: 10.0,
                children: time.map((e) {
                  return _buildChip(
                    e.text,
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.message_rounded,
                  color: Colors.green,
                  size: 16,
                ),
                SizedBox(width: 5),
                Text(
                  'Share your feedback',
                  style: TextStyle(
                      fontFamily: 'medium',
                      fontSize: 12,
                      color: Colors.black45),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChip(String label) {
    return Chip(
      labelPadding: const EdgeInsets.symmetric(horizontal: 10),
      label: Text(
        label,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.black54,
        ),
      ),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      backgroundColor: Colors.white,
      elevation: 3.0,
      shadowColor: Colors.grey[30],
      padding: const EdgeInsets.all(6.0),
    );
  }

  Widget _buildDriverRate() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildProfilePic(),
            SizedBox(height: 10),
            Text(
              'John Snowborn',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'semibold', fontSize: 18, color: Colors.black),
            ),
            SizedBox(height: 16),
            Text(
              'Rate Driver',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'medium', fontSize: 14, color: Colors.black54),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StarRating(
                    rating: rating,
                    onRatingChanged: (rating) =>
                        setState(() => this.rating = rating),
                    color: style.appColor,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                child: const Text("Done",
                    style: TextStyle(fontSize: 16, fontFamily: 'semibold')),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TabsExample()));
                },
                style: ElevatedButton.styleFrom(
                  primary: style.appColor,
                  onPrimary: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfilePic() {
    return SizedBox(
      height: 80,
      width: 80,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/2.png"),
          ),
          Positioned(
            bottom: -10,
            left: 10,
            child: SizedBox(
              height: 30,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: Colors.white),
                  ),
                  primary: Colors.white,
                  backgroundColor: style.background,
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      '4.5',
                      style: TextStyle(
                          fontFamily: 'medium',
                          fontSize: 12,
                          color: Colors.black45),
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.black45,
                      size: 12,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Item {
  const Item(this.text);
  final String text;
}
