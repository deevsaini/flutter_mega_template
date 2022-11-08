/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/bookChefPage.dart';
import 'package:foodies_fluttermarketplace_hardik/utilities/constance.dart'
    as style;

class productsPage extends StatefulWidget {
  productsPage({Key? key}) : super(key: key);

  static const String pageId = 'productsPage';

  @override
  State<productsPage> createState() => _productsPageState();
}

class _productsPageState extends State<productsPage> {
  int tabID = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildProfile(),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(Icons.message, color: style.itemColor, size: 30),
                      Text('Message', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.call, color: style.itemColor, size: 30),
                      Text('Call', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.directions, color: style.itemColor, size: 30),
                      Text('Direction', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.share, color: style.itemColor, size: 30),
                      Text('Share', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Chef Menu',
                      style: TextStyle(
                          fontFamily: 'bold',
                          fontSize: 17,
                          color: Colors.black),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _buildSliders(
                            Image.asset('assets/images/1.jpg'), ('Hamburger')),
                        _buildSliders(
                            Image.asset('assets/images/2.jpg'), ('Hot Wings')),
                        _buildSliders(Image.asset('assets/images/3.jpg'),
                            ('American Dish')),
                        _buildSliders(
                            Image.asset('assets/images/4.jpg'), ('Salads')),
                        _buildSliders(
                            Image.asset('assets/images/5.jpg'), ('Pizza')),
                        _buildSliders(
                            Image.asset('assets/images/6.jpg'), ('Hot Dogs')),
                        _buildSliders(
                            Image.asset('assets/images/7.jpg'), ('Fries')),
                        _buildSliders(
                            Image.asset('assets/images/8.jpg'), ('Manchurium')),
                      ],
                    ),
                  ),
                  _buildSegment(),
                ],
              ),
            ),
          ),
          if (tabID == 1)
            _buildOverview()
          else if (tabID == 2)
            _buildServices()
          else if (tabID == 3)
            _buildReview()
        ],
      ),
    );
  }

  Widget _buildOverview() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('About', style: TextStyle(fontFamily: 'bold', fontSize: 17)),
              RichText(
                text: TextSpan(
                    text: 'Average Price : ',
                    style: TextStyle(color: Colors.grey, fontFamily: 'bold'),
                    children: [
                      TextSpan(
                        text: '\$20',
                        style: TextStyle(
                            color: style.itemColor, fontFamily: 'bold'),
                        // recognizer: new TapGestureRecognizer()..onTap = () => print('Tap Here onTap'),
                      ),
                      TextSpan(
                        text: '/hour',
                        style: TextStyle(
                            color: Colors.grey, fontFamily: 'regular'),
                        // recognizer: new TapGestureRecognizer()..onTap = () => print('Tap Here onTap'),
                      ),
                    ]),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident',
              style: TextStyle(fontSize: 15),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Hour Available',
                  style: TextStyle(fontFamily: 'bold', fontSize: 17)),
              RichText(
                text: TextSpan(
                  text: 'View Detail',
                  style: TextStyle(color: style.itemColor, fontFamily: 'bold'),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                Icon(Icons.circle, color: Colors.greenAccent, size: 15),
                SizedBox(width: 10),
                RichText(
                  text: TextSpan(
                      text: 'Monday - Friday ',
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                          text: '4:00 PM - 8:00 PM',
                          style: TextStyle(color: Colors.black),
                          // recognizer: new TapGestureRecognizer()..onTap = () => print('Tap Here onTap'),
                        ),
                      ]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              children: [
                Icon(Icons.circle, color: Colors.greenAccent, size: 15),
                SizedBox(width: 10),
                RichText(
                  text: TextSpan(
                      text: 'Saturday - Sunday ',
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                          text: '7:00 AM - 8:00 PM',
                          style: TextStyle(color: Colors.black),
                          // recognizer: new TapGestureRecognizer()..onTap = () => print('Tap Here onTap'),
                        ),
                      ]),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text('Address',
                  style: TextStyle(fontFamily: 'bold', fontSize: 17)),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: Text(
                'Near Headquarted luvarvav road, Hawamahal, Palitana, 364270',
                style: TextStyle(color: Colors.grey),
              )),
              Container(
                height: 50,
                width: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/images/m1.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildServices() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildSliders2(
                    Image.asset('assets/images/1.jpg'), ('Hamburger')),
                _buildSliders2(
                    Image.asset('assets/images/2.jpg'), ('Hot Wings')),
                _buildSliders2(
                    Image.asset('assets/images/3.jpg'), ('American Dish')),
                _buildSliders2(Image.asset('assets/images/4.jpg'), ('Salads')),
                _buildSliders2(Image.asset('assets/images/5.jpg'), ('Pizza')),
                _buildSliders2(
                    Image.asset('assets/images/6.jpg'), ('Hot Dogs')),
                _buildSliders2(Image.asset('assets/images/7.jpg'), ('Fries')),
                _buildSliders2(
                    Image.asset('assets/images/8.jpg'), ('Manchurium')),
              ],
            ),
          ),
        ),
        _buildServicesContent(),
        _buildServicesContent(),
        _buildServicesContent(),
        _buildServicesContent(),
        _buildServicesContent(),
        _buildServicesContent(),
        _buildServicesContent(),
      ],
    );
  }

  Widget _buildReview() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey.shade300),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Write your review',
                        style: TextStyle(color: Colors.grey, fontSize: 17)),
                    Row(
                      children: [
                        Icon(Icons.star, color: style.appColor),
                        Icon(Icons.star, color: style.appColor),
                        Icon(Icons.star, color: style.appColor),
                        Icon(Icons.star, color: Colors.grey),
                        Icon(Icons.star, color: Colors.grey),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(20),
                          child: FittedBox(
                            child: Image.asset('assets/images/p1.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    searchbar('Search Chef or Dish..'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 70,
                      decoration: style.smallButtonStyle2(),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Center(
                        child: Text(
                          'post',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: [
              Text(
                'All Reviews (23)',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        _buildReviewContent(),
        _buildReviewContent(),
        _buildReviewContent(),
        _buildReviewContent(),
        _buildReviewContent(),
      ],
    );
  }

  Widget _buildProfile() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/16.jpg'),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.srcOver),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.transparent,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.transparent,
                  child: IconButton(
                    icon: Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      //
                    },
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: style.itemColor),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(30),
                      child: FittedBox(
                        child: Image.asset('assets/images/c3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 120,
                              child: Text(
                                'Patricia Luke',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontFamily: 'bold',
                                    fontSize: 18,
                                    color: Colors.white),
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                  text: '\$ 20',
                                  style: TextStyle(
                                      color: style.appColor,
                                      fontFamily: 'bold'),
                                  children: [
                                    TextSpan(
                                      text: '/Hour',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'regular'),
                                      // recognizer: new TapGestureRecognizer()..onTap = () => print('Tap Here onTap'),
                                    )
                                  ]),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 120,
                              child: Text(
                                'Hoston, Texas',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'bold',
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  '3.5',
                                  style: TextStyle(
                                      color: style.appColor, fontSize: 12),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Row(
                                    children: [
                                      Icon(Icons.star,
                                          color: style.appColor, size: 15),
                                      Icon(Icons.star,
                                          color: style.appColor, size: 15),
                                      Icon(Icons.star,
                                          color: style.appColor, size: 15),
                                      Icon(Icons.star,
                                          color: style.appColor, size: 15),
                                      Icon(Icons.star,
                                          color: style.appColor, size: 15),
                                    ],
                                  ),
                                ),
                                Text(
                                  '(36 Review)',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ],
                            ),
                            Container(
                              width: 70,
                              decoration: style.greenButtonStyle(),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Center(
                                child: Text(
                                  'Open',
                                  style: TextStyle(color: Colors.white),
                                ),
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
          ),
        ],
      ),
    );
  }

  Widget _buildServicesContent() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(color: Colors.grey.shade300),
            top: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          width: double.infinity,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(40),
                  child: FittedBox(
                    child: Image.asset('assets/images/c3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 120,
                            child: Text(
                              'American Dish',
                              overflow: TextOverflow.ellipsis,
                              style:
                                  TextStyle(fontFamily: 'bold', fontSize: 18),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: style.itemColor,
                                size: 15,
                              ),
                              SizedBox(
                                child: Text(
                                  '4.0',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 150,
                            child: Text(
                              'Categories or item descriptions',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'bold',
                                  fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '\$ 80.50',
                            style: TextStyle(
                                color: style.itemColor,
                                fontSize: 12,
                                fontFamily: 'bold'),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 70,
                            decoration: style.greyButtonStyle(),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Center(
                              child: Text(
                                '15.20 Min',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 10),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => bookChefPage()));
                            },
                            child: Container(
                              width: 70,
                              decoration: style.smallButtonStyle(),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Center(
                                child: Text(
                                  'Add',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ),
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
        ),
      ),
    );
  }

  Widget _buildReviewContent() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
                top: BorderSide(color: Colors.grey.shade300)),
          ),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(30),
                          child: FittedBox(
                            child: Image.asset('assets/images/c3.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 120,
                                    child: Text(
                                      'Kevin Doyle',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontFamily: 'bold', fontSize: 15),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: style.itemColor,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        child: Text(
                                          '4.0',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star,
                                      color: style.appColor, size: 15),
                                  Icon(Icons.star,
                                      color: style.appColor, size: 15),
                                  Icon(Icons.star,
                                      color: style.appColor, size: 15),
                                  Icon(Icons.star,
                                      color: style.appColor, size: 15),
                                  Icon(Icons.star,
                                      color: style.appColor, size: 15),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSliders(img, txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              border: Border.all(
                width: 2,
                color: style.itemColor,
              ),
            ),
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
          Text(
            '$txt',
            style: TextStyle(fontFamily: 'semibold'),
          ),
        ],
      ),
    );
  }

  Widget _buildSliders2(img, txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                width: 2,
                color: style.itemColor,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: SizedBox.fromSize(
                size: Size.fromRadius(30),
                child: FittedBox(
                  child: img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Text(
            '$txt',
            style: TextStyle(fontFamily: 'semibold'),
          ),
        ],
      ),
    );
  }

  Widget searchbar(hintText) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
          height: 40,
          child: TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey.shade600),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
              filled: true,
              fillColor: Colors.grey.shade300,
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
              onTap: () {
                setState(() {
                  tabID = 1;
                });
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 5),
                decoration: segmentDecoration(1),
                child: Text('Overview', style: segmentText(1)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
                onTap: () {
                  setState(() {
                    tabID = 2;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 5),
                  decoration: segmentDecoration(2),
                  child: Text('Services', style: segmentText(2)),
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: InkWell(
                onTap: () {
                  setState(() {
                    tabID = 3;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 5),
                  decoration: segmentDecoration(3),
                  child: Text('Review', style: segmentText(3)),
                )),
          ),
        ],
      ),
    );
  }

  segmentDecoration(val) {
    return BoxDecoration(
        border: Border(
            bottom: BorderSide(
                width: 2,
                color: tabID == val ? style.itemColor : Colors.transparent)));
  }

  segmentText(val) {
    return TextStyle(
        fontFamily: tabID == val ? 'bold' : 'semibold',
        color: tabID == val ? style.itemColor : Colors.grey);
  }
}
