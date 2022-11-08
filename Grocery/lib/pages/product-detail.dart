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

class ProductDetailPage extends StatefulWidget {
    ProductDetailPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Product Detail';

    @override
    State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {

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
            appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(
                    color: style.appColor
                ),
                actions: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_outline)
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share_outlined)
                    )
                ],
            ),
            body: _buildBody(), // This trailing comma makes auto-formatting nicer for build methods.
            bottomNavigationBar: _buildBottomContainer(),
        );
    }

    Widget _buildBody() {
        return SingleChildScrollView(
            child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Container(
                            child: Center(
                                child: Image.asset('assets/images/grapes.png'),
                            ),
                        ),
                        Container(
                            padding: EdgeInsets.all(16),
                            decoration: style.bottomBorder(),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Row(
                                      children: [],
                                    ),
                                    Text('Grapes',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: 'semi-bold'
                                        ),
                                    ),
                                    Text('\$1.50/kg',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            decoration: TextDecoration.lineThrough
                                        ),
                                    ),
                                    SizedBox(height: 16),
                                    Row(
                                        children: [
                                            Expanded(
                                                child: Text('\$1.35',
                                                    style: TextStyle(
                                                        fontSize: 24,
                                                        fontFamily: 'semi-bold'
                                                    ),
                                                ),
                                            ),
                                            Row(
                                                children: [
                                                    Container(
                                                        height: 30,
                                                        width: 30,
                                                        decoration: btnBox(),
                                                        child: Icon(Icons.remove, color: style.appColor),
                                                    ),
                                                    Padding(
                                                        padding: EdgeInsets.symmetric(horizontal: 20),
                                                        child: Text('1',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontFamily: 'semi-bold'
                                                          ),
                                                        )
                                                    ),
                                                    Container(
                                                        height: 30,
                                                        width: 30,
                                                        decoration: btnBox(),
                                                        child: Icon(Icons.add, color: style.appColor),
                                                    ),
                                                ],
                                            ),
                                        ],
                                    )
                                ],
                            ),
                        ),
                        Container(
                            padding: EdgeInsets.all(16),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    _buildTitleLabel('Product Details'),
                                    SizedBox(height: 16),
                                    Text('Lorem Ipsum is simply dummy text of the printing and typesetting '
                                        'industry. Lorem Ipsum has been the industry\'s standard dummy text '
                                        'ever since the 1500s, when an unknown printer took a galley of type '
                                        'and scrambled it to make a type specimen book.',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.grey
                                        ),
                                    ),
                                    SizedBox(height: 16),

                                    _buildTitleLabel('Maybe You Likes'),
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
    btnBox() {
        return BoxDecoration(
            border: Border.all(
                width: 2,
                color: style.appColor
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(3)
            )
        );
    }

    Widget _buildSingleProduct(product) {
        return InkWell(
            onTap: () {

            },
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
                                                child: Text('10%',style: style.offLabel()),
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

    Widget _buildBottomContainer() {
        return Container(
            padding: EdgeInsets.all(16),
            child: Row(
                children: [
                    OutlinedButton(
                        onPressed: () {},
                        child: Icon(Icons.shopping_bag_outlined, color: style.appColor),
                        style: style.outlineButton()
                    ),
                    SizedBox(width: 16),
                    Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Buy'),
                          style: style.simpleButton(),
                        )
                    ),
                ],
            ),
        );
    }
}

class Item {
    const Item(this.img, this.name);
    final String img;
    final String name;
}