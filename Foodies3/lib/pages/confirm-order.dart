/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:gofoodflutter/pages/tracking.dart';
import '../helper/style.dart' as style;

class ConfirmOrderPage extends StatefulWidget {
    ConfirmOrderPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Confirm Order';

    @override
    State<ConfirmOrderPage> createState() => _ConfirmOrderPageState();
}

class _ConfirmOrderPageState extends State<ConfirmOrderPage> {

    List<Item> foods = <Item>[
        Item('assets/images/food1.jpg', 'Turkey Breast'),
        Item('assets/images/food2.jpg', 'Black Forest Ham'),
        Item('assets/images/food3.jpg', 'Albacore Tuna'),
        Item('assets/images/food4.jpg', 'Mac and Cheese'),
        Item('assets/images/food5.jpg', 'Asian Noodle'),
        Item('assets/images/food6.jpg', 'Kimchi'),
        Item('assets/images/food7.jpg', 'Skillet Cookie'),
        Item('assets/images/food8.jpg', 'Chilli Lime Tofu'),
        Item('assets/images/food9.jpg', 'Steak and Cheest'),
    ];

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
                                    Text('Confirm Order',
                                        style: style.boldTitle(),
                                    ),
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
                                        Expanded(
                                            child: Column(
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
                            padding: EdgeInsets.all(16),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text('Similar Products',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'medium'
                                        ),
                                    ),
                                    SizedBox(height: 16),
                                    Container(
                                        height: 200,
                                        margin: EdgeInsets.only(bottom: 16),
                                        child: ListView(
                                            shrinkWrap: true,
                                            physics: ScrollPhysics(),
                                            scrollDirection: Axis.horizontal,
                                            children: List.generate(foods.length, (index) {
                                                return _buildSingleFood(foods[index], index);
                                            }),
                                        ),
                                    )
                                ],
                            ),
                        ),

                        Container(
                            padding: EdgeInsets.all(16),
                            color: Colors.white,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text('Add Voucher',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'medium'
                                        ),
                                    ),
                                    SizedBox(height: 16),
                                    Container(
                                        height: 70,
                                        width: double.infinity,
                                        child: ListView(
                                            shrinkWrap: true,
                                            physics: ScrollPhysics(),
                                            scrollDirection: Axis.horizontal,
                                            children: List.generate([1,2,3].length, (index) {
                                                return Container(
                                                    width: 150,
                                                    height: 70,
                                                    margin: EdgeInsets.only(right: 16),
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.all(
                                                            Radius.circular(5)
                                                        ),
                                                        color: style.appGrey
                                                    ),
                                                );
                                            })
                                        ),
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
                                decoration: textAreaDecoration(),
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

    textAreaDecoration() {
        return InputDecoration(
            filled: true,
            fillColor: style.appGrey,
            hintText: 'Please call me when you come. Thank you!',
            border: borderDecoration(),
            enabledBorder: borderDecoration(),
            focusedBorder: borderDecoration(),
        );
    }

    borderDecoration() {
        return OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        );
    }

    Widget _buildBottomContainer() {
        return Container(
            padding: EdgeInsets.all(16),
            child: ElevatedButton(
                onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => new TrackingPage()
                    ));
                },
                child: Text('Confirm'),
                style: style.simpleButton(),
            ),
        );
    }

    Widget _buildSingleFood(e, index) {
        return InkWell(
            onTap: () {},
            child: Container(
                width: 120,
                margin: EdgeInsets.only(right: 16),
                decoration: style.whiteContainer(),
                child: Column(
                    children: [
                        Container(
                            width: double.infinity,
                            height: 105,
                            decoration: style.topCornerRoundImage(e.img),
                        ),
                        Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text(e.name,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'medium'
                                        ),
                                    ),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                            Text('\$2.5',
                                                style: TextStyle(
                                                    color: style.appColor,
                                                ),
                                            ),
                                            Icon(Icons.add_circle, size: 24, color: style.appColor),
                                        ],
                                    )
                                ],
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

}

class Item {
  const Item(this.img, this.name);
  final String img;
  final String name;
}