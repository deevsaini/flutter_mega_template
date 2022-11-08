/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class OffersScreen extends StatefulWidget {
    OffersScreen({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Offers';

    @override
    State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {

    List<Item> services = <Item>[
        Item('assets/images/service1.jpg', 'Hair'),
        Item('assets/images/service2.jpg', 'Massage'),
        Item('assets/images/service3.jpg', 'Face & Skin'),
        Item('assets/images/service4.jpg', 'Makeup'),
        Item('assets/images/service5.jpg', 'Hair Styling'),
        Item('assets/images/service6.jpg', 'Hair Color'),
        Item('assets/images/service7.jpg', 'Hair Texture'),
        Item('assets/images/service8.jpg', 'Bridal')
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                iconTheme: IconThemeData(
                    color: Colors.white
                ),
                title: Text('Offers', style: style.pageTitleText()),
                centerTitle: true,
                elevation: 0,
                flexibleSpace: Container(
                    decoration: style.appBarDecoration(),
                ),
                actions: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share)
                    )
                ],
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                color: Color.fromARGB(255, 220, 220, 220),
                child: ListView(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    children: services.map((e) {
                        return _buildSingleOffer(e);
                    }).toList(),
                ),
            ),
        );
    }

    Widget _buildSingleOffer(e) {
        return Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Column(
                children: [
                    Container(
                        padding: EdgeInsets.all(10),
                        decoration: upperBox(),
                        child: Row(
                            children: [
                                Container(
                                    width: 100,
                                    height: 100,
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: style.roundImage(e.img),
                                ),
                                Expanded(
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            Text('Flat 30% off on bridal services',
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontFamily: 'medium'
                                                ),
                                            ),
                                            SizedBox(height: 6),
                                            Text('Coupon code',
                                                style: TextStyle(
                                                    fontSize: 13
                                                ),
                                            ),
                                            Text('Beautyspa30bdl'.toUpperCase(),
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontFamily: 'medium',
                                                    letterSpacing: 1
                                                ),
                                            )
                                        ],
                                    )
                                )
                            ],
                        ),
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                        decoration: lowerBox(),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Text('Valid till 01 Feb 2022',style: colorText()),
                                Row(
                                    children: [
                                        Text('Details',style: colorText()),
                                        Icon(Icons.keyboard_arrow_down, color: style.appColor, size: 16)
                                    ],
                                ),
                            ],
                        ),
                    )
                ],
            ),
        );
    }

    upperBox() {
        return BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
            )
        );
    }

    lowerBox() {
        return BoxDecoration(
            color: Color.fromARGB(255, 247, 247, 247),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
            )
        );
    }

    colorText() {
        return TextStyle(
            color: style.appColor
        );
    }

}

class Item {
    const Item(this.img, this.name);
    final String img;
    final String name;
}