/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:saloon5/pages/service.dart';
import '../components/styles.dart' as style;

class Home extends StatefulWidget {
  static const String id = 'Home';

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  List<Item> profileList = <Item>[
    const Item('Haircut', 'assets/images/scissors.png'),
    const Item('Nails', 'assets/images/hairdryer.png'),
    const Item('Make-up', 'assets/images/salon-chair.png'),
    const Item('Hair-dryier', 'assets/images/perfume.png'),
    const Item('Blowing', 'assets/images/scissors.png'),
    const Item('Hair-Fire', 'assets/images/hairdryer.png'),
  ];

  List<String> gridList = [
    'assets/images/2.jpg',
    'assets/images/3.jpg',
  ];

  final List _elements = [
    '1',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: style.appColor2,
      body: Scaffold(
        backgroundColor: style.appColor2,
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: <Widget>[
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: const Text(
                  ' Sophia Beauty Bar, Richardson',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black54,
                      fontSize: 24),
                ),
              ),
              _buildContent()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return DraggableScrollableSheet(
      initialChildSize: .87,
      minChildSize: .87,
      builder: (BuildContext context, ScrollController scrollController) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [_buildServiceDesc()],
            ),
          ),
        );
      },
    );
  }

  Widget _searchField() {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(13)),
      ),
      child: const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          border: InputBorder.none,
          hintText: "what you are looking for?",
          hintStyle: TextStyle(fontSize: 16, color: Colors.black26),
          suffixIcon: SizedBox(
              width: 50, child: Icon(Icons.search, color: Colors.black26)),
        ),
      ),
    );
  }

  Widget _buildServiceDesc() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _searchField(),
            _buildBanner(),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Services",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black54,
                      fontWeight: FontWeight.w600)),
            ),
            _buildServiceCat(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Expanded(
                      child: Text("Hair Specialist",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black54,
                              fontWeight: FontWeight.w600)),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text("View All",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500)))
                  ]),
            ),
            _build2ColGrid(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Expanded(
                      child: Text("Brow Specialist",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black54,
                              fontWeight: FontWeight.w600)),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text("View All",
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.w500)))
                  ]),
            ),
            _build2ColGrid(),
            _buildBookButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildBanner() {
    return Container(
      height: 200,
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
              image: const AssetImage('assets/images/2.jpg'),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text("-50%",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w600)),
          Text("Permanent make-up",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              )),
        ],
      ),
    );
  }

  Widget _buildServiceCat() {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        height: 125,
        decoration: const BoxDecoration(),
        child: ListView(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: profileList.map((e) {
            return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Service()));
              },
              child: Container(
                margin: const EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      padding: const EdgeInsets.all(20),
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: style.appColor2),
                      child:
                          Image(image: AssetImage(e.img), fit: BoxFit.contain),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        e.name,
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54),
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildBookButton() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.access_time,
                color: Colors.black54,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Work Hours',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                  Text(
                    '08 am - 12 pm',
                    style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                        fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          ElevatedButton(
            child: const Text(
              "Book a visit",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: style.appColor,
              onPrimary: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _build2ColGrid() {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            shrinkWrap: true,
            childAspectRatio: 70 / 100,
            physics: const ScrollPhysics(),
            children: gridList.map((e) {
              return InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(0),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 175,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(e), fit: BoxFit.cover),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(25)),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 8),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Expanded(
                                child: Text("Jane Cooper",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600)),
                              ),
                              Row(
                                children: const [
                                  SizedBox(width: 6),
                                  Icon(
                                    Icons.star,
                                    size: 14,
                                    color: Colors.orange,
                                  ),
                                  SizedBox(width: 8),
                                  Text('5.0',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.orange,
                                      )),
                                ],
                              ),
                            ]),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          'Hair Stylist',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
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
