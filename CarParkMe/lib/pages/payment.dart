/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:parkme/pages/payment_done_modal.dart';
import 'package:parkme/widget/NavBar.dart';
import 'package:parkme/widget/elevated_button.dart';
import '../components/styles.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Payment extends StatefulWidget {
  static const String id = 'Payment';

  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int selectID = 1;
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
      drawer: NavBar(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 70,
        iconTheme: IconThemeData(color: Colors.black87),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: CircleAvatar(
              backgroundColor: Colors.white70,
              radius: 24,
              child: Icon(
                Icons.near_me,
                size: 24,
                color: appColor,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
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
          Container(
            padding: EdgeInsets.only(top: 60, bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      SearchBox('Whrere are you go?'),
                      SizedBox(height: 16),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: [
                        _buildSession(),
                        MyElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PaymentDoneModal()));
                            },
                            text: 'Pay up'),
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSession() {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              offset: const Offset(0, 2),
              blurRadius: 12.0),
        ],
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [blackHeading('Total'), blackHeading('\$10')],
          ),
          Divider(thickness: 1, color: Colors.black12, height: 24),
          blackBoldText('Parking session'),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [greyText('From'), blackText('10:43 AM')],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [greyText('From'), blackText('12:20 AM')],
          ),
          Divider(thickness: 1, color: Colors.black12, height: 24),
          blackBoldText('Payment'),
          SizedBox(height: 10),
          _buildSelect('*** *** *** 1220', 1),
          _buildSelect('*** *** *** 1220', 2)
        ],
      ),
    );
  }

  Widget _buildSelect(title, id) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectID = id;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        margin: EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8.0,
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.all(
              color: selectID == id ? appColor : Colors.transparent,
            )),
        child: Row(
          children: [
            Icon(Icons.credit_card, color: Colors.black45),
            SizedBox(width: 16),
            Expanded(
              child: Text(title,
                  style: TextStyle(fontFamily: 'medium', fontSize: 12)),
            ),
            Icon(Icons.done,
                size: 18,
                color: selectID == id ? Colors.green : Colors.black12),
          ],
        ),
      ),
    );
  }
}
