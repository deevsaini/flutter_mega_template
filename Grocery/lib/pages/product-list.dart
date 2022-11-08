/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutternewgrocery/pages/product-detail.dart';
import '../helper/style.dart' as style;

class ProductListPage extends StatefulWidget {
    ProductListPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Product List';

    @override
    State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {

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
                automaticallyImplyLeading: true,
                iconTheme: IconThemeData(
                    color: style.appColor
                ),
                title: Text('Vegetables'),
                centerTitle: false,
                titleTextStyle: style.pageTitle(),
                actions: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search)
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share_outlined)
                    )
                ],
            ),
            body: _buildBody(), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    Widget _buildBody() {
        return SingleChildScrollView(
            child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Container(
                            decoration: style.bottomBorder(),
                            child: Row(
                                children: [
                                    Expanded(
                                        child: ElevatedButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.filter_alt_outlined),
                                            label: Text('Filter'),
                                            style: simpleButton(),
                                        )
                                    ),
                                    Expanded(
                                        child: ElevatedButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.sort_outlined),
                                            label: Text('Sort'),
                                            style: simpleButton(),
                                        )
                                    ),
                                ],
                            ),
                        ),
                        GridView.count(
                            crossAxisCount: 2,
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 16,
                            childAspectRatio: 70/100,
                            padding: EdgeInsets.all(16),
                            children: List.generate(products.length, (index) {
                                return _buildSingleProduct(products[index]);
                            }),
                        )
                    ],
                ),
            ),
        );
    }

    Widget _buildSingleProduct(product) {
        return InkWell(
            onTap: () {
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => new ProductDetailPage())
                );
            },
            child: Container(
                width: double.infinity,
                height: double.infinity,
                padding: EdgeInsets.all(8),
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

    simpleButton() {
        return ElevatedButton.styleFrom(
            onPrimary: Colors.grey,
            padding: EdgeInsets.symmetric(vertical: 12),
            elevation: 0,
            primary: Colors.transparent
        );
    }
}

class Item {
    const Item(this.img, this.name);
    final String img;
    final String name;
}