/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food2/pages/login.dart';
import 'package:food2/pages/restaurant_detail.dart';
import '../components/styles.dart' as style;

class Home extends StatefulWidget {
  static const String id = 'Home';

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Item> catList = <Item>[
    const Item('Near Me', 'assets/images/1.png'),
    const Item('Promotion', 'assets/images/2.png'),
    const Item('Top Sales', 'assets/images/3.png'),
    const Item('Drinks', 'assets/images/4.png'),
    const Item('Fast Food', 'assets/images/5.png'),
    const Item('Noodles', 'assets/images/6.png'),
    const Item('Snacks', 'assets/images/7.png'),
    const Item('Healthy', 'assets/images/6.png'),
  ];

  List<String> Banner = [
    'assets/images/banner1.jpg',
    'assets/images/banner2.jpg',
    'assets/images/banner1.jpg',
    'assets/images/banner2.jpg',
  ];

  List<String> gridList = [
    'assets/images/banner1.jpg',
    'assets/images/banner2.jpg',
    'assets/images/banner1.jpg',
    'assets/images/banner2.jpg',
    'assets/images/banner1.jpg',
    'assets/images/banner2.jpg',
    'assets/images/banner1.jpg',
    'assets/images/banner2.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        // centerTitle: true,
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Deliver to:',
              style: TextStyle(color: Colors.black45, fontSize: 12),
            ),
            Row(
              children: const [
                Icon(
                  Icons.location_on,
                  color: style.appColor,
                  size: 24,
                ),
                SizedBox(width: 5),
                Text(
                  'HariramBapa Asharam',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'semibold'),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.black45,
                  size: 24,
                ),
              ],
            ),
          ],
        ),

        actions: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
            decoration: const BoxDecoration(
                color: style.background,
                borderRadius: BorderRadius.all(Radius.circular(100))),
            child: IconButton(
              icon: const Icon(
                Icons.favorite_border,
                size: 20,
              ),
              onPressed: () {},
            ),
          ),
        ],
        bottom: PreferredSize(
          child: Container(
            margin: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
            decoration: const BoxDecoration(
              color: style.background,
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: const TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                border: InputBorder.none,
                hintText: "Find Restaurants, foods, Drinks..",
                hintStyle: TextStyle(fontSize: 16, color: Colors.black26),
                suffixIcon: SizedBox(
                    width: 50,
                    child: Icon(Icons.search, color: Colors.black26)),
              ),
            ),
          ),
          preferredSize: const Size(0.0, 60.0),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            _buildBanner(),
            _buildCategory(),
            Container(
              color: style.background,
              child: Column(
                children: [_buildHeading(), _build2ColGrid()],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeading() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        const Expanded(
          child: Text("New on Foodzone",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                  fontWeight: FontWeight.w600)),
        ),
        TextButton(
            onPressed: () {},
            child: const Text("View All",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.w500)))
      ]),
    );
  }

  Widget _buildCategory() {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      children: catList.map((e) {
        return Container(
          child: Column(
            children: [
              InkWell(
                onTap: () {},
                child: Image.asset(
                  e.img,
                  width: 40,
                  height: 40,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    e.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 11,
                        fontFamily: 'medium',
                        color: Colors.black),
                  )),
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildBanner() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        height: 150,
        padding: const EdgeInsets.only(left: 6),
        decoration: const BoxDecoration(),
        child: ListView(
          shrinkWrap: false,
          physics: const ScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: Banner.map((e) {
            return InkWell(
                child: Container(
              width: MediaQuery.of(context).size.width * .85,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2), BlendMode.darken),
                      image: AssetImage(e),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                    child: Text("Top Sales".toUpperCase(),
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                        )),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Invite Friend".toUpperCase(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          )),
                      Text('Discount 200 Rs. for first order'.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          )),
                    ],
                  ),
                ],
              ),
            ));
          }).toList(),
        ),
      ),
    );
  }

  Widget _build2ColGrid() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 14,
            crossAxisSpacing: 10,
            shrinkWrap: true,
            childAspectRatio: 85 / 100,
            physics: const ScrollPhysics(),
            children: gridList.map((e) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RestaurantDetail()));
                },
                child: Container(
                  padding: const EdgeInsets.all(0),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 120,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(e), fit: BoxFit.cover),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              top: 5,
                              left: 0,
                              child: Container(
                                color: Colors.green.shade800,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 2),
                                child: const Text("Popular",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 8,
                                    )),
                              ),
                            ),
                            Positioned(
                              bottom: 1,
                              right: 0,
                              child: Container(
                                color: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 2),
                                child: const Text("220 cal",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8,
                                    )),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 8),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              Expanded(
                                child: Text('200Rs',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    )),
                              ),
                              Text(
                                '900Rs',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 12,
                                ),
                              ),
                            ]),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text("Pan-fried sauseo with Asparoava",
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                                fontWeight: FontWeight.w600)),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

class Item {
  const Item(this.name, this.img);
  final String name;
  final String img;
}
