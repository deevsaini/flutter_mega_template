/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:doctor_marketplace_app/pages/specialistInfoPage.dart';
import 'package:flutter/material.dart';
import 'package:doctor_marketplace_app/utilities/constance.dart' as style;

class selectAreaPage extends StatefulWidget {
  selectAreaPage({Key? key}) : super(key: key);

  static const String pageId = 'selectAreaPage';

  @override
  State<selectAreaPage> createState() => _selectAreaPageState();
}

class _selectAreaPageState extends State<selectAreaPage> {
  String Value = 'Palitana';
  List<int> text = [1, 2, 3, 4, 5, 6, 7];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE7EFFA),
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(90),
      child: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Color(0xFFE7EFFA), Colors.white]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Select Area',
                      style: TextStyle(fontFamily: 'bold', color: Colors.grey),
                    ),
                    Container(
                      child: DropdownButton<String>(
                        value: Value,
                        icon: const Icon(Icons.arrow_drop_down),
                        elevation: 16,
                        style: const TextStyle(color: style.appColor),
                        onChanged: (String? newValue) {
                          setState(() {
                            Value = newValue!;
                          });
                        },
                        items: <String>[
                          'Palitana',
                          'Bhavnagar',
                          'Shihor',
                          'Amreli',
                          'Mahuva',
                          'Songadh'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    //
                  },
                  child: Icon(Icons.chat),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildTitle('All Cardologist', 'View All'),
            for (var i in text) _buildDetailsContent(),
            _buildTitle('Available Doctor', 'View All'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Row(
                  children: [
                    _buildSpecialist('Dr.Serena Gome', 'Medicine Specialit',
                        '8 Year', '2.7K', AssetImage('assets/images/4.png')),
                    _buildSpecialist('Dr.Rahul Jograna', 'Medicine Specialit',
                        '10 Year', '5.7K', AssetImage('assets/images/9.png')),
                    _buildSpecialist('Dr.Hardik Rajput', 'Heart Specialit',
                        '8 Year', '3.7K', AssetImage('assets/images/4.png')),
                    _buildSpecialist('Dr.Rose Milone', 'Medicine Specialit',
                        '5 Year', '1.0K', AssetImage('assets/images/5.png')),
                    _buildSpecialist('Dr.Mausam Chavda', 'Medicine Specialit',
                        '7 Year', '2.7K', AssetImage('assets/images/6.png')),
                    _buildSpecialist('Dr.Serena Gome', 'Medicine Specialit',
                        '8 Year', '2.7K', AssetImage('assets/images/7.png')),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(txt1, txt2) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$txt1',
            style: TextStyle(fontFamily: 'bold', fontSize: 20),
          ),
          Text(
            '$txt2',
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailsContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => specialistInfoPage()));
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(40),
                        child: FittedBox(
                          child: Image.asset('assets/images/3.jpg'),
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
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 120,
                                      child: Text(
                                        'Dr.Rahul Jograna',
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'bold', fontSize: 15),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.star,
                                            color: Colors.orange, size: 10),
                                        Icon(Icons.star,
                                            color: Colors.orange, size: 10),
                                        Icon(Icons.star,
                                            color: Colors.orange, size: 10),
                                        Icon(Icons.star,
                                            color: Colors.orange, size: 10),
                                        Icon(Icons.star,
                                            color: Colors.orange, size: 10),
                                      ],
                                    ),
                                  ],
                                ),
                                Icon(
                                  Icons.more_vert,
                                  color: Colors.grey,
                                  size: 15,
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 150,
                                    child: Text(
                                      'Cardiologist : (MBBS,FCPS)',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'bold',
                                          fontSize: 10),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.watch,
                                      size: 10,
                                    ),
                                    Text(
                                      '12.00PM - 4.00PM ',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 10, fontFamily: 'bold'),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_city,
                                      size: 10,
                                    ),
                                    Text(
                                      'New City Clinic',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 10, fontFamily: 'bold'),
                                    ),
                                  ],
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
          ],
        ),
      ),
    );
  }

  Widget _buildSpecialist(txt1, txt2, txt3, txt4, img) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => specialistInfoPage()));
      },
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 200,
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '$txt1',
                            style: TextStyle(fontFamily: 'bold', fontSize: 17),
                          ),
                          Text(
                            '$txt2',
                            style: TextStyle(fontSize: 10),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              children: [
                                Icon(Icons.star,
                                    color: Colors.orange, size: 10),
                                Icon(Icons.star,
                                    color: Colors.orange, size: 10),
                                Icon(Icons.star,
                                    color: Colors.orange, size: 10),
                                Icon(Icons.star,
                                    color: Colors.orange, size: 10),
                                Icon(Icons.star,
                                    color: Colors.orange, size: 10),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Experience',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            '$txt3',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontFamily: 'bold'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Petients',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            '$txt4',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black,
                                fontFamily: 'bold'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            width: 120,
            height: 130,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: img, fit: BoxFit.contain),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
