/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food2/pages/rating.dart';
import '../components/styles.dart' as style;
import 'package:timelines/timelines.dart';

const completeColor = style.appColor;
const inProgressColor = style.appColor;
const todoColor = Color(0xffd1d2d7);

class OrderStatus extends StatefulWidget {
  static const String id = 'OrderStatus';

  const OrderStatus({Key? key}) : super(key: key);

  @override
  _OrderStatusState createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  int _processIndex = 1;

  Color getColor(int index) {
    if (index == _processIndex) {
      return inProgressColor;
    } else if (index < _processIndex) {
      return completeColor;
    } else {
      return todoColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildStep(),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.chevron_right,
        ),
        onPressed: () {
          setState(() {
            _processIndex = (_processIndex + 1) % _processes.length;
          });
        },
        backgroundColor: inProgressColor,
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildImage(),
          // _buildStep(),
          SizedBox(height: 60),
          _buildStatusDesc(),
        ],
      ),
    );
  }

  Widget _buildStep() {
    return Stack(
      children: [
        // Text("hello this is text",
        //     style: TextStyle(
        //       color: Colors.blue,
        //       fontFamily: "semibold",
        //       fontSize: 12,
        //     )),
        _buildBody(),
        Container(
          padding: EdgeInsets.only(top: 220),
          child: Timeline.tileBuilder(
            // shrinkWrap: true,
            theme: TimelineThemeData(
              direction: Axis.horizontal,
            ),
            builder: TimelineTileBuilder.connected(
              connectionDirection: ConnectionDirection.before,
              itemExtentBuilder: (_, __) =>
                  MediaQuery.of(context).size.width / _processes.length,
              contentsBuilder: (context, index) {
                return Text(
                  _processes[index],
                  style: TextStyle(
                    fontFamily: 'medium',
                    fontSize: 12,
                    color: getColor(index),
                  ),
                );
              },
              indicatorBuilder: (_, index) {
                var color;
                var child;
                if (index == _processIndex) {
                  color = inProgressColor;
                  child = Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(
                      strokeWidth: 3.0,
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                    ),
                  );
                } else if (index < _processIndex) {
                  color = completeColor;
                } else {
                  color = todoColor;
                }

                if (index <= _processIndex) {
                  return Stack(
                    children: [
                      Image.asset(
                        'assets/images/process/g${index + 1}.png',
                        width: 35.0,
                        color: getColor(index),
                      )
                    ],
                  );
                } else {
                  return Image.asset(
                    'assets/images/process/g${index + 1}.png',
                    width: 35.0,
                    color: getColor(index),
                  );
                }
              },
              connectorBuilder: (_, index, type) {
                if (index > 0) {
                  if (index == _processIndex) {
                    return DecoratedLineConnector(
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                    );
                  } else {
                    return SolidLineConnector(
                      color: getColor(index),
                    );
                  }
                } else {
                  return null;
                }
              },
              itemCount: _processes.length,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildImage() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 500,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/burger.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 35,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              margin: const EdgeInsets.only(top: 40, left: 16),
              child: IconButton(
                  iconSize: 20,
                  icon: const Icon(
                    Icons.chevron_left,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
            Container(
              height: 35,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              margin: const EdgeInsets.only(top: 40, right: 16),
              child: IconButton(
                  icon: const Icon(Icons.share, color: Colors.black, size: 20),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Rate()));
                  }),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildStatusDesc() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(thickness: 1, color: Colors.black12),
          Row(
            children: <Widget>[
              Expanded(
                  child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      'Order ID: 1220 ',
                      style: TextStyle(fontSize: 14, fontFamily: "bold"),
                    ),
                    Text('Total',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                            fontFamily: "medium")),
                  ],
                ),
              )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  const InkWell(
                    child: Text('Order Detail',
                        style: TextStyle(
                          color: Colors.blue,
                          fontFamily: "semibold",
                          fontSize: 12,
                        )),
                  ),
                  Row(
                    children: const [
                      Text("Rs320",
                          style:
                              TextStyle(color: Colors.black45, fontSize: 12)),
                      SizedBox(width: 10),
                      Text("Rs200",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'semibold',
                              fontSize: 14)),
                    ],
                  ),
                ],
              )
            ],
          ),
          const Divider(thickness: 1, color: Colors.black12),
          Container(
            color: style.background,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: const [
                      Text("3 miles",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: "semibold")),
                      Text("Distance",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 12,
                              fontFamily: "medium")),
                    ],
                  ),
                ),
                Text("|",
                    style: TextStyle(color: Colors.black12, fontSize: 24)),
                Expanded(
                  child: Column(
                    children: const [
                      Text("15 mins",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: "semibold")),
                      Text("Est.Delivery time",
                          style: TextStyle(
                              color: Colors.black45,
                              fontSize: 12,
                              fontFamily: "medium")),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.restaurant_menu,
                size: 24,
                color: Colors.blue,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Harirambapa',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "semibold")),
                    Text('whitehouse, gujarat 20, India',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                            fontFamily: "medium"))
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 24,
                color: style.appColor,
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('20 Horizon House',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: "semibold")),
                    Text('whitehouse, gujarat 20, India',
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 12,
                            fontFamily: "medium"))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

final _processes = [
  'New',
  'Preparing',
  'On the way',
  'Delivered',
];
