/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

class FairDetailPage extends StatefulWidget {
    FairDetailPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Fair Detail';

    @override
    State<FairDetailPage> createState() => _FairDetailPageState();
}

class _FairDetailPageState extends State<FairDetailPage> {

    List<Item> carType = <Item>[
      Item('Car', 'assets/images/car-active.png', 'assets/images/car-deactive.png'),
      Item('Budget', 'assets/images/budget-active.png', 'assets/images/budget-deactive.png'),
      Item('Tuk Tuk', 'assets/images/tuk-tuk-active.png', 'assets/images/tuk-tuk-deactive.png'),
      Item('City', 'assets/images/city-active.png', 'assets/images/city-deactive.png'),
      Item('Van', 'assets/images/van-active.png', 'assets/images/van-deactive.png'),
    ];
    int type = 0;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Column(
                children: [
                    Container(
                        color: Colors.white,
                        padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                        child: Column(
                            children: [
                                Text('Fare Breakdown',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'medium'
                                  ),
                                ),
                                Text('Below mentioned fare rates may change according to surcharge and adjustment.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14
                                  ),
                                ),
                                SizedBox(height: 20),
                                _buildRow('Min Fare(First 5 km)', 'LKR 380.00'),
                                SizedBox(height: 8),
                                _buildRow('After 5 km(Per km)', 'LKR 72.00'),
                                SizedBox(height: 8),
                                _buildRow('Waiting Time(Per 1 Hour)', 'LKR 420.00'),
                            ],
                        ),
                    ),
                    Container(
                        width: double.infinity,
                        height: 56,
                        child: ElevatedButton(
                            style: greyButton(),
                            onPressed: () {},
                            child: Text('Close',
                                style: buttonText(),
                            ),
                        ),
                    )
                ],
            ), // This trailing comma makes auto-formatting nicer for build methods.
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
            primary: Color.fromARGB(255, 245, 245, 245),
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

class Item {
    const Item(this.name, this.img1, this.img2);
    final String name;
    final String img1;
    final String img2;
}