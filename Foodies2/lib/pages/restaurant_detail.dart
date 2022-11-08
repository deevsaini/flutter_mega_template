/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food2/pages/confirm.dart';
import 'package:food2/pages/item_detail.dart';
import '../components/styles.dart' as style;
import 'package:food2/models/items.dart';

class RestaurantDetail extends StatefulWidget {
  static const String id = 'RestaurantDetail';

  const RestaurantDetail({Key? key}) : super(key: key);

  @override
  _RestaurantDetailState createState() => _RestaurantDetailState();
}

class _RestaurantDetailState extends State<RestaurantDetail>
    with SingleTickerProviderStateMixin {
  int tabID = 1;

  void initState() {
    super.initState();
  }

  final List Foods = [...itemfood.items];

  final List _elements = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/images/banner2.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          _buildContent(),
        ],
      ),
      bottomNavigationBar: _bottomNav(),
    );
  }

  Widget _buildContent() {
    return DraggableScrollableSheet(
      initialChildSize: .7,
      minChildSize: .7,
      builder: (BuildContext context, ScrollController scrollController) {
        return ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                _buildContainer(),
                _buildItems(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildContainer() {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text("HariramBapa Ashram Prasad",
              style: TextStyle(
                  color: Colors.black, fontSize: 16, fontFamily: "semibold")),
          const Text("3 Miles · 309 Bortan Avenue, Bagdana AD 20",
              style: TextStyle(
                  color: Colors.black, fontSize: 12, fontFamily: "medium")),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Rating",
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 12,
                          fontFamily: "medium")),
                  Row(
                    children: const [
                      Icon(Icons.star, size: 14, color: Colors.orange),
                      Text("4.2 (67)",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: "semibold")),
                    ],
                  ),
                ],
              ),
              Column(
                children: const [
                  Text("Ex.Delivery time",
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 12,
                          fontFamily: "medium")),
                  Text("15 mins",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: "semibold")),
                ],
              ),
              Column(
                children: [
                  const Text("Status",
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 12,
                          fontFamily: "medium")),
                  Text("Order by 9.00PM",
                      style: TextStyle(
                          color: Colors.green.shade600,
                          fontSize: 12,
                          fontFamily: "semibold")),
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12),
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Row(
              children: [
                Container(
                  color: style.appColor,
                  child: const Text(" % ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: "semibold")),
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: Text("10%off for orders over Rs200",
                      style: TextStyle(
                          color: style.appColor,
                          fontSize: 12,
                          fontFamily: "semibold")),
                ),
                Text("View T&C",
                    style: TextStyle(
                        color: Colors.blue.shade600,
                        fontSize: 12,
                        fontFamily: "semibold")),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildItems() {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: _elements.map((e) {
                return _buildCatTabs(context, e);
              }).toList(),
            ),
          ),
          _buildBoldFont("Pizza"),
          Container(
            child: Column(
              children: Foods.map((e) {
                return _Items(context, e);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCatTabs(context, index) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      child: InkWell(
        onTap: () {
          setState(() {
            tabID = index.hashCode;
          });
        },
        child: Container(
          padding:
              const EdgeInsets.only(bottom: 10, left: 10, right: 10, top: 5),
          decoration: segmentDecoration(index.hashCode),
          child: Text('Pizza(1)', style: segmentText(index.hashCode)),
        ),
      ),
    );
  }

  segmentDecoration(index) {
    return BoxDecoration(
        border: Border(
            bottom: BorderSide(
                width: 2,
                color: tabID == index.hashCode
                    ? style.appColor
                    : Colors.transparent)));
  }

  segmentText(index) {
    return TextStyle(
        fontFamily: tabID == index.hashCode ? 'bold' : 'semibold',
        color: tabID == index.hashCode ? style.appColor : Colors.grey);
  }

  Widget _buildBoldFont(text) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: style.background,
      width: double.infinity,
      child: Text(
        '$text',
        style: const TextStyle(
            color: Colors.black54, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _bottomNav() {
    return Container(
      height: 70.0,
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 16.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  _settingModalBottomSheetCart(context);
                },
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black54,
                ),
                iconSize: 34.0,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Rs230',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'semibold',
                        fontSize: 20),
                  ),
                  Text(
                    'Rs430',
                    style: TextStyle(
                        color: Colors.black45,
                        fontFamily: 'medium',
                        fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
          ElevatedButton(
            child: const Text(
              "Check Out",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Confirm()));
            },
            style: ElevatedButton.styleFrom(
              primary: style.appColor,
              onPrimary: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _Items(context, e) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                )
              ],
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ItemDetail()));
              },
              child: Image.asset(
                e.image,
                height: 95.0,
                width: 95.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(e.name,
                        style: const TextStyle(
                            color: Colors.black,
                            fontFamily: 'semibold',
                            fontSize: 14)),
                    Row(
                      children: [
                        const Icon(
                          Icons.turned_in_rounded,
                          color: Colors.green,
                          size: 12,
                        ),
                        const SizedBox(width: 5),
                        Text(e.cal,
                            style: const TextStyle(
                                color: Colors.black45, fontSize: 12)),
                      ],
                    ),
                  ],
                ),
                Text(e.desc,
                    style:
                        const TextStyle(color: Colors.black45, fontSize: 12)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(e.price,
                            style: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'semibold',
                                fontSize: 14)),
                        const SizedBox(width: 20),
                        Text(e.mainprice,
                            style: const TextStyle(
                                color: Colors.black45, fontSize: 12)),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          color: Colors.grey,
                          onPressed: () {},
                          icon: const Icon(Icons.remove_circle),
                          iconSize: 30.0,
                        ),
                        const Text(
                          "1",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                          color: style.appColor,
                          onPressed: () {
                            _settingModalBottomSheet(context);
                          },
                          icon: const Icon(Icons.add_circle),
                          iconSize: 30.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCartAll() {
    return Container(
      child: ListView(
        children: [
          _buildCartItem(),
          _buildCartItem(),
          _buildCartItem(),
          _buildCartItem(),
          _buildCartItem(),
        ],
      ),
    );
  }

  Widget _buildCartItem() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            "Vegiiy Pizza",
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontFamily: "semibold"),
          ),
        ),
        _buildCustomItem(),
      ],
    );
  }

  void _settingModalBottomSheetCart(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext bc) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              elevation: 1,
              backgroundColor: Colors.white,
              iconTheme: const IconThemeData(color: Colors.black),
              centerTitle: true,
              automaticallyImplyLeading: false,
              title: const Text(
                "My Cart",
                style: TextStyle(
                    color: Colors.black, fontSize: 16, fontFamily: 'semibold'),
              ),
              leading: IconButton(
                constraints: const BoxConstraints.expand(width: 10),
                icon: const Text(
                  'Clear All',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: style.appColor,
                      fontSize: 11,
                      fontFamily: 'medium'),
                ),
                onPressed: () {},
              ),
              actions: [
                IconButton(
                  icon: const Icon(
                    Icons.close,
                    size: 20,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            body: _buildCartAll(),
            bottomNavigationBar: _bottomNav(),
          );
        });
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext bc) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text("Vegetable Pizza",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: "semibold")),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                Text("Rs.320",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: "semibold")),
                                SizedBox(width: 10),
                                Text("Rs.400",
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 12))
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.turned_in_rounded,
                                  color: Colors.green,
                                  size: 12,
                                ),
                                Text("250 cal",
                                    style: TextStyle(
                                        color: Colors.black45, fontSize: 12)),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          _buildCustomItem(),
                          Divider(
                              thickness: 1, height: 2, color: Colors.black12),
                          _buildCustomItem(),
                          Divider(
                              thickness: 1, height: 2, color: Colors.black12),
                          const SizedBox(height: 10),
                        ],
                      )),
                ],
              ),
            ),
            bottomNavigationBar: Container(
              height: 110,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    color: Colors.white,
                    width: double.infinity,
                    child: ElevatedButton(
                      child: const Text("Add New Item",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "medium",
                          )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ItemDetail()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: style.appColor,
                        onPrimary: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    color: Colors.white,
                    width: double.infinity,
                    child: ElevatedButton(
                      child: const Text("Update Quantity",
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: "medium",
                          )),
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: style.background,
                        onPrimary: Colors.black,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _settingModalBottomSheetaaaaaa(context) {
    showModalBottomSheet(
        backgroundColor: Colors.white,
        context: context,
        builder: (BuildContext bc) {
          return Scaffold(
            backgroundColor: Colors.black,
            body: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text("Vegetable Pizza",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: "semibold")),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Text("Rs.320",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: "semibold")),
                              SizedBox(width: 10),
                              Text("Rs.400",
                                  style: TextStyle(
                                      color: Colors.black45, fontSize: 12))
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(
                                Icons.turned_in_rounded,
                                color: Colors.green,
                                size: 12,
                              ),
                              Text("250 cal",
                                  style: TextStyle(
                                      color: Colors.black45, fontSize: 12)),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        _buildCustomItem(),
                        Divider(thickness: 1, height: 2, color: Colors.black12),
                        _buildCustomItem(),
                        Divider(thickness: 1, height: 2, color: Colors.black12),
                        const SizedBox(height: 10),
                      ],
                    )),
              ],
            ),
            bottomNavigationBar: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  color: Colors.white,
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text("Add New Item",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "medium",
                        )),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ItemDetail()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: style.appColor,
                      onPrimary: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  color: Colors.white,
                  width: double.infinity,
                  child: ElevatedButton(
                    child: const Text("Update Quantity",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "medium",
                        )),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: style.background,
                      onPrimary: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  Widget _buildCustomItem() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(left: 16, right: 16, top: 5),
      child: Column(
        children: [
          Row(
            children: const [
              Expanded(
                child: Text(
                    "Medium size, pan crust, garlic salad, capsicum, onion, mashrom",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.black45, fontSize: 12)),
              ),
              Text("Edit",
                  style: TextStyle(
                      color: Colors.blue, fontSize: 12, fontFamily: "medium")),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              Container(
                color: Colors.black54,
                child: const Text(" % ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: "semibold")),
              ),
              const SizedBox(width: 5),
              const Text("Note to Restauratn",
                  style: TextStyle(color: Colors.black45, fontSize: 10)),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Text("Rs300",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'semibold',
                          fontSize: 14)),
                  SizedBox(width: 10),
                  Text("Rs450",
                      style: TextStyle(color: Colors.black45, fontSize: 12)),
                ],
              ),
              Row(
                children: <Widget>[
                  InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.remove_circle,
                        color: Colors.black12,
                        size: 30,
                      )),
                  const SizedBox(width: 10),
                  const Text(
                    "1",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.add_circle,
                        color: style.appColor,
                        size: 30,
                      ))
                ],
              ),
            ],
          ),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
