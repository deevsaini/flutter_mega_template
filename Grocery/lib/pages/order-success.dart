/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutternewgrocery/pages/tabs.dart';
import '../helper/style.dart' as style;

class OrderSuccessPage extends StatefulWidget {
  OrderSuccessPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Order Success';

    @override
    State<OrderSuccessPage> createState() => _OrderSuccessPageState();
}

class _OrderSuccessPageState extends State<OrderSuccessPage> {

    late double deviceHeight;
    late double deviceWidth;

    @override
    Widget build(BuildContext context) {
      deviceHeight = MediaQuery.of(context).size.height;
      deviceWidth = MediaQuery.of(context).size.width;
      return Scaffold(
            backgroundColor: Colors.white,
            body: _buildBody(), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    Widget _buildBody() {
        return Container(
          height: deviceHeight,
          width: deviceWidth,
          child: Stack(
            children: [
              Container(
                color: style.appColor,
                width: double.infinity,
                height: deviceHeight-160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/checked.png', width: 70),
                    SizedBox(height: 40),
                    Text('John, your order \n has been successful',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'semi-bold'
                      ),
                    ),
                    SizedBox(height:24),
                    Text('Check your order status in My Order \n about next steps information.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Positioned(
                  left: 0,
                  top: deviceHeight-180,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    height: 180,
                    width: deviceWidth,
                    decoration: radiusContainer(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Preparing your order',
                          style: TextStyle(
                              fontFamily: 'medium',
                              fontSize: 17
                          ),
                        ),
                        SizedBox(height: 6),
                        Text('Your order will be prepared and will come soon',
                          style: TextStyle(
                              color: Colors.grey
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 20),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, new MaterialPageRoute(
                                  builder: (context) => new TabsExample())
                              );
                            },
                            child: Text('Track My Order'),
                            style: style.simpleButton(),
                          ),
                        ),
                      ],
                    ),
                  )
              ),
            ],
          ),
        );
    }

    radiusContainer() {
        return BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(25.0),
                topRight: const Radius.circular(25.0),
            ),
        );
    }
}