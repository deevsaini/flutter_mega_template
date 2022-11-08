/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternewgrocery/pages/notifications.dart';
import 'package:flutternewgrocery/pages/product-detail.dart';
import 'package:flutternewgrocery/pages/product-list.dart';
import 'package:flutternewgrocery/pages/promo.dart';
import '../helper/style.dart' as style;

class ShopPage extends StatefulWidget {
    ShopPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Shop';

    @override
    State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

    List<BannerItem> slider = <BannerItem>[
        BannerItem('assets/images/avocado.png', 'Avocado 5% OFF', Color.fromARGB(255, 105, 92, 205)),
        BannerItem('assets/images/grapes.png', 'Free delivery every purchase', Color.fromARGB(255, 254, 184, 46)),
        BannerItem('assets/images/kale.png', 'Free lettuce on every purchase', Color.fromARGB(255, 105, 92, 205)),
        BannerItem('assets/images/mango.png', '12% OFF on Mango', Color.fromARGB(255, 254, 184, 46)),
    ];

    List<Item> categories = <Item>[
        Item('assets/images/veg.png', 'Vegetables'),
        Item('assets/images/fruit.png', 'Fruits'),
        Item('assets/images/meat.png', 'Meat'),
        Item('assets/images/fish.png', 'Seafood'),
        Item('assets/images/dairy.png', 'Milk & Egg'),
        Item('assets/images/bread.png', 'Bread'),
        Item('assets/images/frozen-food.png', 'Frozen'),
        Item('assets/images/plant.png', 'Organic')
    ];

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
                title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Image.asset('assets/images/logo.png', width: 40),
                        SizedBox(width: 8),
                        Text('Grocery',
                            style: TextStyle(
                                fontSize: 22,
                                fontFamily: 'semi-bold',
                                color: Colors.black
                            ),
                        ),
                    ],
                ),
                actions: [
                    IconButton(
                        onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(
                                builder: (context) => new NotificationsPage())
                            );
                        },
                        icon: Icon(Icons.notifications_none, color: Colors.grey)
                    ),
                    IconButton(
                        onPressed: () {
                            Navigator.push(context, new MaterialPageRoute(
                                builder: (context) => new PromoPage())
                            );
                        },
                        icon: Icon(Icons.local_offer_outlined, color: Colors.grey)
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
                            padding: EdgeInsets.all(16),
                            child: TextField(
                                decoration: searchBox(),
                            ),
                        ),
                        Container(
                            child: _buildSlider()
                        ),
                        Container(
                            padding: EdgeInsets.all(16),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    SizedBox(height: 20),
                                    GridView.count(
                                        crossAxisCount: 4,
                                        shrinkWrap: true,
                                        physics: ScrollPhysics(),
                                        mainAxisSpacing: 8,
                                        crossAxisSpacing: 8,
                                        childAspectRatio: 80/100,
                                        children: List.generate(categories.length, (index) {
                                            return _buildSingleCategory(categories[index]);
                                        }),
                                    ),

                                    SizedBox(height: 20),
                                    Text('Pick\'s Today',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'medium'
                                        ),
                                    ),
                                    SizedBox(height: 20),

                                    GridView.count(
                                        crossAxisCount: 2,
                                        shrinkWrap: true,
                                        physics: ScrollPhysics(),
                                        mainAxisSpacing: 16,
                                        crossAxisSpacing: 16,
                                        childAspectRatio: 70/100,
                                        children: List.generate(products.length, (index) {
                                            return _buildSingleProduct(products[index]);
                                        }),
                                    )
                                ],
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    searchBox() {
        return InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            hintText: 'Search for products',
            filled: true,
            fillColor: Colors.grey[100],
            border: searchBorder(),
            focusedBorder: searchBorder(),
            enabledBorder: searchBorder(),
        );
    }

    searchBorder() {
        return OutlineInputBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(5)
            ),
            borderSide: BorderSide(
                color: Colors.transparent,
                width: 1
            )
        );
    }

    Widget _buildSlider() {
        return Container(
            width: double.infinity,
            height: 230,
            child: CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: false,
                    viewportFraction: 0.9,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
                items: slider.map((item) => Container(
                    child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        height: 230,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(5)
                            ),
                            color: item.clr
                        ),
                        child: Row(
                            children: [
                                Expanded(
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                            Text(item.name.toUpperCase(),
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                    fontFamily: 'medium'
                                                ),
                                            ),
                                            Container(
                                                width: 150,
                                                margin: EdgeInsets.only(top: 16),
                                                child: _buildCheckBtn()
                                            ),
                                        ],
                                    )
                                ),
                                Container(
                                    height: 150,
                                    width: 150,
                                    child: Image.asset(item.img),
                                ),
                            ],
                        ),
                    ),
                )).toList(),
            ),
        );
    }

    Widget _buildCheckBtn() {
        return ElevatedButton(
            onPressed: () {},
            child: Text('Check Now'.toUpperCase()),
            style: ElevatedButton.styleFrom(
                primary: style.appColor,
                onPrimary: Colors.white,
                elevation: 0,
                textStyle: TextStyle(
                    fontFamily: 'medium'
                )
            ),
        );
    }

    Widget _buildSingleCategory(category) {
        return InkWell(
            onTap: () {
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => new ProductListPage())
                );
            },
            child: Container(
                child: Column(
                  children: [
                      Container(
                          padding: EdgeInsets.all(16),
                          margin: EdgeInsets.only(bottom: 5),
                          width: double.infinity,
                          height: 80,
                          decoration: style.shadowContainer(),
                          child: Image.asset(category.img),
                      ),
                      Text(category.name,
                          style: TextStyle(
                              fontSize: 13
                          ),
                      ),
                  ],
                ),
            )
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
                                child: Text('10%',
                                  style: style.offLabel(),
                                ),
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

class BannerItem {
    const BannerItem(this.img, this.name, this.clr);
    final String img;
    final String name;
    final Color clr;
}