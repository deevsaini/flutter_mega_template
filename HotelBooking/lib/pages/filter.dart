/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:carousel_slider/carousel_slider.dart';
import 'package:direct_select/direct_select.dart';
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class FilterPage extends StatefulWidget {
    FilterPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Filter';

    @override
    State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {

    List<Item> amenities = <Item> [
        Item(Icons.wifi, 'Free Wifi', true),
        Item(Icons.spa, 'Spa', false),
        Item(Icons.beach_access, 'Beach', false),
        Item(Icons.coffee, 'Restaurant', false),
        Item(Icons.pool, 'Pool', false),
        Item(Icons.wine_bar, 'Bar', false)
    ];

    CarouselController buttonCarouselController = CarouselController();

    int _currentPage = 0;

    final price = [
      '\$ 5,000',
      '\$ 6,000',
      '\$ 7,000',
      '\$ 8,000',
      '\$ 9,000',
      '\$ 10,000',
      '\$ 11,000',
      '\$ 12,000'
    ];

    final km = [
      '13.5 km',
      '13.6 km',
      '13.7 km',
      '13.8 km',
      '13.9 km',
      '14.0 km',
      '14.2 km',
      '14.3 km',
      '14.4 km',
      '14.5 km',

    ];

    int selectedIndex1 = 0;
    int selectedIndex2 = 0;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Color.fromARGB(255, 247, 247, 247),
            appBar: AppBar(
                centerTitle: true,
                elevation: 0,
                automaticallyImplyLeading: false,
                iconTheme: IconThemeData(
                    color: Colors.white
                ),
                title: Text('Top Filters'),
                titleTextStyle: style.pageTitleText(),
                flexibleSpace: Container(
                    decoration: style.appBarDecoration(),
                ),
                actions: [
                    IconButton(
                        onPressed: () {
                            Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.close)
                    )
                ],
            ),
            body: _buildBody(context),
            bottomNavigationBar: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 36),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(100)
                                ),
                                color: Color.fromARGB(255, 246,240,240),
                            ),
                            child: IconButton(
                                onPressed: () {
                                    buttonCarouselController.previousPage(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.linear
                                    );
                                },
                                icon: Icon(Icons.arrow_back, color: Colors.black)
                            ),
                        ),

                        Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(100)
                                ),
                                gradient: LinearGradient(
                                    colors: [style.appColor, style.appColor2],
                                    begin: const FractionalOffset(0.0, 0.0),
                                    end: const FractionalOffset(1.0, 0.0),
                                )
                            ),
                            child: IconButton(
                                onPressed: () {
                                    buttonCarouselController.nextPage(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.linear
                                    );
                                },
                                color: style.appColor,
                                icon: Icon(Icons.arrow_forward, color: Colors.white)
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                child: CarouselSlider(
                    carouselController: buttonCarouselController,
                    options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: true,
                      viewportFraction: 1,
                      enableInfiniteScroll: false,
                      height: MediaQuery.of(context).size.height,
                      onPageChanged: (index, reason) {
                          setState(() {
                              _currentPage = index;
                              print(_currentPage);
                          });
                      }
                    ),
                    items: [
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                            child: Column(
                                children: [
                                    Image.asset('assets/images/wallet.png', width: 80),
                                    SizedBox(height: 16),
                                    Text('Choose your price range \n from below',
                                        textAlign: TextAlign.center,
                                        style: titleText(),
                                    ),
                                    SizedBox(height: 40),
                                    DirectSelect(
                                        itemExtent: 50.0,
                                        selectedIndex: selectedIndex1,
                                        child: MySelectionItem(
                                            isForList: false,
                                            title: price[selectedIndex1],
                                        ),
                                        onSelectedItemChanged: (index) {
                                          setState(() {
  //                                          selectedIndex1 = index;
                                          });
                                        },
                                        items: price.map((val) => MySelectionItem(
                                            title: val,
                                        )).toList()
                                    )
                                ],
                            ),
                        ),

                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                            child: Column(
                                children: [
                                    Image.asset('assets/images/key.png', width: 80),
                                    SizedBox(height: 16),
                                    Text('Choose from the below \n facilities',
                                        textAlign: TextAlign.center,
                                        style: titleText(),
                                    ),
                                    SizedBox(height: 40),
                                    GridView.count(
                                        crossAxisCount: 2,
                                        physics: ScrollPhysics(),
                                        shrinkWrap: true,
                                        crossAxisSpacing: 24,
                                        mainAxisSpacing: 24,
                                        childAspectRatio: 100/40,
                                        padding: EdgeInsets.all(20),
                                        children: List.generate(amenities.length, (index) {
                                            return _buildSingleAmenity(amenities[index]);
                                        }),
                                    ),
                                ],
                            ),
                        ),

                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                            child: Column(
                                children: [
                                    Image.asset('assets/images/distance.png', width: 80),
                                    SizedBox(height: 16),
                                    Text('Choose your Maximum or \n Minimum distance',
                                        textAlign: TextAlign.center,
                                        style: titleText(),
                                    ),
                                    SizedBox(height: 40),
                                    DirectSelect(
                                        itemExtent: 50.0,
                                        selectedIndex: selectedIndex2,
                                        child: MySelectionItem(
                                          isForList: false,
                                          title: km[selectedIndex2],
                                        ),
                                        onSelectedItemChanged: (index) {
                                            setState(() {
  //                                              selectedIndex1 = index;
                                            });
                                        },
                                        items: km.map((val) => MySelectionItem(
                                          title: val,
                                        )).toList()
                                    )
                                ],
                            ),
                        ),
                    ],
                ),

            ),
        );
    }

    titleText() {
        return TextStyle(
            fontSize: 22,
            fontFamily: 'semi-bold'
        );
    }

    Widget _buildSingleAmenity(amenity) {
        return InkWell(
            onTap: () {},
            child: Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(50)
                    ),
                    boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3), // changes position of shadow
                        ),
                    ],
                    gradient: amenity.status == true ? LinearGradient(
                        colors: [style.appColor, style.appColor2],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.0, 0.0),
                    ) : LinearGradient(
                          colors: [Colors.white, Colors.white]
                    )
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Icon(amenity.icn,
                            color: amenity.status == true ? Colors.white : style.appColor,
                        ),
                        SizedBox(width: 8),
                        Text(amenity.name,
                            style: TextStyle(
                                fontSize: 16,
                                color: amenity.status == true ? Colors.white : style.appColor,
                            ),
                        )
                    ],
                ),
            ),
        );
    }
}

class Item {
    const Item(this.icn, this.name, this.status);
    final IconData icn;
    final String name;
    final bool status;
}

class MySelectionItem extends StatelessWidget {
    final String title;
    final bool isForList;

    const MySelectionItem({Key? key, this.title = '', this.isForList = true}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return SizedBox(
            height: 60.0,
            child: isForList ? Padding(
                child: _buildItem(context),
                padding: EdgeInsets.all(10.0),
            ) :
            Card(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Stack(
                    children: <Widget>[
                        _buildItem(context),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Icon(Icons.arrow_drop_down),
                        )
                    ],
                ),
            ),
        );
    }

    _buildItem(BuildContext context) {
        return Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Text(title),
        );
    }
}