/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutternewgrocery/pages/order-detail.dart';
import '../helper/style.dart' as style;

class OrderPage extends StatefulWidget {
    OrderPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Order';

    @override
    State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {

    String tabID = 'Ongoing';

    List<Item> orders = <Item>[
        Item('Waiting For Payment', 0),
        Item('Failed', 1),
        Item('On Process', 2),
        Item('Delivered', 3),
        Item('Waiting For Payment', 0),
        Item('Failed', 1),
        Item('On Process', 2),
        Item('Delivered', 3),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                title: Text('My Order'),
                centerTitle: false,
                titleTextStyle: style.pageTitle(),
            ),
            body: _buildBody(), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    Widget _buildBody() {
      return SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: style.bottomBorder(),
                child: Row(
                  children: [
                    Expanded(
                        child: _buildSingleSegment('Ongoing')
                    ),
                    Expanded(
                        child: _buildSingleSegment('History')
                    )
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.all(16),
                  child: ListView(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(orders.length, (index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(context, new MaterialPageRoute(
                              builder: (context) => new OrderDetailPage())
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(16),
                          margin: EdgeInsets.only(bottom: 20),
                          decoration: style.shadowContainer(),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    decoration: BoxDecoration(
                                        color: orders[index].status == 0 ? Color.fromARGB(255,255,243,229) :  orders[index].status == 1 ? Color.fromARGB(255,255,229,229) : orders[index].status == 2 ? Color.fromARGB(255,229,242,255) : Color.fromARGB(255,237,255,229),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4)
                                        )
                                    ),
                                    child: Text(orders[index].title,
                                      style: TextStyle(
                                          color: orders[index].status == 0 ? Color.fromARGB(255,255,194,76) :  orders[index].status == 1 ? Color.fromARGB(255,255,56,56) : orders[index].status == 2 ? Color.fromARGB(255,64,143,255) : Color.fromARGB(255,41,204,114)
                                      ),
                                    ),
                                  ),
                                  Text('06/12/2020',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16),
                              Row(
                                children: [
                                  Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Transaction ID', style: greyText()),
                                          Text('#ASD346536'),
                                        ],
                                      )
                                  ),
                                  SizedBox(width: 16),
                                  Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Delivered to', style: greyText()),
                                          Text('My Home'),
                                        ],
                                      )
                                  ),
                                  Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Total Payment', style: greyText()),
                                          Text('\$12.04'),
                                        ],
                                      )
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  )
              ),
            ],
          ),
        ),
      );
    }

    Widget _buildSingleSegment(val) {
        return InkWell(
            onTap: () {
                setState(() {
                    tabID = val;
                });
            },
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: singleSegment(val),
                child: Text('$val',
                    textAlign: TextAlign.center,
                    style: segmentText(val),
                ),
            ),
        );
    }

    singleSegment(val) {
        return BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: val == tabID ? style.appColor : Colors.transparent,
                    width: 2
                )
            )
        );
    }

    segmentText(val) {
        return TextStyle(
            fontSize: 16,
            fontFamily: 'medium',
            color: val == tabID ? style.appColor : Colors.grey
        );
    }

    greyText() {
        return TextStyle(
            fontSize: 12,
            color: Colors.grey
        );
    }
}

class Item {
  const Item(this.title, this.status);
  final String title;
  final int status;
}