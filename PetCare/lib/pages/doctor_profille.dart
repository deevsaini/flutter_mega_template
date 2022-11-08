/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:pet_care/pages/booked_confirm_modal.dart';
import 'package:pet_care/widget/elevated_button.dart';
import '../components/styles.dart';

class DoctorProfile extends StatefulWidget {
  static const String id = 'DoctorProfile';

  const DoctorProfile({Key? key}) : super(key: key);

  @override
  _DoctorProfileState createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  int tabID = 1;
  List<Item> timeList = <Item>[
    Item('10:00'),
    Item('11:00'),
    Item('12:00'),
    Item('01:00'),
    Item('02:00'),
    Item('03:00'),
    Item('04:00'),
    Item('05:00'),
    Item('06:00'),
  ];
  final DatePickerController _controller = DatePickerController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.share)),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
        ],
      ),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              color: backgroundColor,
              child: Stack(
                children: [
                  Column(
                    children: [
                      _buildProfile(),
                      SizedBox(height: 60),
                      _buildProfileDtl()
                    ],
                  ),
                  Positioned(
                      top: 340,
                      width: MediaQuery.of(context).size.width * 1,
                      child: _buildDoctorDetail()),
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.5,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/dr.jpg"), fit: BoxFit.cover),
        ));
  }

  Widget _buildDoctorDetail() {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            new BoxShadow(
              color: Colors.black12,
              blurRadius: 20.0,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                boldText('Viv Richardsan'),
                colorText('Veterinary Dentist'),
                greyTextSmall('10 years of experience'),
                SizedBox(height: 4),
                Row(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: backgroundColor,
                          child: Icon(Icons.location_on_outlined,
                              color: appColor, size: 20),
                        ),
                        SizedBox(width: 4),
                        greyTextSmall('1.5 km')
                      ],
                    ),
                    SizedBox(width: 20),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 16,
                          backgroundColor: backgroundColor,
                          child: Icon(Icons.credit_card,
                              color: appColor, size: 20),
                        ),
                        SizedBox(width: 4),
                        greyTextSmall('\$20')
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: appColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 20.0,
                        )
                      ]),
                  child: Center(
                    child: Text('4.9',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'semibold')),
                  )),
              greyTextSmall('120 reviews')
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProfileDtl() {
    return Container(
      padding: EdgeInsets.all(24),
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        children: [
          Column(
            children: [
              MediumText(
                  '"He was friendly and diligent in getting to the right diagnosis and prescription."'),
              SizedBox(height: 8),
              Row(
                children: [
                  smallText('a verified review'),
                  SizedBox(width: 4),
                  Icon(Icons.check_circle, color: Colors.green, size: 14)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Icon(Icons.star, color: appColor3, size: 14),
                    Icon(Icons.star, color: appColor3, size: 14),
                    Icon(Icons.star, color: appColor3, size: 14),
                    Icon(Icons.star, color: appColor3, size: 14),
                    Icon(Icons.star, color: appColor3, size: 14)
                  ]),
                  SizedBox(height: 8),
                  Container(
                      child: Row(
                    children: [
                      appcolorText('View all 120 Reviews'),
                      Icon(Icons.chevron_right)
                    ],
                  ))
                ],
              ),
              _buildCalender()
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCalender() {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            new BoxShadow(
              color: Colors.black12,
              blurRadius: 3.0,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          DatePicker(
            DateTime.now(),
            width: 55,
            height: 100,
            controller: _controller,
            dateTextStyle: TextStyle(color: Colors.black54, fontSize: 16),
            initialSelectedDate: DateTime.now(),
            selectionColor: appColor,
            selectedTextColor: Colors.white,
            inactiveDates: [DateTime.now().add(Duration(days: 4))],
            onDateChange: (date) {
              setState(() {});
            },
          ),
          SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Row(
                children: timeList.map((e) {
                  return _buildCategory(context, e);
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategory(context, e) {
    return GestureDetector(
      onTap: () {
        setState(() {
          tabID = e.hashCode;
        });
      },
      child: Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
          decoration: BoxDecoration(
            color: tabID == e.hashCode ? appColor : backgroundColor,
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: Text(
            e.name,
            style: TextStyle(
                color: tabID == e.hashCode ? Colors.white : appColor,
                fontSize: 12),
          )),
    );
  }

  Widget _buildBottomNav() {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '\$20 ',
                  style: TextStyle(
                      color: appColor, fontSize: 20, fontFamily: 'semibold'),
                ),
                MediumText('/ first visit')
              ],
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Icon(Icons.star, color: appColor3, size: 14),
                Icon(Icons.star, color: appColor3, size: 14),
                Icon(Icons.star, color: appColor3, size: 14),
                Icon(Icons.star, color: appColor3, size: 14),
                Icon(Icons.star, color: appColor3, size: 14),
                SizedBox(width: 10),
                smallText('28 Reviews'),
              ],
            )
          ],
        ),
        SizedBox(width: 30),
        Expanded(
          child: MyElevatedButton(
              onPressed: () {
                _ModalBottomSheetCart(context);
              },
              text: 'Book',
              colors: appColor),
        ),
      ]),
    );
  }

  void _ModalBottomSheetCart(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.0),
          ),
        ),
        builder: (BuildContext bc) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              centerTitle: true,
              automaticallyImplyLeading: false,
              title: boldText("Booking confirmation"),
              leading: IconButton(
                icon: Icon(
                  Icons.close,
                  size: 20,
                  color: appColor,
                ),
                onPressed: () {},
              ),
            ),
            body: Container(
              // padding: EdgeInsets.all(24),
              child: Column(children: [
                Container(
                  padding: EdgeInsets.all(24),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                          'assets/images/dr.jpg',
                          fit: BoxFit.cover,
                          width: 100,
                          height: 100,
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          blackBoldText('Vivial Richard'),
                          SizedBox(height: 4),
                          colorText('Veterinary Dentist'),
                          SizedBox(height: 6),
                          Row(
                            children: [
                              Icon(Icons.star, color: appColor3, size: 14),
                              Icon(Icons.star, color: appColor3, size: 14),
                              Icon(Icons.star, color: appColor3, size: 14),
                              Icon(Icons.star, color: appColor3, size: 14),
                              Icon(Icons.star, color: appColor3, size: 14),
                              SizedBox(width: 20),
                              greyTextSmall('28 Reviews'),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      DatePicker(
                        DateTime.now(),
                        width: 55,
                        height: 100,
                        controller: _controller,
                        dateTextStyle:
                            TextStyle(color: Colors.black54, fontSize: 16),
                        initialSelectedDate: DateTime.now(),
                        selectionColor: appColor,
                        selectedTextColor: Colors.white,
                        inactiveDates: [DateTime.now().add(Duration(days: 4))],
                        onDateChange: (date) {
                          setState(() {});
                        },
                      ),
                      SizedBox(height: 8),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          child: Row(
                            children: timeList.map((e) {
                              return _buildCategory(context, e);
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
            bottomNavigationBar: Container(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Row(children: [
                Row(
                  children: [
                    Text(
                      '\$20 ',
                      style: TextStyle(
                          color: appColor,
                          fontSize: 20,
                          fontFamily: 'semibold'),
                    ),
                    MediumText('/ first visit')
                  ],
                ),
                SizedBox(width: 30),
                Expanded(
                  child: MyElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const BookingConfirmModal()));
                      },
                      text: 'Book',
                      colors: appColor),
                ),
              ]),
            ),
          );
        });
  }
}

class Item {
  const Item(this.name);
  final String name;
}
