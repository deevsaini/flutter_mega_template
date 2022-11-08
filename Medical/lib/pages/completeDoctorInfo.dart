/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical/helper/style.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:medical/pages/appointment.dart';

class completeDoctorInfo extends StatefulWidget {
  completeDoctorInfo({Key? key}) : super(key: key);

  static const String page_id = "Complete Doctor Information";

  @override
  _completeDoctorInfoState createState() => _completeDoctorInfoState();
}

class _completeDoctorInfoState extends State<completeDoctorInfo> {
  int tabID = 1;
  bool nonchecked = false;
  List<int> image = [1, 2, 3, 4, 5, 6, 7, 8];

  Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('Id-1'),
          position: LatLng(21.5397106, 71.8215543),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 1),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => appointment()));
          },
          child: Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  appColor,
                  secondColor,
                ],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.calendar_month_outlined),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Book an Appointment',
                  style: TextStyle(
                      fontFamily: 'semi-bold',
                      fontSize: 14,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: Colors.transparent,
            onPrimary: Colors.white,
            minimumSize: const Size.fromHeight(50),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      leadingWidth: 80,
      elevation: 0,
      backgroundColor: appColor,
      iconTheme: IconThemeData(color: Colors.white),
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: SizedBox(
        child: Text(
          'Dr.John Deo',
          style: TextStyle(fontSize: 16, fontFamily: 'medium'),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          softWrap: false,
        ),
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              appColor,
              secondColor,
            ],
          ),
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Row(
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
            Icon(
              Icons.filter_list_outlined,
              color: Colors.white,
            )
          ],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Row(
            children: [
              Icon(
                Icons.videocam_rounded,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.search_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.notification_add_outlined,
                color: Colors.white,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  appColor,
                  secondColor,
                ],
              ),
            ),
            width: double.infinity,
            // height: 255,
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  backgroundColor: secondColor,
                  radius: 30,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: 30,
                      width: 30,
                      color: Colors.white,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Internal Medicine',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 20,
                    ),
                    Icon(
                      Icons.star_half_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '454, Upper Mahatan NY',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                SizedBox(
                  height: 40,
                ),
                Column(
                  children: [
                    Center(child: _buildSegment()),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                if (tabID == 1)
                  doctorInfo()
                else if (tabID == 2)
                  clinicInfo()
                else if (tabID == 3)
                  reviews()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSegment() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                tabID = 1;
              });
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: segmentDecoration(1),
              child: Text('Doctor Info', style: segmentText(1)),
            ),
          ),
          InkWell(
              onTap: () {
                setState(() {
                  tabID = 2;
                });
              },
              child: Container(
                padding: EdgeInsets.only(bottom: 5),
                decoration: segmentDecoration(2),
                child: Text('Clinic Info', style: segmentText(2)),
              )),
          InkWell(
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
        ],
      ),
    );
  }

  segmentDecoration(val) {
    return BoxDecoration(
      border: Border(
        bottom: BorderSide(
            width: 2, color: tabID == val ? Colors.white : Colors.transparent),
      ),
    );
  }

  segmentText(val) {
    return TextStyle(
        fontFamily: tabID == val ? 'semi-bold' : 'regular',
        color: tabID == val ? Colors.white : Colors.white);
  }

  Widget doctorInfo() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          information('Professional statement',
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
          Text(
            'Education',
            style: TextStyle(
              fontFamily: 'medium',
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('FCPS, Internal Medicine'),
              Text(
                'NY Medical College,2004',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 200,
                child: Text(
                  'MBBS,Internal Medicine & Surgury',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: false,
                ),
              ),
              Text(
                'NY Medical College,2004',
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          information('Certification',
              'Best Doctor Award, Iternal Medical College 2015'),
          information('Language', 'English, French, Spanish'),
          information('Patient Specialist', 'Women, Children'),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Check in form',
                style: TextStyle(fontFamily: 'semi-bold', fontSize: 18),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: secondColor,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/logo.png',
                          height: 30,
                          width: 30,
                          color: Colors.white,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'John Kerry',
                          style: TextStyle(fontFamily: 'medium', fontSize: 16),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Referred by',
                  style: TextStyle(fontFamily: 'medium', fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: simpleInputText('Details of Injury'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: simpleInputText('Details of any treatment'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: simpleInputText('SIN number'),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  child: GoogleMap(
                    onMapCreated: _onMapCreated,
                    markers: _markers,
                    initialCameraPosition: CameraPosition(
                        target: LatLng(21.5397106, 71.8215543), zoom: 15),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 20,
                      color: Colors.grey,
                    ),
                    Text('454,Uppar manhan NY')
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: simpleInputText('City'),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: simpleInputText('Province'),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: simpleInputText('Postal Code'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Yes/No question (if user provide more details)'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.grey,
                      activeColor: Colors.grey,
                      value: nonchecked,
                      shape: CircleBorder(),
                      onChanged: (bool? value) {
                        setState(() {
                          nonchecked = value!;
                        });
                      },
                    ),
                    Text('Do you have an emergency?')
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.grey,
                      activeColor: Colors.grey,
                      value: nonchecked,
                      shape: CircleBorder(),
                      onChanged: (bool? value) {
                        setState(() {
                          nonchecked = value!;
                        });
                      },
                    ),
                    Text('Do you have an emergency?')
                  ],
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget information(text, text2) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              fontFamily: 'medium',
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(text2),
        ],
      ),
    );
  }

  Widget clinicInfo() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Text(
            'New York Central',
            style: TextStyle(fontFamily: 'medium', fontSize: 16),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.phone_android,
                color: Colors.grey,
                size: 15,
              ),
              Text('+88 989 989 9999 , +47548663')
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.grey,
                size: 15,
              ),
              Text('454 Upper Manhattan NY')
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Wrap(
              children: [
                for (var i in image) gallary(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget gallary() {
    return Container(
      margin: EdgeInsets.only(right: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage('assets/images/gallary.jpg'),
                    fit: BoxFit.cover)),
          ),
        ],
      ),
    );
  }

  Widget reviews() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(),
    );
  }
}
