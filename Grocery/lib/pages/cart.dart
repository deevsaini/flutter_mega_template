/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutternewgrocery/pages/review-order.dart';
import '../helper/style.dart' as style;

class CartPage extends StatefulWidget {
    CartPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Cart';

    @override
    State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

    List<Item> products = <Item>[
        Item('assets/images/avocado.png', 'Pak Choi'),
        Item('assets/images/grapes.png', 'Green Paprica'),
        Item('assets/images/kale.png', 'Broccoli'),
        Item('assets/images/mango.png', 'Garlic'),
        Item('assets/images/avocado.png', 'Spinack'),
        Item('assets/images/grapes.png', 'Cabbage'),
        Item('assets/images/kale.png', 'Tomato'),
        Item('assets/images/mango.png', 'Onion'),
        Item('assets/images/avocado.png', 'Chilly'),
        Item('assets/images/grapes.png', 'Black Pepper'),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                iconTheme: IconThemeData(
                    color: style.appColor
                ),
                title: Text('Cart'),
                titleTextStyle: style.pageTitle(),
            ),
            body: _buildBody(), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    Widget _buildBody() {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ListView(
                  shrinkWrap: true,
                  physics: ScrollPhysics(),
                  children: List.generate(products.sublist(0,3).length, (index) {
                    return _buildCartProduct(products[index]);
                  }),
                ),

                _buildCheckoutButton(),

                _buildTitleLabel('You might also need'),
                SizedBox(height: 16),

                Container(
                  height: 260,
                  width: double.infinity,
                  child: ListView(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: List.generate(products.length, (index) {
                      return _buildSingleProduct(products[index]);
                    }),
                  ),
                )
              ],
            ),
          ),
        );
    }

    Widget _buildTitleLabel(val) {
        return Text('$val',
            style: TextStyle(
                fontSize: 17,
                fontFamily: 'medium'
            ),
        );
    }

    Widget _buildCartProduct(product) {
        return Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(product.img),
                                fit: BoxFit.contain
                            )
                        ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text(product.name,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'medium'
                                    ),
                                ),
                                Text('\$5/500g',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey
                                    ),
                                ),
                                Text('\$10',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontFamily: 'semi-bold'
                                    ),
                                ),
                            ],
                        )
                    ),
                    SizedBox(width: 16),
                    Container(
                        width: 100,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Icon(Icons.add_circle_outline, color: style.appColor, size: 30),
                                Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: Text('2',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'semi-bold'
                                        ),
                                    ),
                                ),
                                Icon(Icons.remove_circle_outline, color: style.appColor, size: 30)
                            ],
                        ),
                    ),
                ],
            ),
        );
    }

    Widget _buildCheckoutButton() {
        return Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 30, top: 30),
            child: ElevatedButton(
                onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) => new ReviewOrderPage())
                    );
                },
                child: Text('Checkout'),
                style: style.simpleButton(),
            ),
        );
    }


    Widget _buildSingleProduct(product) {
        return InkWell(
            onTap: () { },
            child: Container(
                width: 200,
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.only(right: 16),
                decoration: style.shadowContainer(),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Container(
                            width: double.infinity,
                            height: 150,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(product.img),
                                    fit: BoxFit.contain
                                )
                            ),
                        ),
                        SizedBox(height: 8),
                        Text(product.name,
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'medium'
                            ),
                        ),
                        Text('50g/pack',
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey
                            ),
                        ),
                        SizedBox(height: 8),
                        Row(
                            children: [
                                Expanded(
                                    child: Row(
                                        children: [
                                            Container(
                                                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 1),
                                                margin: EdgeInsets.only(right: 8),
                                                decoration: style.offContainer(),
                                                child: Text('10%', style: style.offLabel()),
                                            ),
                                            Text('\$ 2.50',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'medium'
                                                ),
                                            ),
                                        ],
                                    )
                                ),
                                Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)
                                        ),
                                        color: style.appColor
                                    ),
                                    child: Icon(Icons.add, color: Colors.white),
                                ),
                            ],
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