/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salon/helper/style.dart' as style;
import 'package:salon/pages/salonSpecialist.dart';

class completeSalonDetail extends StatefulWidget {
  completeSalonDetail({Key? key}) : super(key: key);

  static const String page_id = "Complete Salon Details";

  @override
  _completeSalonDetailState createState() => _completeSalonDetailState();
}

class _completeSalonDetailState extends State<completeSalonDetail> {
  List<int> artist = [1, 2, 3, 4, 5, 6, 7, 8];
  String tabID = 'About';
  Object get value => true;
  int segmentedControlGroupValue = 0;
  final Map<int, Widget> myTabs = const <int, Widget>{
    0: Text("About"),
    1: Text("Service"),
    2: Text("Package"),
    3: Text("Gallery"),
    4: Text("Review"),
  };
  bool isChecked = false;
  List<int> package = [1, 2, 3, 4, 5];
  List<int> review = [1, 2, 3, 4, 5];
  List<int> servicepackage = [1, 2, 3, 4, 5];

  List<String> images = [
    'assets/images/profile.webp',
    'assets/images/voucher.webp',
    'assets/images/package.jpg',
    'assets/images/men.jpg',
    'assets/images/profile.webp',
    'assets/images/voucher.webp',
    'assets/images/package.jpg',
    'assets/images/men.jpg',
    'assets/images/profile.webp',
    'assets/images/voucher.webp',
    'assets/images/package.jpg',
    'assets/images/men.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: _buildBody()),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 250,
              color: Colors.white,
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/profile.webp'),
                      fit: BoxFit.cover),
                ),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 30),
                  height: 250,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          IconButton(
                            color: Colors.white,
                            icon: Icon(Icons.favorite_border_outlined),
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bella Renova',
                        style: style.boldText(),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Open',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'medium'),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: StadiumBorder(), primary: Colors.green),
                      ),
                    ],
                  ),
                  Text('6391 Elgin St Celina Deliware 10299'),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber.shade600,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber.shade600,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber.shade600,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber.shade600,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.grey.shade300,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '(76 reviews)',
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.chrome_reader_mode_outlined),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Website',
                            style: style.simpleText(),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.call_outlined),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Call',
                            style: style.simpleText(),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.location_on_outlined),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Direction',
                            style: style.simpleText(),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return shareToBottomModal();
                              });
                        },
                        child: Column(
                          children: [
                            Icon(Icons.share_outlined),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Share',
                              style: style.simpleText(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        for (var i in artist) popularArtist(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildSegment(),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Column(children: [
                          if (segmentedControlGroupValue == 0)
                            aboutContainer()
                          else if (segmentedControlGroupValue == 1)
                            serviceContainer()
                          else if (segmentedControlGroupValue == 2)
                            packageContainer()
                          else if (segmentedControlGroupValue == 3)
                            galleryContainer()
                          else if (segmentedControlGroupValue == 4)
                            reviewContainer()
                        ]),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget shareToBottomModal() {
    return Container(
      height: 350,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Share to',
              style: style.headText(),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                shareButton('assets/images/facebook.png', 'Facebook'),
                shareButton('assets/images/gmail.png', 'Gmail'),
                shareButton('assets/images/twitter.png', 'Twitter'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                shareButton('assets/images/pin.png', 'Pinterest'),
                shareButton('assets/images/insta.png', 'Instagram'),
                shareButton('assets/images/messenger.png', 'Messenger'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget shareButton(logo, name) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.shade300,
                ),
              ),
              child: InkWell(
                onTap: () {},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Column(
                    children: [
                      Image.asset(logo, width: 30.0, height: 30.0),
                    ],
                  ),
                ),
              ),
            ),
            Text(name)
          ],
        ),
      ],
    );
  }

  Widget popularArtist() {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => salonSpecialist()));
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: SizedBox.fromSize(
                size: Size.fromRadius(35),
                child: FittedBox(
                  child: Image(image: AssetImage('assets/images/g1.jpg')),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Lily',
              style: style.mediumText(),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Hair stylist',
              style: TextStyle(color: style.greyTextColor),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSegment() {
    return CupertinoSlidingSegmentedControl(
      groupValue: segmentedControlGroupValue,
      children: myTabs,
      onValueChanged: (i) {
        this.setState(() {
          segmentedControlGroupValue = i.hashCode;
        });
      },
    );
  }

  Widget aboutContainer() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry Lorem Ipsum has been the industry ...Read more',
            style: TextStyle(letterSpacing: 1.1),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Opening Hours',
            style: TextStyle(fontFamily: 'semi-bold'),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Monday - Friday :',
                    style: TextStyle(color: style.greyTextColor),
                  ),
                  Text('8:30 am - 9:30 pm'),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Saturday - Sunday :',
                    style: TextStyle(color: style.greyTextColor),
                  ),
                  Text('9:00 am - 1:00 pm'),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Contact',
            style: TextStyle(fontFamily: 'semi-bold'),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: style.appColor, width: 1),
              ),
            ),
            child: Text(
              '583 463 22 34',
              style: TextStyle(color: style.appColor),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Address',
            style: TextStyle(fontFamily: 'semi-bold'),
          ),
          SizedBox(
            height: 10,
          ),
          Text('6391 Elgin St Celina Deliware 10299'),
          SizedBox(
            height: 30,
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.navigation_outlined),
            label: Text(
              'Get Directions - 4 km',
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
            style: style.simpleButton(),
          )
        ],
      ),
    );
  }

  Widget serviceContainer() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hair Wash',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                Row(
                  children: [
                    Text('12 types'),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.expand_more,
                      color: Colors.grey.shade400,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: style.appColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hair Cut',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text('Regular haircut'),
                        Text(
                          '+\$ 5.00',
                          style: TextStyle(
                              color: style.appColor, fontFamily: 'medium'),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.expand_more,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hair Coloring',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                Row(
                  children: [
                    Text('7 types'),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.expand_more,
                      color: Colors.grey.shade400,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Eye Makeup',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                Row(
                  children: [
                    Text('2 types'),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.expand_more,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: style.appColor),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hair Cut',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text('Classic Shaving'),
                        Text(
                          '+\$ 3.12',
                          style: TextStyle(
                              color: style.appColor, fontFamily: 'medium'),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.expand_more,
                      color: Colors.grey.shade400,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hairdryer',
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                Row(
                  children: [
                    Text('3 types'),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.expand_more,
                      color: Colors.grey.shade400,
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return paymentMethodBottomSheet();
                  });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'BOOK NOW',
                  style: TextStyle(fontFamily: 'semi-bold'),
                ),
                Text(
                  '\$ 8.12',
                  style: TextStyle(fontFamily: 'semi-bold'),
                ),
              ],
            ),
            style: style.simpleButton(),
          ),
        ],
      ),
    );
  }

  Widget paymentMethodBottomSheet() {
    bool isChecked = true;
    return Container(
      height: 350,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Payment Method',
              style: style.headText(),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: style.appColor),
              ),
              child: InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage('assets/images/paypal.png'),
                      height: 30,
                      width: 30,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Jenny Wilson',
                          style: TextStyle(fontFamily: 'medium'),
                        ),
                      ),
                    ),
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: style.appColor,
                      value: isChecked,
                      shape: CircleBorder(),
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage('assets/images/master.png'),
                    height: 30,
                    width: 30,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        '**** **** **** 5455',
                        style: TextStyle(fontFamily: 'medium'),
                      ),
                    ),
                  ),
                  Checkbox(
                    checkColor: Colors.grey,
                    activeColor: Colors.grey,
                    value: isChecked,
                    shape: CircleBorder(),
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage('assets/images/visa.png'),
                    height: 30,
                    width: 30,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        '**** **** **** 4545',
                        style: TextStyle(fontFamily: 'medium'),
                      ),
                    ),
                  ),
                  Checkbox(
                    checkColor: Colors.grey,
                    activeColor: Colors.grey,
                    value: isChecked,
                    shape: CircleBorder(),
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text(
                "Continue",
                style: TextStyle(fontFamily: 'semi-bold'),
              ),
              onPressed: () {},
              style: style.simpleButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget packageContainer() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var i in package) packageLoop(),
        ],
      ),
    );
  }

  Widget packageLoop() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              showModalBottomSheet<void>(
                isScrollControlled: true,
                context: context,
                builder: (BuildContext context) {
                  return packageOfferBottomSheet();
                },
              );
            },
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/salon.webp',
                      height: 100,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bridal beauty makeup',
                          style:
                              TextStyle(fontFamily: 'semi-bold', fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '6391 Elgin St Celina Deliware 10299',
                          style: style.simpleText(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$280.30',
                              style: TextStyle(
                                  color: style.appColor, fontFamily: 'medium'),
                            ),
                            SizedBox(
                              height: 40,
                              width: 120,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Book Now'),
                                style: ElevatedButton.styleFrom(
                                    primary: style.appColor,
                                    onPrimary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget packageOfferBottomSheet() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: AssetImage('assets/images/g2.jpg'),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Bridal Beauty Makeup',
              style: style.headText(),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Complete Package offer till sep 18,2022',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry Lorem Ipsum has been the industry.',
              style: TextStyle(letterSpacing: 1.1),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Services',
              style: style.headText(),
            ),
            SizedBox(
              height: 20,
            ),
            for (var i in servicepackage) servicePackage(),
          ],
        ),
      ),
    );
  }

  Widget servicePackage() {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Icon(
                Icons.check,
                color: Colors.green,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Hair Styling')
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.check,
                color: Colors.green,
              ),
              SizedBox(
                width: 5,
              ),
              Text('Nail')
            ],
          ),
        ],
      ),
    );
  }

  Widget galleryContainer() {
    return GridView.count(
      primary: false,
      crossAxisCount: 3,
      shrinkWrap: true,
      childAspectRatio: 90 / 100,
      padding: EdgeInsets.only(top: 16, bottom: 16),
      children: List.generate(images.length, (index) {
        return Container(
          child: Stack(
            children: <Widget>[
              Container(
                  height: double.infinity,
                  child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(images[index]), fit: BoxFit.cover),
                    ),
                  )),
            ],
          ),
        );
      }),
    );
  }

  Widget reviewContainer() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Write your review'),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.grey.shade300,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey.shade300,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey.shade300,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey.shade300,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.grey.shade300,
                    size: 20,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(Icons.image_outlined),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Leave your experience...',
                    ),
                  ),
                ),
              ),
              Icon(
                Icons.near_me_outlined,
                color: style.appColor,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'All review (76)',
            style: TextStyle(fontFamily: 'semi-bold'),
          ),
          SizedBox(
            height: 20,
          ),
          for (var i in review) reviewLoop(),
        ],
      ),
    );
  }
}

Widget reviewLoop() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/g1.jpg'),
            radius: 20,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jaydeep Hirani',
                    style: TextStyle(fontFamily: 'semi-bold'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber.shade600,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber.shade600,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber.shade600,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber.shade600,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey.shade300,
                          size: 20,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            '2 days ago',
            style: TextStyle(fontFamily: 'semi-bold', color: Colors.grey),
          )
        ],
      ),
      SizedBox(
        height: 10,
      ),
      Text(
          'The people working here are just so nice and helpful and make you feel so comfortable !'),
      SizedBox(
        height: 30,
      ),
    ],
  );
}
