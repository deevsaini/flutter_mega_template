/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon1/Pages/BookAppointmentPage.dart';
import 'package:salon1/Utilities/ConstancePage.dart' as style;

class ServicesInfoPage extends StatefulWidget {
  ServicesInfoPage({Key? key}) : super(key: key);

  static const String PageId = 'ServicesInfoPage';

  @override
  State<ServicesInfoPage> createState() => _ServicesInfoPageState();
}

class _ServicesInfoPageState extends State<ServicesInfoPage> {
  int tabID = 1;
  bool isChecked = false;
  List<int> text = [1, 2, 3, 4, 5, 6, 7];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _buildBody(),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildProfile(),
          _buildSegment(),
          if (tabID == 1)
            specialistContent()
          else if (tabID == 2)
            serviceContent()
          else if (tabID == 3)
            gallaryContent()
          else if (tabID == 4)
            reviewContent()
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/h4.jpg'), fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Row(
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
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.transparent,
                      child: IconButton(
                        icon: Icon(
                          Icons.call,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          //
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.transparent,
                        child: IconButton(
                          icon: Icon(
                            Icons.chat,
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
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Container(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Marguerite Cross \n Day Salon',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'bold',
                          fontSize: 17),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "4.5",
                                style: TextStyle(
                                    fontFamily: 'bold',
                                    fontSize: 17,
                                    color: Colors.white),
                              ),
                              WidgetSpan(
                                child: Icon(
                                  Icons.star,
                                  size: 20,
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent.shade700,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              'OPEN',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'bold'),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

// this is secialistContent
  Widget specialistContent() {
    return Column(
      children: [
        _buildTitle('Hair Style'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: [
                _buildSpecialist('Rahul Jograna', 'assets/images/selfies.jpg'),
                _buildSpecialist('Hardik Rajput', 'assets/images/p4.jpg'),
                _buildSpecialist('Shailly Acharya', 'assets/images/p6.jpg'),
                _buildSpecialist('Jaydeep Hirani', 'assets/images/p3.jpg'),
                _buildSpecialist('Dodiya Saheb', 'assets/images/s3.jpg'),
              ],
            ),
          ),
        ),
        _buildTitle('Mackup Artist'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: [
                _buildSpecialist('Rahul Jograna', 'assets/images/selfies.jpg'),
                _buildSpecialist('Hardik Rajput', 'assets/images/p4.jpg'),
                _buildSpecialist('Shailly Acharya', 'assets/images/p6.jpg'),
                _buildSpecialist('Jaydeep Hirani', 'assets/images/p3.jpg'),
                _buildSpecialist('Dodiya Saheb', 'assets/images/s3.jpg'),
              ],
            ),
          ),
        ),
        _buildTitle('S.b Barber'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: [
                _buildSpecialist('Rahul Jograna', 'assets/images/selfies.jpg'),
                _buildSpecialist('Hardik Rajput', 'assets/images/p4.jpg'),
                _buildSpecialist('Shailly Acharya', 'assets/images/p6.jpg'),
                _buildSpecialist('Jaydeep Hirani', 'assets/images/p3.jpg'),
                _buildSpecialist('Dodiya Saheb', 'assets/images/s3.jpg'),
              ],
            ),
          ),
        ),
      ],
    );
  }

// this is serviceContent
  Widget serviceContent() {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              children: [
                _buildProfileContent(
                    Image.asset('assets/images/p2.jpg'), ('dodiya')),
                _buildProfileContent(
                    Image.asset('assets/images/p3.jpg'), ('mehul')),
                _buildProfileContent(
                    Image.asset('assets/images/p4.jpg'), ('hirani')),
                _buildProfileContent(
                    Image.asset('assets/images/p5.jpg'), ('darshan')),
                _buildProfileContent(
                    Image.asset('assets/images/p3.jpg'), ('devang')),
                _buildProfileContent(
                    Image.asset('assets/images/p2.jpg'), ('dodiya')),
                _buildProfileContent(
                    Image.asset('assets/images/p4.jpg'), ('dodiya')),
                _buildProfileContent(
                    Image.asset('assets/images/p5.jpg'), ('dodiya')),
                _buildProfileContent(
                    Image.asset('assets/images/p2.jpg'), ('dodiya')),
                _buildProfileContent(
                    Image.asset('assets/images/p3.jpg'), ('dodiya')),
                _buildProfileContent(
                    Image.asset('assets/images/p5.jpg'), ('dodiya')),
              ],
            ),
          ),
        ),
        _buildTitle('Package & Offers'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              children: [
                _buildCategories('Reflection Beauty Salon',
                    'assets/images/h2.jpg', 'Eva Surbhi Complex'),
                _buildCategories('Lovely Beauty Salon', 'assets/images/h6.jpg',
                    'Hong Complex'),
                _buildCategories(
                    'Showsen Salon', 'assets/images/h3.jpg', 'Iscon Complex'),
                _buildCategories(
                    'Beauty Hair Art', 'assets/images/h4.jpg', 'HydRaw Center'),
                _buildCategories(
                    'Danwer Salon', 'assets/images/h5.jpg', 'Wester Complex'),
              ],
            ),
          ),
        ),
        _buildTitle('Popular Services'),
        for (var i in text) _buildPopularContent(),
      ],
    );
  }

// this is gallaryContent
  Widget gallaryContent() {
    final List<String> imageList = [
      'assets/images/p4.jpg',
      "assets/images/p6.jpg",
      "assets/images/p3.jpg",
      "assets/images/s3.jpg",
      "assets/images/p2.jpg",
      "assets/images/s2.jpg",
    ];
    return Container(
      child: GridView.count(
        primary: false,
        crossAxisCount: 2,
        shrinkWrap: true,
        childAspectRatio: 90 / 100,
        padding: EdgeInsets.only(top: 16, left: 16, bottom: 16),
        children: List.generate(imageList.length, (index) {
          return Container(
            child: Stack(
              children: <Widget>[
                Container(
                    height: double.infinity,
                    margin: EdgeInsets.only(right: 16, bottom: 16),
                    child: Container(
                      height: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imageList[index]),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    )),
              ],
            ),
          );
        }),
      ),
    );
  }

// this is reviewContent
  Widget reviewContent() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 20.0,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Your Review',
                        style: TextStyle(fontFamily: 'bold', fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'What are you feel about this salon.',
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: style.appColor,
                          ),
                          Icon(
                            Icons.star,
                            color: style.appColor,
                          ),
                          Icon(
                            Icons.star,
                            color: style.appColor,
                          ),
                          Icon(
                            Icons.star,
                            color: style.appColor,
                          ),
                          Icon(
                            Icons.star,
                            color: style.appColor,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _textField('Say Something..'),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: CircleAvatar(
                                backgroundColor: Color(0xFFF78407),
                                child: Icon(
                                  Icons.send,
                                  color: Colors.white,
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              for (var i in text)
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: SizedBox.fromSize(
                                    size: Size.fromRadius(30),
                                    child: FittedBox(
                                      child:
                                          Image.asset('assets/images/p5.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Carlos Rows',
                                      style: TextStyle(
                                          fontFamily: 'bold', fontSize: 17),
                                    ),
                                    Text(
                                      '5 Day Ago',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '4.0',
                                  style: TextStyle(fontFamily: 'bold'),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.star,
                                  color: style.appColor,
                                  size: 15,
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1, color: Colors.grey))),
                          child: Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTitle(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$txt',
            style: TextStyle(fontSize: 20, fontFamily: 'bold'),
          ),
        ],
      ),
    );
  }

  Widget _buildPopularContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(40),
                      child: FittedBox(
                        child: Image.asset('assets/images/h5.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hair Styling',
                        style: TextStyle(fontFamily: 'bold', fontSize: 17),
                      ),
                      Row(
                        children: [
                          Text(
                            '45 Min',
                            style: TextStyle(fontFamily: 'bold'),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              ':',
                              style: TextStyle(fontFamily: 'bold'),
                            ),
                          ),
                          Text(
                            '\$17.5',
                            style: TextStyle(
                                fontFamily: 'bold', color: style.appColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
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
          )),
    );
  }

  Widget _textField(hintText) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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

  Widget _buildSpecialist(txt, img) {
    return InkWell(
      onTap: () {
        //
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 20.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 130,
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new AssetImage('$img'),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                  child: SizedBox(
                    width: 100,
                    child: Text(
                      '$txt',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontFamily: 'bold', fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileContent(img, txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: ClipRRect(
              child: SizedBox.fromSize(
                size: Size.fromRadius(30),
                child: FittedBox(
                  child: img,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 50,
            child: Text(
              '$txt',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontFamily: 'semibold'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategories(txt, img, txt2) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ServicesInfoPage()));
        },
        child: Column(
          children: [
            Container(
              height: 130,
              width: 300,
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                image: new DecorationImage(
                  fit: BoxFit.cover,
                  image: new AssetImage('$img'),
                ),
              ),
            ),
            Container(
              width: 300,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                '$txt',
                                style:
                                    TextStyle(fontFamily: 'bold', fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: Text(
                                '$txt2',
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            children: [
                              Text(
                                '\$100',
                                style: TextStyle(
                                  fontFamily: 'bold',
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '\$89',
                                style: TextStyle(
                                    fontFamily: 'bold',
                                    color: style.appColor,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => BookAppointmentPage()));
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.contentButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Booked Appointment',
                style: TextStyle(
                    color: Colors.white, fontSize: 17, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 10),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: Colors.grey.shade300,
          blurRadius: 20.0,
        ),
      ]),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
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
                  child: Text('SPECIALIST', style: segmentText(1)),
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
                    child: Text('SERVICE', style: segmentText(2)),
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
                    child: Text('GALLARY', style: segmentText(3)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 4;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5),
                    decoration: segmentDecoration(4),
                    child: Text('REVIEW', style: segmentText(4)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 5;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5),
                    decoration: segmentDecoration(5),
                    child: Text('SALON', style: segmentText(5)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      tabID = 6;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.only(bottom: 5),
                    decoration: segmentDecoration(6),
                    child: Text('ABOUT', style: segmentText(6)),
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
                color: tabID == val ? style.appColor : Colors.transparent)));
  }

  segmentText(val) {
    return TextStyle(
        fontFamily: tabID == val ? 'bold' : 'semibold',
        color: tabID == val ? style.appColor : Colors.grey);
  }
}
