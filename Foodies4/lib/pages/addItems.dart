/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:fooddoor/helper/style.dart' as style;
import 'package:fooddoor/pages/myCart.dart';

class addItems extends StatefulWidget {
  addItems({Key? key}) : super(key: key);

  static const String page_id = "Add Items";

  @override
  _addItemsState createState() => _addItemsState();
}

enum SingingCharacter { sauce, cheese, tomato }

class _addItemsState extends State<addItems> {
  SingingCharacter? _character = SingingCharacter.sauce;
  int tabID = 2;
  int average = 62;

  List<int> item = [1, 2, 3, 4, 5, 6];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(child: _buildScaffold()),
      ],
    );
  }

  Widget _buildScaffold() {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBackImage(),
            _buildBottomContainer(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackImage() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/burger.jpg'), fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Container(
            // margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search_outlined,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.ios_share,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomContainer() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Chicken Burger',
                style: style.mediumText(),
              ),
              Text(
                '\$15.00',
                style: TextStyle(
                    fontFamily: 'medium',
                    color: style.secondaryColor,
                    fontSize: 16),
              ),
            ],
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
                    Icons.star,
                    color: style.secondaryColor,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('4.9 (150)')
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.watch_later_outlined,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('30 min')
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.currency_bitcoin_outlined,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Free Delivery')
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(child: _buildSegment()),
          if (tabID == 1)
            detailContainer()
          else if (tabID == 2)
            ingradientContainer()
          else if (tabID == 3)
            reviewContainer()
        ],
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: InkWell(
                onTap: () {
                  setState(() {
                    tabID = 1;
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 5),
                  decoration: segmentDecoration(1),
                  child: Text('Details', style: segmentText(1)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 2;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5),
                    decoration: segmentDecoration(2),
                    child: Text('Ingradients', style: segmentText(2)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
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
      ),
    );
  }

  segmentDecoration(val) {
    return BoxDecoration(
        border: Border(
            bottom: BorderSide(
                width: 2,
                color:
                    tabID == val ? style.secondaryColor : Colors.transparent)));
  }

  segmentText(val) {
    return TextStyle(
        fontFamily: tabID == val ? 'bold' : 'semibold',
        color: tabID == val ? Colors.black : Colors.grey);
  }

  Widget detailContainer() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 15),
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.grey.shade400, width: 1))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/burger.jpg',
                    height: 110,
                    width: 110,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Golden Double',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Burger Muffin',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Mcdonald\'s',
                          style: TextStyle(
                              fontSize: 14, color: style.secondaryColor),
                        ),
                        Text(
                          '\$ 15.00',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Quantity',
                style: style.mediumText(),
              ),
              Row(
                children: [
                  InkWell(
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: style.secondaryColor.withOpacity(0.5),
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '2',
                    style: TextStyle(fontFamily: 'medium', fontSize: 16),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    child: CircleAvatar(
                      radius: 15,
                      backgroundColor: style.secondaryColor,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Size',
                style: style.mediumText(),
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                    inactiveTrackColor: style.greyColor,
                    activeTrackColor: style.greyColor,
                    thumbColor: style.secondaryColor,
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 10.0),
                    trackHeight: 5),
                child: Slider(
                  value: average.toDouble(),
                  min: 0,
                  max: 100.0,
                  onChanged: (double newValue) {
                    setState(() {
                      average = newValue.round();
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Sides',
            style: style.mediumText(),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var i in item) sidesItem('assets/images/burger.jpg'),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Beverages',
            style: style.mediumText(),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var i in item) sidesItem('assets/images/drink.png'),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => myCart()));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Add to cart',
                  style: TextStyle(fontFamily: 'medium', fontSize: 16),
                ),
                Text(
                  '\$15.00',
                  style: TextStyle(fontFamily: 'medium', fontSize: 16),
                ),
              ],
            ),
            style: style.simpleButton(),
          )
        ],
      ),
    );
  }

  Widget sidesItem(image) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 10.0,
            ),
          ],
          borderRadius: BorderRadius.circular(10)),
      child: ClipRRect(
        child: Image.asset(
          image,
          height: 50,
          width: 50,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget ingradientContainer() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Choice of top burger',
                style: style.mediumText(),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                decoration: BoxDecoration(
                    color: style.secondaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  'Required',
                  style: TextStyle(color: style.secondaryColor),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ListTile(
                title: const Text('Extra Savory Sause'),
                leading: Radio<SingingCharacter>(
                  activeColor: style.secondaryColor,
                  value: SingingCharacter.sauce,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Extra Cheese'),
                leading: Radio<SingingCharacter>(
                  activeColor: style.secondaryColor,
                  value: SingingCharacter.cheese,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Extra Tomatos'),
                leading: Radio<SingingCharacter>(
                  activeColor: style.secondaryColor,
                  value: SingingCharacter.tomato,
                  groupValue: _character,
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add_circle_outline,
                color: style.secondaryColor,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Add Special instruction',
                style: TextStyle(color: style.secondaryColor),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: style.secondaryColor.withOpacity(0.5),
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '2',
                      style: TextStyle(fontFamily: 'medium', fontSize: 16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: style.secondaryColor,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => myCart()));
                  },
                  child: Container(
                    width: 200,
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: style.appColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Add to cart',
                          style: TextStyle(
                              fontFamily: 'medium', color: Colors.white),
                        ),
                        Text(
                          '\$25.00',
                          style: TextStyle(
                              fontFamily: 'medium', color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget reviewContainer() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                '4.1',
                style: TextStyle(fontFamily: 'medium', fontSize: 40),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: style.secondaryColor,
                          ),
                          Icon(
                            Icons.star,
                            color: style.secondaryColor,
                          ),
                          Icon(
                            Icons.star,
                            color: style.secondaryColor,
                          ),
                          Icon(
                            Icons.star,
                            color: style.secondaryColor,
                          ),
                          Icon(
                            Icons.star,
                            color: style.greyColor,
                          ),
                        ],
                      ),
                      Text('150 reviews')
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          allReviews(),
          allReviews(),
          allReviews(),
          allReviews(),
        ],
      ),
    );
  }

  Widget allReviews() {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: style.appColor,
            radius: 30,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: ClipRRect(
                child: Image.asset(
                  'assets/images/profile.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Maxime Bratlbo',
                        style: style.mediumText(),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: style.secondaryColor,
                          ),
                          Icon(
                            Icons.star,
                            color: style.secondaryColor,
                          ),
                          Icon(
                            Icons.star,
                            color: style.secondaryColor,
                          ),
                          Icon(
                            Icons.star,
                            color: style.secondaryColor,
                          ),
                          Icon(
                            Icons.star,
                            color: style.secondaryColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '17 May 2022',
                    style: TextStyle(color: style.greyColor),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
                  Text(
                    'Show more',
                    style: TextStyle(color: style.appColor),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: style.greyColor))),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/burger.jpg',
                            height: 70,
                            width: 80,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/burger.jpg',
                            height: 70,
                            width: 80,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/burger.jpg',
                            height: 70,
                            width: 80,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
