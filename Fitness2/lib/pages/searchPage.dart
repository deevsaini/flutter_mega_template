/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:fitness_app/pages/sideMenuPage.dart';
import 'package:fitness_app/pages/videoCallingPage.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:fitness_app/utilities/constancePage.dart' as style;

class searchPage extends StatefulWidget {
  const searchPage({Key? key}) : super(key: key);

  static const String pageId = 'searchPage';

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
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
    return SafeArea(
      child: Scaffold(
        drawer: myDrawer(),
        key: _scaffoldKey,
        drawerEnableOpenDragGesture: false,
        backgroundColor: Color(0xFF2D2D39),
        appBar: _buildAppBar(),
        body: _buildBody(),
      ),
    );
  }

  Widget myDrawer() {
    return Drawer(
      child: sideMenuPage(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xFF2D2D39),
      elevation: 0,
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => _scaffoldKey.currentState?.openDrawer(),
            child: Icon(Icons.menu),
          ),
          Text(
            'Search',
            style: TextStyle(
                fontFamily: 'bold', color: Colors.white, fontSize: 20),
          ),
          InkWell(
            onTap: () {
              //
            },
            child: Icon(Icons.map),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              markers: _markers,
              initialCameraPosition: CameraPosition(
                  target: LatLng(21.5397106, 71.8215543), zoom: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildSearchbar('Search..'),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        _buildContent(
                          Image.asset(
                            'assets/images/20.jpg',
                            fit: BoxFit.cover,
                          ),
                          'Brandon Guidelines',
                          'Pilates',
                          '5.0',
                          '3.0 KM',
                        ),
                        _buildContent(
                          Image.asset(
                            'assets/images/21.jpg',
                            fit: BoxFit.cover,
                          ),
                          'Joohi Row',
                          'Croosier',
                          '2.0',
                          '4.0 KM',
                        ),
                        _buildContent(
                          Image.asset(
                            'assets/images/1.jpg',
                            fit: BoxFit.cover,
                          ),
                          'Jordan Thomson',
                          'Pushup',
                          '3.0',
                          '3.0 KM',
                        ),
                        _buildContent(
                          Image.asset(
                            'assets/images/3.jpg',
                            fit: BoxFit.cover,
                          ),
                          'Show War',
                          'Sixpack',
                          '4.0',
                          '3.0 KM',
                        ),
                        _buildContent(
                          Image.asset(
                            'assets/images/4.jpg',
                            fit: BoxFit.cover,
                          ),
                          'Brandy LOve',
                          'Pilates',
                          '3.0',
                          '3.0 KM',
                        ),
                        _buildContent(
                          Image.asset(
                            'assets/images/5.jpg',
                            fit: BoxFit.cover,
                          ),
                          'Maira Kair',
                          'Pilates',
                          '4.0',
                          '3.0 KM',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchbar(hintText) {
    return Row(
      children: [
        Flexible(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Container(
              height: 40,
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: hintText,
                  prefixIcon: Icon(Icons.search),
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.shade100,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.shade100,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContent(img, txt1, txt2, txt3, txt4) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => videoCallingPage()));
      },
      child: Container(
        height: 200,
        width: 170,
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xFF2D2D39),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(3.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(30),
                  child: img,
                ),
              ),
            ),
            SizedBox(
              width: 165,
              child: Text(
                '$txt1',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'bold', fontSize: 15, color: Colors.white),
              ),
            ),
            SizedBox(
              width: 165,
              child: Text(
                '$txt2',
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$txt3',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '$txt4',
                  style: TextStyle(color: style.appColor),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 15),
                    Icon(Icons.star, color: Colors.orange, size: 15),
                    Icon(Icons.star, color: Colors.orange, size: 15),
                    Icon(Icons.star, color: Colors.orange, size: 15),
                    Icon(Icons.star, color: Colors.orange, size: 15),
                  ],
                ),
                Text(
                  'Nearby',
                  style: TextStyle(color: style.appColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
