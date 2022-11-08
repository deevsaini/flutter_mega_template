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
import '../helper/style.dart' as style;

class FeaturedScreen extends StatefulWidget {
    FeaturedScreen({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Featured';

    @override
    State<FeaturedScreen> createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {

    List<Item> slides = <Item>[
        Item('assets/images/massage1.jpg', 'Hot Stone Massage'),
        Item('assets/images/massage2.jpg', 'Aromatherapy Massage'),
        Item('assets/images/massage3.jpg', 'Swedish Massage'),
        Item('assets/images/massage4.jpg', 'Deep Tissue Massage'),
        Item('assets/images/massage5.jpg', 'Sports Massage'),
        Item('assets/images/massage6.jpg', 'Face Massage'),
        Item('assets/images/massage7.jpg', 'Reflexology'),
    ];

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

    List<Item> products = <Item>[
        Item('assets/images/pro1.jpg', 'Hair'),
        Item('assets/images/pro2.jpg', 'Massage'),
        Item('assets/images/pro3.jpg', 'Face & Skin'),
        Item('assets/images/pro4.jpg', 'Makeup'),
        Item('assets/images/pro5.jpg', 'Hair Styling'),
        Item('assets/images/pro6.jpg', 'Hair Color'),
        Item('assets/images/pro7.jpg', 'Hair Texture'),
        Item('assets/images/pro8.jpg', 'Bridal')
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                color: Color.fromARGB(255, 242, 242, 242),
                child: Column(
                    children: [

                        _buildSlider(),

                        Container(
                            padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                            child: Column(
                                children: [
                                    _buildTitle('Featured Service'),
                                    SizedBox(height: 16),
                                    Container(
                                        width: double.infinity,
                                        height: 200,
                                        child: ListView(
                                            physics: ScrollPhysics(),
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            children: List.generate(services.length, (index) {
                                                return _buildSingleService(services[index]);
                                            })
                                        ),
                                    ),

                                    SizedBox(height: 16),
                                    _buildTitle('Featured Products5'),
                                    SizedBox(height: 16),
                                    Container(
                                        width: double.infinity,
                                        height: 200,
                                        child: ListView(
                                            physics: ScrollPhysics(),
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            children: List.generate(products.length, (index) {
                                                return _buildSingleProduct(products[index]);
                                            })
                                        ),
                                    ),

                                ],
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    Widget _buildSlider() {
        return Container(
          width: double.infinity,
          height: 250,
          child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: false,
              viewportFraction: 1.0,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items: slides.map((item) => Container(
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: style.squareImage(item.img),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 300,
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.only(bottom: 40),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(150, 0, 0, 0)
                    ),
                    child: Text('Flat 30% discount of '+item.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'medium'
                      ),
                    ),
                  ),
                ),
              ),
            )).toList(),
          ),
        );
    }

    Widget _buildSingleService(service) {
        return Container(
            width: 240,
            height: 200,
            margin: EdgeInsets.only(right: 16),
            decoration: slideContainer(),
            child: Column(
                children: [
                    Container(
                        width: double.infinity,
                        height: 148,
                        decoration: serviceImage(service.img),
                    ),
                    Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Expanded(child: Text(service.name)),
                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                    decoration: priceContainer(),
                                    child: _buildPriceText(),
                                ),
                            ],
                        ),
                    )
                ],
            ),
        );
    }

    Widget _buildSingleProduct(product) {
        return Container(
            width: 200,
            height: 200,
            margin: EdgeInsets.only(right: 16),
            decoration: slideContainer(),
            child: Column(
                children: [
                    Container(
                        width: double.infinity,
                        height: 148,
                        decoration: productImage(product.img),
                    ),
                    Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Expanded(child: Text(product.name)),
                                Container(
                                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                    decoration: priceContainer(),
                                    child: _buildPriceText(),
                                ),
                            ],
                        ),
                    )
                ],
            ),
        );
    }

    Widget _buildTitle(val) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Text('$val',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'medium'
                    ),
                ),
                Text('View All',
                    style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.underline
                    ),
                ),
            ],
        );
    }

    slideContainer() {
        return BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
                Radius.circular(10)
            ),
            border: Border.all(
                color: (Colors.grey[300])!,
                width: 1
            )
        );
    }

    serviceImage(val) {
        return BoxDecoration(
            image: DecorationImage(
                image: AssetImage(val),
                fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10)
            )
        );
    }

    productImage(val) {
        return BoxDecoration(
            image: DecorationImage(
                image: AssetImage(val),
                fit: BoxFit.contain
            ),
        );
    }

    priceContainer() {
        return BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end : Alignment.topLeft,
              colors: [style.appColor2, style.appColor],
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(25)
            )
        );
    }

    Widget _buildPriceText() {
        return RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: '\$15',
                style: TextStyle(fontSize: 11, color: Colors.white, fontFamily: 'regular'),
                children: <TextSpan>[
                    TextSpan(text: ' \$14', style: TextStyle(fontFamily: 'medium')),
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