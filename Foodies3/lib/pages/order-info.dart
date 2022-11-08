/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:gofoodflutter/pages/rating.dart';
import '../helper/style.dart' as style;

class OrderInfoPage extends StatefulWidget {
    OrderInfoPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Order Info';

    @override
    State<OrderInfoPage> createState() => _OrderInfoPageState();
}

class _OrderInfoPageState extends State<OrderInfoPage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: style.appGrey,
                iconTheme: IconThemeData(
                    color: Colors.black
                ),
                elevation: 0,
            ),
            body: _buildBody(context),
            bottomNavigationBar: _buildBottomContainer(),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                color: style.appGrey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Padding(
                          padding: EdgeInsets.all(16),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  Text('Order Information',style: style.boldTitle()),
                                  RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                          text: 'ID: ',
                                          style: TextStyle(color: style.appColor, fontFamily: 'regular'),
                                          children: <TextSpan>[
                                              TextSpan(text: '4567343',
                                                  style: TextStyle(color: style.appGreyText)
                                              ),
                                          ],
                                      ),
                                  )
                              ],
                          ),
                      ),

                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  _buildGreyText('Delivery to'),
                                  Text('Add new address',
                                      style: TextStyle(
                                          color: style.appColor,
                                          fontFamily: 'medium'
                                      ),
                                  )
                              ],
                          ),
                      ),

                      Container(
                          padding: EdgeInsets.all(16),
                          color: Colors.white,
                          child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: borderContainer(),
                              child: Row(
                                  children: [
                                      Container(
                                          height: 100,
                                          width: 100,
                                          margin: EdgeInsets.only(right: 16),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)
                                              ),
                                              color: style.appGrey
                                          ),
                                      ),
                                      Expanded(child:
                                          Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                  Row(
                                                      children: [
                                                          Icon(Icons.location_on, color: style.appGreyText, size: 18),
                                                          SizedBox(width: 8),
                                                          Expanded(child: Text('76A Eighth Avenue, Andora Mercy, New York City, US.'))
                                                      ],
                                                  ),
                                                  SizedBox(height: 8),
                                                  Row(
                                                      children: [
                                                          Icon(Icons.person, color: style.appGreyText, size: 18),
                                                          SizedBox(width: 8),
                                                          Expanded(child: Text('Beatrice Owen', style: greyLabel()))
                                                      ],
                                                  ),
                                                  SizedBox(height: 8),
                                                  Row(
                                                      children: [
                                                          Icon(Icons.call, color: style.appGreyText,size: 18),
                                                          SizedBox(width: 8),
                                                          Expanded(child: Text('9876543212', style: greyLabel()))
                                                      ],
                                                  )
                                              ],
                                          )
                                      )
                                  ],
                              ),
                          ),
                      ),

                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                   _buildGreyText('Options'),
                                    Text('10:10 AM'),
                                    Text('Oct 6, 2020'),
                                    Text('Edit',
                                        style: TextStyle(
                                            color: style.appColor,
                                            fontFamily: 'medium'
                                        ),
                                    ),
                              ],
                          ),
                      ),

                      Container(
                          padding: EdgeInsets.all(16),
                          color: Colors.white,
                          child: Column(
                              children: [
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                          Text('Subtotal (1 Item)', style: simpleLabel()),
                                          Text('\$2.9', style: boldPrice()),
                                      ],
                                  ),
                                  SizedBox(height: 16),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Ship Free (2.4 km)', style: simpleLabel()),
                                        Text('\$1.5', style: boldPrice()),
                                      ],
                                  ),
                                  SizedBox(height: 16),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Total', style: colorLabel()),
                                        Text('\$4.2', style: colorLabel()),
                                      ],
                                  ),
                              ],
                          ),
                      ),

                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  _buildGreyText('Note')
                              ],
                          ),
                      ),

                      Container(
                          padding: EdgeInsets.all(16),
                          color: Colors.white,
                          child: TextField(
                              maxLines: 3,
                              decoration: style.textAreaDecoration('Please call me when you come. Thank you!'),
                          ),
                      ),

                    ],
                ),
            ),
        );
    }

    Widget _buildGreyText(val) {
        return Text('$val',
            style: TextStyle(
                fontSize: 15,
                fontFamily: 'medium'
            ),
        );
    }

    borderContainer() {
        return BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(5)
            ),
            border: Border.all(
                width: 1,
                color: (Colors.grey[300])!
            )
        );
    }

    simpleLabel() {
        return TextStyle(
            fontSize: 16
        );
    }

    boldPrice() {
        return TextStyle(
            fontFamily: 'medium',
            fontSize: 16
        );
    }

    colorLabel() {
        return TextStyle(
            fontFamily: 'medium',
            fontSize: 18,
            color: style.appColor
        );
    }

    greyLabel() {
        return TextStyle(
            fontSize: 13,
            color: style.appGreyText
        );
    }

    Widget _buildBottomContainer() {
        return Container(
            padding: EdgeInsets.all(16),
            child: Row(
                children: [
                    Expanded(
                        child: OutlinedButton(
                            onPressed: () {
                                Navigator.push(context, new MaterialPageRoute(
                                    builder: (context) => new RatingPage()
                                ));
                            },
                            child: Text('Rating'),
                            style: outlineButton(),
                        )
                    ),
                    SizedBox(width: 16),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Re-Order'),
                            style: style.simpleButton(),
                        ),
                    ),
                ],
            ),
        );
    }

    outlineButton() {
        return ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
            ),
            elevation: 0,
            onPrimary: Colors.black,
            textStyle: style.buttonText()
        );
    }

}
