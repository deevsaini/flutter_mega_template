/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/pages/filter_result.dart';
import 'package:home/pages/list_category.dart';
import '../components/styles.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SearchProperty extends StatefulWidget {
  static const String id = 'SearchProperty';

  const SearchProperty({Key? key}) : super(key: key);

  @override
  _SearchPropertyState createState() => _SearchPropertyState();
}

class _SearchPropertyState extends State<SearchProperty> {
  Set<Marker> _markers = {};
  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      _markers.add(
        Marker(
          markerId: MarkerId('Id-1'),
          position: LatLng(21.5397106, 71.8215543),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Container(
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              markers: _markers,
              initialCameraPosition: CameraPosition(
                  target: LatLng(21.5397106, 71.8215543), zoom: 15),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        offset: const Offset(0, 2),
                        blurRadius: 8.0),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                            backgroundColor: backgroundColor,
                            radius: 20,
                            child: Icon(Icons.chevron_left)),
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('assets/images/man.png'),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    SearchBox('Find District, street name', () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FilterResult()));
                    }),
                    SizedBox(height: 40),
                    _buildItem(),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildItem() {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ListCategory()));
      },
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Row(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16.0),
                  child: Image.asset(
                    'assets/images/h3.jpg',
                    width: 70,
                    height: 70,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: -5,
                  right: -5,
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                          color: appColor2,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: Text(
                        "RENT",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )),
                )
              ],
            ),
            SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      greyText('Best for family'),
                      Icon(
                        Icons.bookmark_border,
                        color: Colors.black45,
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  blackBoldText('Sarovar Efcee'),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.directions_bus,
                              size: 14, color: Colors.black38),
                          SizedBox(width: 5),
                          Text(
                            "4",
                            style:
                                TextStyle(color: Colors.black38, fontSize: 12),
                          ),
                          SizedBox(width: 20),
                          Icon(Icons.garage, size: 14, color: Colors.black38),
                          SizedBox(width: 5),
                          Text(
                            "2",
                            style:
                                TextStyle(color: Colors.black38, fontSize: 12),
                          ),
                        ],
                      ),
                      Text(
                        "\$201/m",
                        style: TextStyle(
                            color: appColor, fontSize: 16, fontFamily: 'bold'),
                      ),
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
