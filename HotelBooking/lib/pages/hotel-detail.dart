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
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../helper/style.dart' as style;

class HotelDetailPage extends StatefulWidget {
    HotelDetailPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Home';

    @override
    State<HotelDetailPage> createState() => _HotelDetailPageState();
}

class _HotelDetailPageState extends State<HotelDetailPage> {

    List<Item> amenities = <Item> [
        Item(Icons.wifi, 'Free Wifi', true),
        Item(Icons.spa, 'Spa', false),
        Item(Icons.beach_access, 'Beach', false),
        Item(Icons.coffee, 'Restaurant', true),
        Item(Icons.pool, 'Pool', true),
        Item(Icons.wine_bar, 'Bar', true),
        Item(Icons.fitness_center, 'Gym', true),
        Item(Icons.ac_unit, 'A/C', false),
        Item(Icons.local_parking, 'Parking', true),
    ];

    String segmentID = 'Details';

    List<Item2> prices = <Item2> [
        Item2('Zenhotels.com', '\$1 ,250'),
        Item2('Makemytrip', '\$2 ,250'),
        Item2('Booking.com', '\$1 ,350'),
        Item2('Zenhotels.com', '\$990'),
    ];

    List<Item2> ratings = <Item2> [
        Item2('Excellent Service', '92%'),
        Item2('I felt like a king!', '100%'),
        Item2('Worth the money', '80%'),
    ];

    List<String> rooms = [
        'assets/images/hotel1.jpg',
        'assets/images/hotel2.jpg',
        'assets/images/hotel3.jpg'
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Color.fromARGB(255, 247, 247, 247),
            body: _buildBody(context),
            bottomNavigationBar: _buildBottomContainer(),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                child: Column(
                    children: [

                        Container(
                            width: double.infinity,
                            height: 300,
                            child: Stack(
                                children: [
                                    _buildSlider(),
                                    Positioned(
                                        top: 60,
                                        child: Container(
                                            width: MediaQuery.of(context).size.width,
                                            child: Text('Lemon Tree Premier',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20,
                                                  fontFamily: 'semi-bold'
                                              ),
                                            ),
                                        )
                                    ),
                                    Positioned(
                                        top: 50,
                                        child: IconButton(
                                            onPressed: () {
                                                Navigator.of(context).pop();
                                            },
                                            icon: Icon(Icons.arrow_back, color: Colors.white)
                                        )
                                    ),
                                ],
                            ),
                        ),

                        _buildSegmentContainer(),

                        segmentID == 'Details' ? _buildDetailContainer() : Container(),

                        segmentID == 'Prices' ? _buildPriceContainer() : Container(),

                        segmentID == 'Rating' ? _buildratingContainer() : Container(),
                    ],
                ),
            ),
        );
    }

    Widget _buildSlider() {
        return CarouselSlider(
            options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: false,
                viewportFraction: 1,
                height: 300
            ),
            items: rooms.map((item) => Container(
                child: Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(item),
                            fit: BoxFit.cover
                        )
                    ),
                ),
            )).toList(),
        );
    }

    Widget _buildSegmentContainer() {
        return Container(
            child: Row(
                children: [
                    _buildSegment('Details'),
                    _buildSegment('Prices'),
                    _buildSegment('Rating'),
                ],
            ),
        );
    }

    Widget _buildSegment(val) {
        return Expanded(
            child: InkWell(
                onTap: () {
                    setState(() {
                        segmentID = val;
                    });
                },
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 4,
                                color: segmentID == val ? style.appColor : Colors.transparent
                            )
                        )
                    ),
                    child: Text('$val', textAlign: TextAlign.center,
                      style: segmentText('$val'),
                    ),
                ),
            )
        );
    }
    
    segmentText(val) {
        return TextStyle(
            fontSize: 17,
            color: segmentID == val ? style.appColor : Colors.grey  
        );
    }

    whiteContainer() {
        return BoxDecoration(
            color: Colors.white,
            boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                ),
            ]
        );
    }

    Widget _buildDetailContainer() {
        return Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16),
                        margin: EdgeInsets.only(bottom: 20),
                        decoration: whiteContainer(),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text('About Lemon Tree Premier',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'semi-bold'
                                    ),
                                ),
                                SizedBox(height: 16),
                                Text('Lorem Ipsum is simply dummy text of the printing and typesetting '
                                    'industry. Lorem Ipsum has been the industry\'s.',
                                    style: TextStyle(fontSize: 15),
                                ),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Text('Read more',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: style.appColor
                                        ),
                                    ),
                                )
                            ],
                        ),
                    ),
                    Container(
                        width: double.infinity,
                        decoration: whiteContainer(),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              
                                Container(
                                    padding: EdgeInsets.all(16),
                                    width: double.infinity,
                                    decoration: style.bottomBorder(),
                                    child: Text('Amenities'.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'semi-bold',
                                            color: style.appColor
                                        ),
                                    )
                                ),
                                GridView.count(
                                    crossAxisCount: 3,
                                    physics: ScrollPhysics(),
                                    shrinkWrap: true,
                                    childAspectRatio: 100/70,
                                    padding: EdgeInsets.all(0),
                                    children: List.generate(amenities.length, (index) {
                                        return _buildSingleAmenity(amenities[index]);
                                    }),
                                )
                            ],
                        ),
                    )
                ],
            ),
        );
    }

    Widget _buildSingleAmenity(amenity) {
        return Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Icon(
                        amenity.icn,
                        color: amenity.status == true ? style.appColor : Colors.grey,
                    ),
                    SizedBox(height: 4),
                    Text(amenity.name,
                        style: TextStyle(
                            color: amenity.status == true ? style.appColor : Colors.grey,
                        ),
                    ),
                ],
            ),
        );
    }

    Widget _buildPriceContainer() {
        return Container(
            padding: EdgeInsets.all(16),
            child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.all(0),
                physics: ScrollPhysics(),
                children: List.generate(prices.length, (index) {
                    return _buildSinglePrice(prices[index]);
                }),
            ),
        );
    }

    Widget _buildSinglePrice(price) {
        return Container(
            margin: EdgeInsets.only(bottom: 16),
            decoration: whiteContainer(),
            child: Row(
                children: [
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.all(16),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text(price.title, style: colorLabel()),
                                    SizedBox(height: 8),
                                    RichText(
                                        text: TextSpan(
                                            text: 'Delux Queen Room - ',
                                            style: TextStyle(fontSize: 15, color: style.appColor, fontFamily: 'regular'),
                                            children: <TextSpan>[
                                                TextSpan(text: 'Breakfast included, free cancellation, Pay at hotel',
                                                    style: TextStyle(color: Colors.black)
                                                ),
                                            ],
                                        ),
                                    )
                                ],
                            ),
                        )
                    ),
                    Container(
                        width: 100,
                        padding: EdgeInsets.all(16),
                        decoration: leftBorder(),
                        child: Center(
                            child: Text(price.value, style: colorLabel()),
                        ),
                    )
                ],
            ),
        );
    }

    leftBorder() {
        return BoxDecoration(
            border: Border(
                left: BorderSide(
                    width: 1,
                    color: (Colors.grey[300])!
                )
            )
        );
    }

    colorLabel() {
        return TextStyle(
            color: style.appColor,
            fontFamily: 'semi-bold',
            fontSize: 16
        );
    }

    Widget _buildratingContainer() {
        return Container(
            padding: EdgeInsets.all(16),
            child: Column(
                children: [
                    Row(
                        children: [
                            Container(
                                height: 120,
                                width: 120,
                                margin: EdgeInsets.only(right: 16),
                                decoration: whiteContainer(),
                                child: CircularPercentIndicator(
                                  radius: 46.0,
                                  lineWidth: 4.0,
                                  percent: 0.89,
                                  center: new Text('89%',
                                      style: TextStyle(
                                          color: style.appColor,
                                          fontFamily: 'semi-bold',
                                          fontSize: 20
                                      ),
                                  ),
                                  progressColor: style.appColor,
                                ),
                            ),
                            Expanded(
                                child: Container(
                                    height: 120,
                                    padding: EdgeInsets.symmetric(horizontal: 16),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [style.appColor, style.appColor2],
                                          begin: const FractionalOffset(0.0, 0.0),
                                          end: const FractionalOffset(1.0, 0.0),
                                        )
                                    ),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                            Text('89/100',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontFamily: 'semi-bold',
                                                    color: Colors.white
                                                ),
                                            ),
                                            SizedBox(height: 8),
                                            Text('Rating status - Excellent',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white
                                                ),
                                            ),
                                            SizedBox(height: 8),
                                            Text('Totally 212 people reviewed',
                                                style: TextStyle(
                                                    color: Colors.white
                                                ),
                                            ),
                                        ],
                                    ),
                                ),
                            ),
                        ],
                    ),
                    SizedBox(height: 20),
                    ListView(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        padding: EdgeInsets.all(0),
                        children: List.generate(ratings.length, (index) {
                            return _buildSingleRating(ratings[index]);
                        }),
                    )
                ],
            ),
        );
    }

    Widget _buildSingleRating(rating) {
        return Container(
            margin: EdgeInsets.only(bottom: 16),
            padding: EdgeInsets.all(16),
            decoration: whiteContainer(),
            child: Column(
                children: [
                    Row(
                        children: [
                            Expanded(
                                child: Text(rating.title,
                                    style: TextStyle(
                                        fontFamily: 'semi-bold',
                                        fontSize: 16
                                    ),
                                )
                            ),
                            Text(rating.value, style: colorLabel())
                        ],
                    ),
                    SizedBox(height: 8),
                    Text('Very excellent service, the house keeping staff was polite, over allit was a fabulous service',
                        style: TextStyle(fontSize: 15),
                    )
                ],
            ),
        );
    }


    Widget _buildBottomContainer() {
        return Container(
            height: 80,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [style.appColor, style.appColor2],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(1.0, 0.0),
                )
            ),
            child: Row(
                children: [
                    _buildSingleInfo(Icons.public, 'Website'),
                    _buildSingleInfo(Icons.call, 'Call us'),
                    _buildSingleInfo(Icons.location_on, 'Location'),
                ],
            ),
        );
    }

    Widget _buildSingleInfo(icn, title) {
        return Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Icon(icn, color: Colors.white),
                    SizedBox(height: 4),
                    Text('$title',
                        style: TextStyle(
                            fontFamily: 'semi-bold',
                            color: Colors.white
                        ),
                    )
                ],
            )
        );
    }
}

class Item {
    const Item(this.icn, this.name, this.status);
    final IconData icn;
    final String name;
    final bool status;
}

class Item2 {
    const Item2(this.title, this.value);
    final String title;
    final String value;
}