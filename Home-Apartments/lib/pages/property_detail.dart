/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/pages/booking.dart';
import 'package:home/pages/chat.dart';
import 'package:home/widget/elevated_button.dart';
import '../components/styles.dart';

class PropertyDetail extends StatefulWidget {
  static const String id = 'PropertyDetail';

  const PropertyDetail({Key? key}) : super(key: key);

  @override
  _PropertyDetailState createState() => _PropertyDetailState();
}

class _PropertyDetailState extends State<PropertyDetail>
    with SingleTickerProviderStateMixin {
  List<Item> facilityList = <Item>[
    Item('Bed', 'assets/images/bed.png'),
    Item('Water', 'assets/images/water.png'),
    Item('Parking', 'assets/images/garage.png'),
    Item('Toilet', 'assets/images/towel.png'),
  ];
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.favorite_border,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.share,
              ),
              onPressed: () {},
            ),
          ],
        ),
        bottomNavigationBar: _buildBottomBtn(),
        body: _buildBody());
  }

  Widget _buildBody() {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/h3.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        _buildDragg(),
      ],
    );
  }

  Widget _buildDragg() {
    return DraggableScrollableSheet(
      initialChildSize: .76,
      minChildSize: .76,
      maxChildSize: .86,
      builder: (BuildContext context, ScrollController scrollController) {
        return ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          child: Container(
            color: backgroundColor,
            height: 300,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  boldHeading("Sarovar Efcee"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      greyTextSmall('201 Wall Street, Italy'),
                      Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                          decoration: BoxDecoration(
                              color: appColor2,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0))),
                          child: Text(
                            "\$ 7,999/night",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          )),
                    ],
                  ),
                  SizedBox(height: 16),
                  greyText(
                      "The High Power pavilion Motel was a decent bedroom and sea view balkony.Sarover Portico Efcee live and you could be enjoy. "),
                  SizedBox(height: 16),
                  _buildOwnerProfile(),
                  SizedBox(height: 20),
                  blackText("Facilities"),
                  SizedBox(height: 8),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: facilityList.map((e) {
                        return _buildFacility(context, e);
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildFacility(context, e) {
    return Container(
      padding: EdgeInsets.all(12),
      width: 80,
      height: 80,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Column(
        children: [
          Image.asset(
            e.img,
            width: 24,
            height: 24,
            color: Colors.black38,
          ),
          SizedBox(height: 8),
          greyTextSmall(
            e.name,
          ),
        ],
      ),
    );
  }

  Widget _buildOwnerProfile() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Chat()));
      },
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                blackText("Margret Taclobany"),
                greyTextSmall("Soviat Union BND Germon"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomBtn() {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(30)),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundColor: backgroundColor,
              child: IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black38,
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: MyElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Booking()));
                },
                text: 'Book Now',
              ),
            ),
            SizedBox(width: 20),
            CircleAvatar(
              radius: 24,
              backgroundColor: backgroundColor,
              child: IconButton(
                icon: Icon(
                  Icons.call,
                  color: Colors.black38,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Item {
  const Item(this.name, this.img);
  final String name;
  final String img;
}
