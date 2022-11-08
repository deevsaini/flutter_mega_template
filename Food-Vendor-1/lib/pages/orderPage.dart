/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:admin_app/pages/completePage.dart';
import 'package:admin_app/pages/newOrderPage.dart';
import 'package:admin_app/pages/onGoingOrderPage.dart';
import 'package:admin_app/pages/sideMenuPage.dart';
import 'package:flutter/material.dart';
import 'package:admin_app/utilities/consultsPage.dart' as style;

class orderPage extends StatefulWidget {
  orderPage({Key? key}) : super(key: key);

  static const String pageId = 'orderPage';

  @override
  State<orderPage> createState() => _orderPageState();
}

class _orderPageState extends State<orderPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  String Value = 'On The Way';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: myDrawer(),
          key: _scaffoldKey,
          drawerEnableOpenDragGesture: false,
          backgroundColor: Colors.white,
          appBar: _buildAppBar(),
          body: _buildBody(),
          // bottomNavigationBar: _buildBottomNavigationBar(),
        ),
      ),
    );
  }

  Widget myDrawer() {
    return Drawer(
      child: sideMenuPage(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: style.appColor,
      leading: InkWell(
        onTap: () => _scaffoldKey.currentState?.openDrawer(),
        child: Icon(Icons.menu),
      ),
      centerTitle: true,
      title: Text(
        'Our Order\'s',
        style: TextStyle(
            color: Colors.white, fontSize: 17, fontFamily: 'semibold'),
      ),
      bottom: PreferredSize(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              bottom: BorderSide(color: Colors.grey.shade300),
            ),
          ),
          child: const TabBar(
            labelColor: style.appColor,
            labelStyle: TextStyle(fontFamily: 'semibold'),
            unselectedLabelColor: Colors.black,
            labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 2.0, color: style.appColor),
            ),
            tabs: [
              Tab(
                text: 'New Orders',
              ),
              Tab(
                text: 'Ongoing Orders',
              ),
              Tab(
                text: 'Past Orders',
              ),
            ],
          ),
        ),
        preferredSize: Size.fromHeight(50.0),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      child: TabBarView(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _newOrdersContent(),
                _newOrdersContent(),
                _newOrdersContent(),
                _newOrdersContent(),
                _newOrdersContent(),
                _newOrdersContent(),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _ongoingOrdersContent(),
                _ongoingOrdersContent(),
                _ongoingOrdersContent(),
                _ongoingOrdersContent(),
                _ongoingOrdersContent(),
                _ongoingOrdersContent(),
                _ongoingOrdersContent(),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _pastOrdersContent(),
                _pastOrdersContent(),
                _pastOrdersContent(),
                _pastOrdersContent(),
                _pastOrdersContent(),
                _pastOrdersContent(),
                _pastOrdersContent(),
                _pastOrdersContent(),
                _pastOrdersContent(),
                _pastOrdersContent(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // NewOrders Tab Content

  Widget _newOrdersContent() {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => newOrderPage()));
        },
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xFFECF9FF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.bike_scooter,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Rahul Jograna',
                              style: TextStyle(
                                  fontFamily: 'semibold', fontSize: 15),
                            ),
                            Text(
                              'Order id : 348',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Today at 12:33 AM',
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              'Total : \$ 106.00',
                              style: TextStyle(
                                  fontFamily: 'semibold', fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300),
                  top: BorderSide(color: Colors.grey.shade300),
                ),
              ),
              child: Column(
                children: [
                  _newOrderItem('Daal Makhani', 'Qty : 2', '\$ 24.00 '),
                  _newOrderItem('Simple Thali - Veg', 'Qty : 1', '\$ 18.00 '),
                  _newOrderItem(
                      'Delux Thali - Non Veg', 'Qty : 2', '\$ 48.00 '),
                  _newOrderItem('Missi Roti', 'Qty : 5', '\$ 10.00 '),
                  _newOrderItem('Butter Nan', 'Qty : 5', '\$ 10.00 '),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Text(
                'Message : Hi, Please pack green souce in my order and please tell your delivery boy that he have to come on 2nd floor because i\'m not at home.',
                style: TextStyle(fontSize: 10),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: style.borderButtonStyle(),
                        child: Center(
                          child: Text(
                            'Call Customer',
                            style:
                                TextStyle(color: style.appColor, fontSize: 7),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: style.borderButtonStyle(),
                        child: Center(
                          child: Text(
                            'View Details',
                            style:
                                TextStyle(color: style.appColor, fontSize: 7),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        decoration: style.redColorButtonStyle(),
                        child: Center(
                          child: Text(
                            'Cancle Order',
                            style: TextStyle(color: Colors.white, fontSize: 7),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        decoration: style.greenColorButtonStyle(),
                        child: Center(
                          child: Text(
                            'Accept Order',
                            style: TextStyle(color: Colors.white, fontSize: 7),
                          ),
                        ),
                      ),
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

  Widget _newOrderItem(txt1, txt2, txt3) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              '$txt1',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 10),
            ),
          ),
          SizedBox(
            width: 50,
            child: Text(
              '$txt2',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 10),
            ),
          ),
          SizedBox(
            width: 50,
            child: Text(
              '$txt3',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }

  // OngoingOrders Tab Content

  Widget _ongoingOrdersContent() {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => onGoingOrderPage()));
        },
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xFFECF9FF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.bike_scooter,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Rahul Jograna',
                              style: TextStyle(
                                  fontFamily: 'semibold', fontSize: 15),
                            ),
                            Text(
                              'Order id : 348',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Today at 12:33 AM',
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              'Total : \$ 106.00',
                              style: TextStyle(
                                  fontFamily: 'semibold', fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300),
                  top: BorderSide(color: Colors.grey.shade300),
                ),
              ),
              child: Column(
                children: [
                  _ongoingOrderItem('Daal Makhani', 'Qty : 2', '\$ 24.00 '),
                  _ongoingOrderItem(
                      'Simple Thali - Veg', 'Qty : 1', '\$ 18.00 '),
                  _ongoingOrderItem(
                      'Delux Thali - Non Veg', 'Qty : 2', '\$ 48.00 '),
                  _ongoingOrderItem('Missi Roti', 'Qty : 5', '\$ 10.00 '),
                  _ongoingOrderItem('Butter Nan', 'Qty : 5', '\$ 10.00 '),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Order Status :',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'semibold',
                            fontSize: 10),
                      ),
                      SizedBox(width: 10),
                      DropdownButton<String>(
                        value: Value,
                        icon: const Icon(Icons.arrow_drop_down),
                        elevation: 16,
                        style: const TextStyle(
                            color: style.appColor, fontSize: 10),
                        onChanged: (String? newValue) {
                          setState(() {
                            Value = newValue!;
                          });
                        },
                        items: <String>[
                          'On The Way',
                          'Order Dispached',
                          'Order Prepairing',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: style.borderButtonStyle(),
                    child: Center(
                      child: Text(
                        'View Details',
                        style: TextStyle(color: style.appColor, fontSize: 7),
                      ),
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

  Widget _ongoingOrderItem(txt1, txt2, txt3) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              '$txt1',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 10),
            ),
          ),
          SizedBox(
            width: 50,
            child: Text(
              '$txt2',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 10),
            ),
          ),
          SizedBox(
            width: 50,
            child: Text(
              '$txt3',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }

  // PastOrders Tab Content

  Widget _pastOrdersContent() {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => completePage()));
        },
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: Color(0xFFECF9FF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(right: 10),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.bike_scooter,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Rahul Jograna',
                              style: TextStyle(
                                  fontFamily: 'semibold', fontSize: 15),
                            ),
                            Text(
                              'Order id : 348',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Today at 12:33 AM',
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              'Total : \$ 106.00',
                              style: TextStyle(
                                  fontFamily: 'semibold', fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade300),
                  top: BorderSide(color: Colors.grey.shade300),
                ),
              ),
              child: Column(
                children: [
                  _pastOrderItem('Daal Makhani', 'Qty : 2', '\$ 24.00 '),
                  _pastOrderItem('Simple Thali - Veg', 'Qty : 1', '\$ 18.00 '),
                  _pastOrderItem(
                      'Delux Thali - Non Veg', 'Qty : 2', '\$ 48.00 '),
                  _pastOrderItem('Missi Roti', 'Qty : 5', '\$ 10.00 '),
                  _pastOrderItem('Butter Nan', 'Qty : 5', '\$ 10.00 '),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order Status : Order Delivered',
                    style: TextStyle(
                        fontFamily: 'bold', color: Colors.green, fontSize: 10),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: style.borderButtonStyle(),
                    child: Center(
                      child: Text(
                        'View Details',
                        style: TextStyle(color: style.appColor, fontSize: 7),
                      ),
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

  Widget _pastOrderItem(txt1, txt2, txt3) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              '$txt1',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 10),
            ),
          ),
          SizedBox(
            width: 50,
            child: Text(
              '$txt2',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 10),
            ),
          ),
          SizedBox(
            width: 50,
            child: Text(
              '$txt3',
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 10),
            ),
          ),
        ],
      ),
    );
  }
}
