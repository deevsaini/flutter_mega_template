/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class AboutScreen extends StatefulWidget {
    AboutScreen({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'About';

    @override
    State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {

    List<Item> slides = <Item>[
        Item('assets/images/salon1.jpg', 'Hot Stone Massage'),
        Item('assets/images/salon2.jpg', 'Aromatherapy Massage'),
        Item('assets/images/salon3.jpg', 'Swedish Massage'),
        Item('assets/images/salon4.jpg', 'Deep Tissue Massage'),
        Item('assets/images/salon5.jpg', 'Sports Massage'),
    ];

    List<Item> stylists = <Item>[
        Item('assets/images/user1.jpg', 'Alex Stone'),
        Item('assets/images/user2.jpg', 'Alex Stone'),
        Item('assets/images/user3.jpg', 'Alex Stone')
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                iconTheme: IconThemeData(
                    color: Colors.white
                ),
                title: Text('About Us', style: style.pageTitleText()),
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
                color: Colors.white,
                child: Column(
                    children: <Widget>[

                        _buildSlider(),
                        _buildDetailContainer(),
                        Container(
                            width: double.infinity,
                            height: 200,
                            color: Colors.grey[200],
                        ),

                        Container(
                            width: double.infinity,
                            color: Color.fromARGB(255, 220, 220, 220),
                            padding: EdgeInsets.all(16),
                            child: Column(
                                children: [
                                    _buildAboutBox(),
                                    ListView(
                                        shrinkWrap: true,
                                        physics: ScrollPhysics(),
                                        children: stylists.map((e) {
                                            return _buildSingleStylist(e);
                                        }).toList(),
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
            height: 200,
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
                        height: 200,
                        decoration: style.squareImage(item.img),
                    ),
                )).toList(),
            ),
        );
    }


    Widget _buildDetailContainer() {
        return Container(
            padding: EdgeInsets.all(16),
            color: Colors.white,
            child: Column(
                children: [
                    Text('Natural Beauty and Spa Services',
                        style: TextStyle(
                            fontSize: 20,
                            color: style.appColor,
                            fontFamily: 'medium'
                        ),
                    ),
                    SizedBox(height: 8),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Row(
                                children: [
                                    Text('250 Reviews'),
                                    SizedBox(width: 8),
                                    Icon(Icons.star, size: 16, color: Colors.amber),
                                    Icon(Icons.star, size: 16, color: Colors.amber),
                                    Icon(Icons.star, size: 16, color: Colors.amber),
                                    Icon(Icons.star, size: 16, color: Colors.amber),
                                    Icon(Icons.star, size: 16, color: Colors.amber),
                                ],
                            ),
                            Row(
                                children: [
                                    Icon(Icons.location_on_outlined, size: 18),
                                    Padding(
                                        padding: EdgeInsets.only(left: 6, right: 4),
                                        child: Text('Locations')
                                    ),
                                    Icon(Icons.keyboard_arrow_down)
                                ],
                            )
                        ],
                    )
                ],
            ),
        );
    }

    Widget _buildGeneralDetail(title, detail) {
        return RichText(
            text: TextSpan(
                text: '$title',
                style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: 'medium'),
                children: <TextSpan>[
                    TextSpan(text: '$detail', style: TextStyle(fontFamily: 'regular')),
                ],
            ),
        );
    }

    whiteBox() {
        return BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
                Radius.circular(5)
            )
        );
    }

    Widget _buildAboutBox() {
        return Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(bottom: 16),
            decoration: whiteBox(),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    _buildGeneralDetail('Mon to Fri    ', ' : 11:00 AM - 08:00 PM '),
                    SizedBox(height: 8),
                    _buildGeneralDetail('Saturday     ', ' : 11:00 AM - 08:00 PM '),
                    SizedBox(height: 8),
                    _buildGeneralDetail('Sunday        ', ' : 11:00 AM - 08:00 PM '),
                    SizedBox(height: 8),
                    _buildGeneralDetail('Description ', ' : Lorem ipsum dolor sit amet consectetur adipisicing elit. Est laboriosam dolorum neque assumenda libero excepturi distinctio consequuntur exercitationem aliquam.'),
                ],
            ),
        );
    }

    Widget _buildSingleStylist(e) {
        return Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(bottom: 16),
            decoration: whiteBox(),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Row(
                        children: [
                            Container(
                                height: 54,
                                width: 54,
                                padding: EdgeInsets.all(2),
                                margin: EdgeInsets.only(right: 16),
                                decoration: outerContainer(),
                                child: Container(
                                    decoration: style.avatarImage(e.img),
                                ),
                            ),
                            Expanded(
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        _buildGeneralDetail('Hair Stylist', ' : Katherine Stewert '),
                                        _buildGeneralDetail('Age', ' : 24Yrs ')
                                    ],
                                )
                            )
                        ],
                    )
                ],
            ),
        );
    }

    outerContainer() {
        return BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(100)
            ),
            gradient: LinearGradient(
              colors: [style.appColor, style.appColor2],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(1.0, 0.0),
              stops: [0.5, 1.0],
            )
        );
    }

}

class Item {
    const Item(this.img, this.name);
    final String img;
    final String name;
}