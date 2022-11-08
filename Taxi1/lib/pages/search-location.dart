/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:taxibookflutter/pages/book-detail.dart';
import 'package:taxibookflutter/pages/delete-favourite.dart';
import 'package:taxibookflutter/pages/locations.dart';
import '../helper/style.dart' as style;

class SearchLocationPage extends StatefulWidget {
    SearchLocationPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Search Location';

    @override
    State<SearchLocationPage> createState() => _SearchLocationPageState();
}

class _SearchLocationPageState extends State<SearchLocationPage> {

    int tabID = 1;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                elevation: 0,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.white,
            ),
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                        tabID == 1 ?

                        Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(16),
                            decoration: style.shadowContainer(),
                            child: Column(
                                children: [
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                            Text('Pickup Location',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: 'medium',
                                                    color: style.appGreen
                                                ),
                                            ),
                                            InkWell(
                                                onTap: () {
                                                    Navigator.pop(context);
                                                },
                                                child: Icon(Icons.close),
                                            )
                                        ],
                                    ),
                                    SizedBox(height: 16),
                                  
                                    TextField(
                                        decoration: style.textInputDecorationWithIcon(
                                            Icons.fiber_manual_record, style.appGreen,'Enter Location'
                                        ),
                                    ),
                                    SizedBox(height: 20),

                                    Row(
                                        children: [
                                            Expanded(
                                                child: Row(
                                                    children: [
                                                        Icon(Icons.location_on, color: style.appGreen, size: 20),
                                                        SizedBox(width: 5),
                                                        Text('Tap to select from the map',
                                                            style: TextStyle(
                                                                color: Colors.grey,
                                                            ),
                                                        ),
                                                    ],
                                                )
                                            ),
                                            FloatingActionButton(
                                                onPressed: () {
                                                    setState(() {
                                                        tabID = 2;
                                                    });
                                                },
                                                child: Icon(Icons.arrow_forward),
                                                backgroundColor: style.appColor,
                                                elevation: 0,
                                            )
                                        ],
                                    ),
                                ],
                            ),
                        ) : Container(),

                        tabID == 2 ?

                        Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(16),
                            decoration: style.shadowContainer(),
                            child: Column(
                                children: [
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                            Text('Drop off Location',
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: 'medium',
                                                    color: Color.fromARGB(255, 207, 60, 79)
                                                ),
                                            ),
                                            InkWell(
                                                onTap: () {
                                                    showDialog(
                                                        context: context,
                                                        builder: (BuildContext context) {
                                                            return LocationsPage();
                                                        }
                                                    );
                                                },
                                                child: Text('Skip',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontFamily: 'medium'
                                                    ),
                                                ),
                                            )
                                        ],
                                    ),
                                    SizedBox(height: 16),

                                    TextField(
                                        decoration: style.textInputDecorationWithIcon(
                                            Icons.fiber_manual_record, Color.fromARGB(255, 207, 60, 79),'Enter Location'
                                        ),
                                    ),
                                    SizedBox(height: 20),

                                    Row(
                                        children: [
                                            Expanded(
                                                child: Row(
                                                    children: [
                                                        Icon(Icons.location_on, color: Color.fromARGB(255, 207, 60, 79), size: 20),
                                                        SizedBox(width: 5),
                                                        Text('Tap to select from the map',
                                                            style: TextStyle(
                                                                color: Colors.grey,
                                                            ),
                                                        ),
                                                    ],
                                                )
                                            ),
                                            FloatingActionButton(
                                                onPressed: () {
                                                    Navigator.push(context, new MaterialPageRoute(
                                                        builder: (context) => new BookDetailPage())
                                                    );
                                                },
                                                child: Icon(Icons.arrow_forward),
                                                backgroundColor: style.appColor,
                                                elevation: 0,
                                            )
                                        ],
                                    ),
                                ],
                            ),
                        ) : Container(),

                        SizedBox(height: 20),

                        Container(
                            padding: EdgeInsets.all(16),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text('Favourite Places',style: titleLabel()),
                                    SizedBox(height: 16),

                                    ListView(
                                        shrinkWrap: true,
                                        physics: ScrollPhysics(),
                                        children: List.generate([1,2,3].length, (index) {
                                            return Container(
                                                margin: EdgeInsets.only(bottom: 16),
                                                child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                        Expanded(
                                                            child: Row(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                    Icon(Icons.favorite, color: style.appGreen),
                                                                    SizedBox(width: 12),
                                                                    Expanded(
                                                                        child: Column(
                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                            children: [
                                                                                Text('Creative Software - Office',
                                                                                    style: TextStyle(
                                                                                        fontFamily: 'medium',
                                                                                        fontSize: 15
                                                                                    ),
                                                                                ),
                                                                                Text('No. 29 Deal PI, Colombo',
                                                                                    style: TextStyle(
                                                                                        fontSize: 13,
                                                                                        color: Colors.grey
                                                                                    ),
                                                                                ),
                                                                            ],
                                                                        )
                                                                    ),
                                                                ],
                                                            ),
                                                        ),
                                                        InkWell(
                                                            onTap: () {
                                                                showModalBottomSheet(
                                                                    context: context,
                                                                    isScrollControlled: true,
                                                                    backgroundColor: Colors.transparent,
                                                                    builder: (context) => Container(
                                                                        padding: EdgeInsets.all(16),
                                                                        height: 180,
                                                                        decoration: style.radiusContainer(),
                                                                        child: DeleteFavouritePage(),
                                                                    ),
                                                                );
                                                            },
                                                            child: Icon(Icons.remove_circle_outline, color: Color.fromARGB(255, 207, 60, 79),),
                                                        )
                                                    ],
                                                ),
                                            );
                                        }),
                                    ),

                                    Text('Recently visited places',style: titleLabel()),
                                    SizedBox(height: 16),

                                    ListView(
                                        shrinkWrap: true,
                                        physics: ScrollPhysics(),
                                        children: List.generate([1,2,3].length, (index) {
                                            return Container(
                                                margin: EdgeInsets.only(bottom: 16),
                                                child: Row(
                                                    children: [
                                                        Icon(Icons.access_time, color: Colors.grey, size: 20),
                                                        SizedBox(width: 6),
                                                        Expanded(
                                                            child: Text('katunayake Airport - Sri Lanka',
                                                                style: TextStyle(
                                                                    color: Colors.grey,
                                                                    fontSize: 15
                                                                ),
                                                            ),
                                                        ),
                                                    ],
                                                ),
                                            );
                                        }),
                                    ),

                                ],
                            ),
                        ),

                    ],
                ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    titleLabel() {
        return TextStyle(
            fontSize: 20,
            fontFamily: 'semi-bold'
        );
    }

}