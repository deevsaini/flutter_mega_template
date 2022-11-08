/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:hotelbooking/pages/filter.dart';
import 'package:hotelbooking/pages/hotel-detail.dart';
import 'package:hotelbooking/pages/map-search.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../helper/style.dart' as style;

class HotelListPage extends StatefulWidget {
    HotelListPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Hotel List';

    @override
    State<HotelListPage> createState() => _HotelListPageState();
}

class _HotelListPageState extends State<HotelListPage> {

    List<Item> hotels = <Item> [
        Item('', 'Lemon Tree Premier', '\$ 5,550', 4),
        Item('', 'Promenage', '\$ 4,550', 5),
        Item('', 'Lemon Tree Premier', '\$ 5,550', 5),
        Item('', 'Promenage', '\$ 4,550', 4),
        Item('', 'Lemon Tree Premier', '\$ 5,550', 4),
        Item('', 'Promenage', '\$ 4,550', 4),
    ];

    String _currentTab = '';
    String roomType = 'Single Room';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.transparent,
                centerTitle: true,
                elevation: 0,
                automaticallyImplyLeading: false,
                iconTheme: IconThemeData(
                    color: Colors.white
                ),
                flexibleSpace: Container(
                    decoration: style.appBarDecoration(),
                ),
                leading: IconButton(
                    onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                                return FilterPage();
                            }
                        );
                    },
                    icon: Icon(Icons.filter_alt)
                ),
                title: TextField(
                    style: style.textInputStyle(),
                    decoration: style.textInputDecorationSimple('Search'),
                ),
                titleSpacing: 0,
                actions: [
                    IconButton(
                        onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                    return MapSearchPage();
                                }
                            );
                        },
                        icon: Icon(Icons.location_on)
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.person)
                    ),
                ],
            ),
            body: _buildBody(context),
            bottomNavigationBar: _buildBottomContainer(),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                    children: [
                        ListView(
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            children: List.generate(hotels.length, (index) {
                                return _buildSingleHotel(hotels[index]);
                            }),
                        ),

                        SizedBox(height: 30),

                        _currentTab == 'Check-in' ? Container(
                            child: Column(
                                children: [
                                    SfDateRangePicker(
                                        view: DateRangePickerView.month,
                                    ),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                            TextButton(
                                                onPressed: () {},
                                                child: Text('Cancel'),
                                                style: greyButton(),
                                            ),
                                            TextButton(
                                                onPressed: () {
                                                    setState(() {
                                                        _currentTab = 'Check-out';
                                                    });
                                                },
                                                child: Text('Done'),
                                                style: colorButton(),
                                            )
                                        ],
                                    ),
                                ],
                            ),
                        ) : Container(),

                        _currentTab == 'Check-out' ? Container(
                            child: Column(
                                children: [
                                    SfDateRangePicker(
                                        view: DateRangePickerView.month,
                                        selectionMode: DateRangePickerSelectionMode.range,
                                    ),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                            TextButton(
                                                onPressed: () {},
                                                child: Text('Cancel'),
                                                style: greyButton(),
                                            ),
                                            TextButton(
                                                onPressed: () {
                                                    setState(() {
                                                        _currentTab = 'Room Type';
                                                    });
                                                },
                                                child: Text('Done'),
                                                style: colorButton(),
                                            )
                                        ],
                                    )
                                ],
                            ),
                        ) : Container(),

                        _currentTab == 'Room Type' ? _buildRoomContainer() : Container(),

                    ],
                ),
            ),
        );
    }

    Widget _buildSingleHotel(hotel) {
        return InkWell(
            onTap: () {
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => new HotelDetailPage())
              );
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(8)
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                        image: DecorationImage(
                            image: AssetImage('assets/images/back.jpg'),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(hotel.name,
                                style: style.colorLabel(),
                              ),
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, color: hotel.rate >= 1 ? style.appColor : Colors.grey, size: 20),
                                Icon(Icons.star, color: hotel.rate >= 2 ? style.appColor : Colors.grey, size: 20),
                                Icon(Icons.star, color: hotel.rate >= 3 ? style.appColor : Colors.grey, size: 20),
                                Icon(Icons.star, color: hotel.rate >= 4 ? style.appColor : Colors.grey, size: 20),
                                Icon(Icons.star, color: hotel.rate >= 5 ? style.appColor : Colors.grey, size: 20),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on, color: Colors.grey, size: 18),
                                    SizedBox(width: 6),
                                    Text('6.5 km from center', style: style.greyLabel())
                                  ],
                                )
                            ),
                            Text('345 reviews', style: style.greyLabel())
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                                child: Text(hotel.price, style: style.colorLabel())
                            ),
                            Text('Excellent', style: style.greyLabel())
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
        );
    }



    Widget lineContainer() {
        return Container(
            width: double.infinity,
            height: 3,
            color: Colors.grey[300],
        );
    }

    Widget roundContainer(val) {
        return Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(100)
                ),
                color: val == roomType ? style.appColor : Colors.grey[300],
            ),
        );
    }

    greyButton() {
        return TextButton.styleFrom(
            primary: Colors.grey,
            textStyle: TextStyle(
                fontSize: 15,
                fontFamily: 'semi-bold'
            )
        );
    }

    colorButton() {
        return TextButton.styleFrom(
            primary: style.appColor,
            textStyle: TextStyle(
                fontSize: 15,
                fontFamily: 'semi-bold'
            )
        );
    }

    Widget _buildRoomContainer() {
        return Container(
            child: Column(
                children: [
                    Row(
                    children: [
                      _buildSingleDetail(Icons.bedroom_child_outlined, 'Single Room'),
                      _buildSingleDetail(Icons.bed, 'Double Room'),
                      _buildSingleDetail(Icons.group_outlined, 'Group'),
                      _buildSingleDetail(Icons.family_restroom_outlined, 'Family'),
                    ],
                    ),
                    SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text('Cancel'),
                          style: greyButton(),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {});
                          },
                          child: Text('Done'),
                          style: colorButton(),
                        )
                      ],
                    )
                ],
            )
        );
    }

    Widget _buildSingleDetail(icn,name) {
        return Expanded(
            child: InkWell(
                onTap: () {
                    setState(() {
                        roomType = name;
                    });
                },
                child: Column(
                    children: [
                        Icon(icn,
                            color: roomType == name ? style.appColor : Colors.grey[300]
                        ),
                        SizedBox(height: 12),
                        Row(
                            children: [
                                Expanded(child: lineContainer()),
                                roundContainer(name),
                                Expanded(child: lineContainer()),
                            ],
                        ),
                        SizedBox(height: 12),
                        Text('$name',
                            style: TextStyle(
                                color: roomType == name ? style.appColor : Colors.grey[300]
                            ),
                        )
                    ],
                ),
            )
        );
    }

    Widget _buildBottomContainer() {
        return Container(
            height: 80,
            color: Colors.white,
            child: Row(
                children: [
                    _buildSingleTab(Icons.login, 'Check-in'),
                    _buildSingleTab(Icons.logout, 'Check-out'),
                    _buildSingleTab(Icons.bed, 'Room Type'),
                ],
            ),
        );
    }

    Widget _buildSingleTab(icn, title) {
        return Expanded(
            child: InkWell(
                onTap: () {
                    setState(() {
                        _currentTab = title;
                    });
                },
                child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                width: 4,
                                color: _currentTab == title ? style.appColor : Colors.transparent
                            )
                        ),
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Icon(icn, color: style.appColor),
                            SizedBox(height: 4),
                            Text('$title',
                                style: TextStyle(
                                  fontFamily: 'semi-bold',
                                ),
                            )
                        ],
                   ),
                ),
            )
        );
    }

}


class Item {
    const Item(this.img, this.name, this.price, this.rate);
    final String img;
    final String name;
    final String price;
    final int rate;
}