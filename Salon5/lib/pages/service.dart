/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:saloon5/pages/booking.dart';
import '../components/styles.dart' as style;

class Service extends StatefulWidget {
  static const String id = 'Service';

  const Service({Key? key}) : super(key: key);

  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  @override
  void initState() {
    super.initState();
  }

  List<Item> CatList = <Item>[
    const Item('Haircut', 'assets/images/3.jpg'),
    const Item('Nails', 'assets/images/2.jpg'),
    const Item('Make-up', 'assets/images/3.jpg'),
    const Item('Hair-dryier', 'assets/images/4.jpg'),
    const Item('Blowing', 'assets/images/2.jpg'),
    const Item('Hair-Fire', 'assets/images/3.jpg'),
  ];

  List<String> gridList = [
    'assets/images/2.jpg',
    'assets/images/3.jpg',
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
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                      icon: const Icon(
                        Icons.chevron_left,
                        size: 30,
                        color: Colors.black54,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: const Text(
                          'Haircut',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54,
                              fontSize: 24),
                        ),
                      ),
                    ),
                  ],
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
      initialChildSize: .9,
      minChildSize: .9,
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

  Widget _buildServiceDesc() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            _buildSpecialist(),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceCat() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        height: 180,
        decoration: const BoxDecoration(),
        child: ListView(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: CatList.map((e) {
            return InkWell(
                child: Container(
              width: MediaQuery.of(context).size.width * .4,
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.darken),
                      image: AssetImage(e.img),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const <Widget>[
                  Text("Child Haircut",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      )),
                  Text("&200",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      )),
                ],
              ),
            ));
          }).toList(),
        ),
      ),
    );
  }

  Widget _buildSpecialist() {
    return Column(
      children: CatList.map((e) {
        return InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(e.img), fit: BoxFit.cover),
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: const [
                          Icon(
                            Icons.star,
                            size: 16,
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
                      Text("View Profile",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                              fontWeight: FontWeight.w400)),
                    ]),
                SizedBox(height: 10),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Jane Cooper",
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.black54,
                              fontWeight: FontWeight.w600)),
                      Icon(
                        Icons.message_rounded,
                        size: 24,
                        color: Colors.black54,
                      ),
                    ]),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButton(
                    child: const Text("Book a visit",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Booking()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: style.appColor,
                      onPrimary: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}

class Item {
  const Item(this.name, this.img);
  final String name;
  final String img;
}
