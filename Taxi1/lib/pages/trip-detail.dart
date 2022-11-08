/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../helper/style.dart' as style;

class TripDetailPage extends StatefulWidget {
    TripDetailPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Trip Detail';

    @override
    State<TripDetailPage> createState() => _TripDetailPageState();
}

class _TripDetailPageState extends State<TripDetailPage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                elevation: 0,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.white,
            ),
            body: SingleChildScrollView(
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: Colors.white
                    ),
                    child: Column(
                        children: [
                            Container(
                                padding: EdgeInsets.all(16),
                                child: Column(
                                    children: [
                                        Container(
                                            padding: EdgeInsets.symmetric(vertical: 16),
                                            decoration: borderContainer(),
                                            child: Row(
                                                children: [
                                                    Container(
                                                        height: 100,
                                                        width: 100,
                                                        decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                                image: AssetImage('assets/images/user1.jpg'),
                                                                fit: BoxFit.cover
                                                            ),
                                                            borderRadius: BorderRadius.all(
                                                                Radius.circular(8)
                                                            )
                                                        ),
                                                    ),
                                                    SizedBox(width: 12),
                                                    Expanded(
                                                        child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                                Text('Nihal Perera', style: boldText()),
                                                                Text('trip end',
                                                                    style: TextStyle(
                                                                        fontFamily: 'medium',
                                                                        color: Colors.grey
                                                                    )
                                                                ),
                                                                SizedBox(height: 3),
                                                                Container(
                                                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                                                                    decoration: BoxDecoration(
                                                                        border: Border.all(
                                                                            width: 1,
                                                                            color: (Colors.grey[300])!
                                                                        ),
                                                                        borderRadius: BorderRadius.all(
                                                                            Radius.circular(3)
                                                                        )
                                                                    ),
                                                                    child: Text('CBC5687 - Toyota Prius(white)',
                                                                        style: TextStyle(
                                                                            fontSize: 13
                                                                        ),
                                                                    ),
                                                                ),
                                                            ],
                                                        )
                                                    )
                                                ],
                                            ),
                                        ),

                                        Container(
                                            padding: EdgeInsets.symmetric(vertical: 16),
                                            decoration: borderContainer(),
                                            child: Column(
                                                children: [
                                                    Row(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                            Padding(
                                                                padding: EdgeInsets.only(top: 3),
                                                                child: Icon(Icons.fiber_manual_record, size: 16, color: style.appColor),
                                                            ),
                                                            SizedBox(width: 12),
                                                            Expanded(
                                                                child: Column(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                        Text('R.A De Mel Mawatha', style: boldLabel()),
                                                                        Text('07:30 PM', style: greyLabel())
                                                                    ],
                                                                )
                                                            )
                                                        ],
                                                    ),
                                                    SizedBox(height: 10),
                                                    Row(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                            Padding(
                                                              padding: EdgeInsets.only(top: 3),
                                                              child: Icon(Icons.fiber_manual_record, size: 16, color: Color.fromARGB(255, 207, 60, 79)),
                                                            ),
                                                            SizedBox(width: 12),
                                                            Expanded(
                                                                child: Column(
                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                    children: [
                                                                        Text('Piliyandala Road', style: boldLabel()),
                                                                        Text('08:30 PM', style: greyLabel())
                                                                    ],
                                                                )
                                                            )
                                                        ],
                                                    ),
                                                ],
                                            ),
                                        ),

                                        Container(
                                            padding: EdgeInsets.symmetric(vertical: 16),
                                            decoration: borderContainer(),
                                            child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                    Text('Trip Fare',style: boldText()),
                                                    Text('Paid by',style: greyText()),
                                                    SizedBox(height: 16),

                                                    _buildRow('Cash', 'LKR 380.00'),
                                                    SizedBox(height: 8),
                                                    _buildRow('Discount', 'LKR 72.00'),
                                                    SizedBox(height: 8),
                                                    _buildRow('Paid Amount', 'LKR 420.00'),
                                                ],
                                            ),
                                        ),

                                        Container(
                                            padding: EdgeInsets.symmetric(vertical: 16),
                                            child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                    Text('Let\'s rate',style: boldText()),
                                                    Text('What do you think about the driver performance?',
                                                        style: greyText(),
                                                    ),
                                                    SizedBox(height: 16),
                                                    Row(
                                                        children: [
                                                            Icon(Icons.star_border),
                                                            Icon(Icons.star_border),
                                                            Icon(Icons.star_border),
                                                            Icon(Icons.star_border),
                                                            Icon(Icons.star_border),
                                                        ],
                                                    ),
                                                ],
                                            ),
                                        ),

                                    ],
                                ),
                            ),
                            _buildButtonContainer(),
                        ],
                    ),
                ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    borderContainer() {
        return BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: (Colors.grey[300])!,
                    width: 1
                )
            )
        );
    }

    Widget _buildButtonContainer() {
        return Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
                children: [
                  Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text('Complaint'),
                        style: style.outlineButtonStyle(),
                      )
                  ),
                  SizedBox(width: 16),
                  Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text('Resend Receipt'),
                        style: style.outlineButtonStyle(),
                      )
                  )
                ],
            ),
        );
    }

    boldText() {
        return TextStyle(
            fontFamily: 'medium',
            fontSize: 16
        );
    }

    greyText() {
        return TextStyle(
            color: Colors.grey
        );
    }

    boldLabel() {
      return TextStyle(
          fontFamily: 'medium'
      );
    }

    greyLabel() {
      return TextStyle(
          color: Colors.grey
      );
    }

    Widget _buildRow(val1, val2) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Text('$val1',
                    style: TextStyle(fontFamily: 'medium'),
                ),
                Text('$val2',
                    style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'medium'
                    ),
                )
            ],
        );
    }

}