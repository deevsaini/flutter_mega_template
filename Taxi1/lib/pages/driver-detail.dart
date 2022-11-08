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
import 'package:taxibookflutter/pages/payment-method.dart';
import 'package:taxibookflutter/pages/promo-code.dart';
import '../helper/style.dart' as style;

class DriverDetailPage extends StatefulWidget {
    DriverDetailPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Driver Detail';

    @override
    State<DriverDetailPage> createState() => _DriverDetailPageState();
}

class _DriverDetailPageState extends State<DriverDetailPage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: SingleChildScrollView(
                child: Container(
                    color: Colors.white,
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
                                                        height: 90,
                                                        width: 90,
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
                                                                Text('On the way',
                                                                    style: TextStyle(
                                                                        fontFamily: 'medium',
                                                                        color: style.appGreen
                                                                    )
                                                                ),
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
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                    Text('Fare Breakdown',style: boldText()),
                                                    Text('3 Pessengers',style: greyText()),
                                                    SizedBox(height: 16),

                                                    _buildRow('Min Fare(First 5 km)', 'LKR 380.00'),
                                                    SizedBox(height: 8),
                                                    _buildRow('After 5 km(Per km)', 'LKR 72.00'),
                                                    SizedBox(height: 8),
                                                    _buildRow('Waiting Time(Per 1 Hour)', 'LKR 420.00'),
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
                            Container(
                                width: double.infinity,
                                height: 56,
                                child: ElevatedButton(
                                    style: greenButton(),
                                    onPressed: () {},
                                    child: Text('Call Driver',style: buttonText()),
                                ),
                            )
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
            child: Row(
                children: [
                    Expanded(
                        child: Container(
                            height: 56,
                            child: ElevatedButton(
                                style: greyButton(),
                                onPressed: () {
                                    Navigator.push(context, new MaterialPageRoute(
                                        builder: (context) => new PaymentMethodPage())
                                    );
                                },
                                child: Text('Cash',style: buttonText()),
                            ),
                        )
                    ),
                    Expanded(
                        child: Container(
                            height: 56,
                            child: ElevatedButton(
                                style: greyButton(),
                                onPressed: () {
                                    Navigator.push(context, new MaterialPageRoute(
                                        builder: (context) => new PromoCodePage())
                                    );
                                },
                                child: Text('Promo Code',style: buttonText()),
                            ),
                        )
                    ),
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

    greyButton() {
        return ElevatedButton.styleFrom(
            primary: Colors.grey[200],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0)
            ),
            elevation: 0,
        );
    }

    greenButton() {
        return ElevatedButton.styleFrom(
            primary: style.appGreen,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0)
            ),
            elevation: 0,
        );
    }

    buttonText() {
        return TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'medium'
        );
    }

}