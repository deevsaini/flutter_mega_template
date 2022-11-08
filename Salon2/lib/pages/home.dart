/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon2/pages/mens.dart';
import 'package:salon2/pages/pick-stylist.dart';
import 'package:salon2/pages/slot.dart';
// import '../components/styles.dart' as style;

class Home extends StatefulWidget {
  static const String id = 'Home';

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Item> services = <Item>[
    const Item('assets/images/man.png', 'Mens'),
    const Item('assets/images/woman.png', 'woman'),
    const Item('assets/images/boy.png', 'boy'),
    const Item('assets/images/girl.png', 'girl'),
  ];

  List<Item> stylist = <Item>[
    Item('assets/images/banner.jpg', 'Jonh Doe'),
    Item('assets/images/barber.jpg', 'Anna Bella'),
    Item('assets/images/beard.jpg', 'Snowborn'),
    Item('assets/images/beard2.jpg', 'jack Proter'),
    Item('assets/images/profile2.jpg', 'Dobo Doe'),
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSizeWidth = MediaQuery.of(context).size.width;
    final screenSizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.short_text,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black87),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _header(),
              _searchField(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Container(
                    height: screenSizeHeight * .2,
                    width: screenSizeWidth,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        const SizedBox(width: 16),
                        _scrollBanner("assets/images/profile2.jpg"),
                        const SizedBox(width: 16),
                        _scrollBanner("assets/images/profile2.jpg"),
                      ],
                    )),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text("Select Category",
                    style: TextStyle(fontSize: 18, fontFamily: "bold")),
              ),
              _buildCatGrid(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Expanded(
                        child: Text("Favorite Stylist",
                            style: TextStyle(fontSize: 18, fontFamily: "bold")),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PickStylist()));
                          },
                          child: const Text("See All",
                              style: TextStyle(color: Colors.black54)))
                    ]),
              ),
              _buildStylist()
            ],
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            children: const [
              Icon(
                Icons.location_on_outlined,
                color: Colors.black,
              ),
              Text(" Chennai, India,",
                  style: TextStyle(fontSize: 16, fontFamily: "medium")),
            ],
          ),
          const Text("Good Morning!",
              style: TextStyle(fontSize: 22, fontFamily: "bold")),
        ],
      ),
    );
  }

  Widget _searchField() {
    return Container(
      height: 55,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(13)),
        border: Border.all(width: 1.0, color: Colors.black26),
      ),
      child: const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          border: InputBorder.none,
          hintText: "what you are looking for?",
          hintStyle: TextStyle(fontSize: 16, color: Colors.black26),
          suffixIcon: SizedBox(
              width: 50, child: Icon(Icons.search, color: Colors.black26)),
        ),
      ),
    );
  }

  Widget _scrollBanner(image) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.4), BlendMode.darken),
              image: AssetImage(image),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Text("Groomy",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              )),
          Text("Stylist",
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              )),
        ],
      ),
    );
  }

  Widget _buildCatGrid() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        childAspectRatio: 65 / 100,
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        children: services.map((e) {
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Category()));
            },
            child: Column(
              children: <Widget>[
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0, color: Colors.black26),
                    borderRadius: const BorderRadius.all(Radius.circular(15.0)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        margin: const EdgeInsets.only(bottom: 10),
                        decoration: avatarImage(e.img),
                      ),
                      Text(
                        e.text,
                        style:
                            const TextStyle(fontSize: 12, fontFamily: 'medium'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildStylist() {
    return Container(
      height: 200,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: ScrollPhysics(),
        children: stylist.map((e) {
          return Container(
            margin: EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 150,
                  width: 130,
                  margin: EdgeInsets.only(bottom: 5),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(e.img),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
                Text(
                  'Jonh Doe',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'bold',
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  avatarImage(val) {
    return BoxDecoration(
      image: DecorationImage(image: AssetImage(val)),
    );
  }
}

class Item {
  const Item(this.img, this.text);
  final String img;
  final String text;
}
