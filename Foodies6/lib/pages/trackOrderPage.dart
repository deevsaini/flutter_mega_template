/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:foodies_fluttermarketplace_hardik/utilities/constance.dart'
    as style;

class trackOrderPage extends StatefulWidget {
  trackOrderPage({Key? key}) : super(key: key);

  static const String pageId = 'trackOrderPage';

  @override
  State<trackOrderPage> createState() => _trackOrderPageState();
}

class _trackOrderPageState extends State<trackOrderPage> {
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
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
        floatingActionButton: _buildfloatingActionButton(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(50),
      child: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        shape:
            Border(bottom: BorderSide(color: Colors.grey.shade300, width: 1)),
        title: Column(
          children: [
            Text(
              'Order ID : #FGFF564',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            Text(
              'Track Your Order',
              style: TextStyle(
                  color: Colors.black, fontFamily: 'bold', fontSize: 17),
            ),
          ],
        ),
        centerTitle: true,
        flexibleSpace: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.close),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildfloatingActionButton() {
    return ElevatedButton(
      onPressed: () {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return FractionallySizedBox(
              heightFactor: 0.8,
              child: showBottomModal(),
            );
          },
        );
      },
      style: ElevatedButton.styleFrom(
        primary: style.itemColor,
      ),
      child: const Text(
        'Show Details',
        style: TextStyle(fontFamily: 'bold'),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                markers: _markers,
                initialCameraPosition: CameraPosition(
                    target: LatLng(21.5397106, 71.8215543), zoom: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget searchbar(hintText) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
          height: 40,
          child: TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: Icon(Icons.search),
              hintStyle: TextStyle(color: Colors.grey.shade600),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
              filled: true,
              fillColor: Colors.grey.shade300,
              contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            ),
          ),
        ),
      ),
    );
  }

  Widget showBottomModal() {
    late bool status = false;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '3 items - \$ 80.30',
                  style: TextStyle(fontFamily: 'bold', color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ClipRRect(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(20),
                      child: FittedBox(
                        child: Image.asset('assets/images/d.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'American Dish ',
                        style:
                            TextStyle(color: Colors.black, fontFamily: 'bold'),
                        children: [
                          TextSpan(
                            text: ' +2 more',
                            style: TextStyle(
                                color: Colors.grey, fontFamily: 'regular'),
                            // recognizer: new TapGestureRecognizer()..onTap = () => print('Tap Here onTap'),
                          )
                        ]),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Estimated Time : 30Mins',
                  style: TextStyle(fontFamily: 'bold', color: style.itemColor),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => filterPage()));
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: style.categoriesButtonStyle(),
                    child: Center(
                        child: Text(
                      'More',
                      style: TextStyle(color: Colors.white, fontFamily: 'bold'),
                    )),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: style.itemColor),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: SizedBox.fromSize(
                        size: Size.fromRadius(30),
                        child: FittedBox(
                          child: Image.asset('assets/images/c3.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 120,
                                child: Text(
                                  'Patricia Luke',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontFamily: 'bold', fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 120,
                                child: Text(
                                  'Hoston, Texas',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'bold',
                                      fontSize: 12),
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.chat,
                                    color: style.itemColor,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.call,
                                    color: style.itemColor,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: style.itemColor,
                                size: 15,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Text(
                                  '3.5',
                                  style: TextStyle(
                                      color: style.itemColor, fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildRowContent(Icons.check, 'Order Confirmed',
                      'Your order has been confirmed.'),
                  _buildLine(),
                  _buildRowContent(Icons.check, 'Order Processed',
                      'Chef is preparing the lovely food.'),
                  _buildLine(),
                  _buildRowContent(Icons.check, 'Ready To Pickup',
                      'Your order is ready to pickup.'),
                ],
              ),
            ),
            Container(
              height: 80,
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.2), BlendMode.srcOver),
                    image: AssetImage('assets/images/16.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRowContent(icn, txt1, txt2) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            height: 20,
            width: 20,
            decoration: style.smallButtonStyle2(),
            child: Center(
                child: Icon(
              icn,
              size: 10,
              color: Colors.white,
            )),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$txt1',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              '$txt2',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLine() {
    return Container(
      margin: EdgeInsets.only(left: 10),
      height: 30,
      width: 1,
      color: style.appColor,
    );
  }
}
