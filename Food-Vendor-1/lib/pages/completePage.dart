/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:admin_app/utilities/consultsPage.dart' as style;

class completePage extends StatefulWidget {
  completePage({Key? key}) : super(key: key);

  static const String pageId = 'completePage';

  @override
  State<completePage> createState() => _completePageState();
}

class _completePageState extends State<completePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: style.appColor,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
      centerTitle: true,
      title: Text(
        'Complete Order',
        style: TextStyle(
            color: Colors.white, fontSize: 17, fontFamily: 'semibold'),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            _newOrdersContent(),
            _newOrdersContent(),
            _newOrdersContent(),
            _newOrdersContent(),
            _newOrdersContent(),
          ],
        ),
      ),
    );
  }

  Widget _newOrdersContent() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
      ),
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
                            style:
                                TextStyle(fontFamily: 'semibold', fontSize: 15),
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
                            style:
                                TextStyle(fontFamily: 'semibold', fontSize: 15),
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
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
                top: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.call,
                        color: style.appColor,
                        size: 20,
                      ),
                      SizedBox(width: 10),
                      Text('+1 234 5678 910')
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: style.borderButtonStyle(),
                    child: Center(
                      child: Text(
                        '   Call  ',
                        style: TextStyle(color: style.appColor, fontSize: 7),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: style.appColor,
                        size: 20,
                      ),
                      SizedBox(width: 10),
                      Text('rahuljograna@gmail.com')
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: style.borderButtonStyle(),
                    child: Center(
                      child: Text(
                        '   email  ',
                        style: TextStyle(color: style.appColor, fontSize: 7),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: style.appColor,
                        size: 20,
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        width: 150,
                        child: Text(
                          'Near head quarter, Luvarvav road, Hawamahal, Palitana, 364270.',
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: style.borderButtonStyle(),
                    child: Center(
                      child: Text(
                        '   Navigate  ',
                        style: TextStyle(color: style.appColor, fontSize: 7),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Message',
                  style: TextStyle(fontFamily: 'bold', fontSize: 12),
                ),
                Text(
                  'Message : Hi, Please pack green souce in my order and please tell your delivery boy that he have to come on 2nd floor because i\'m not at home.',
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 7),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              border: Border(
                top: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Items',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12, fontFamily: 'bold'),
                        ),
                      ),
                      SizedBox(
                        width: 60,
                        child: Text(
                          'Quantity',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12, fontFamily: 'bold'),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        child: Text(
                          'Price',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12, fontFamily: 'bold'),
                        ),
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
                top: BorderSide(color: Colors.grey.shade300),
                bottom: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Column(
              children: [
                _newOrderItem('Daal Makhani', 'Qty : 2', '\$ 24.00 '),
                _newOrderItem('Simple Thali - Veg', 'Qty : 1', '\$ 18.00 '),
                _newOrderItem('Delux Thali - Non Veg', 'Qty : 2', '\$ 48.00 '),
                _newOrderItem('Missi Roti', 'Qty : 5', '\$ 10.00 '),
                _newOrderItem('Butter Nan', 'Qty : 5', '\$ 10.00 '),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: style.borderButtonStyle(),
                          child: Center(
                            child: Text(
                              '   Print Invoice  ',
                              style:
                                  TextStyle(color: style.appColor, fontSize: 7),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text('Subtotal : \$ 106.00'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text('Delivery Free : \$ 0.00'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text('+ Service Tax (20%) : \$ 21.20'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text('- Discount (20%) : \$ 21.20'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          'Total : \$ 106.00',
                          style: TextStyle(fontFamily: 'bold', fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Order Status : Order Delivered',
                  style: TextStyle(fontFamily: 'bold', color: Colors.green),
                ),
              ],
            ),
          ),
        ],
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
}
