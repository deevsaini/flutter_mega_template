/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shop2/pages/Item_detail.dart';
import 'package:shop2/pages/collection.dart';
import 'package:shop2/widget/appbar.dart';
import 'package:shop2/widget/NavBar.dart';
import 'package:shop2/widget/footer.dart';
import '../components/styles.dart';

class Home extends StatefulWidget {
  static const String id = 'Home';

  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tabID = 1;
  List<String> Banner = [
    'assets/images/11.jpg',
    'assets/images/12.jpg',
    'assets/images/13.jpg',
    'assets/images/14.jpg',
  ];

  List<Item> gridList = <Item>[
    const Item('assets/images/11.jpg', 'IN reversible angora cardo big basket',
        '\$120'),
    const Item(
        'assets/images/12.jpg', '2N reversible angora cardo bag', '\$250'),
    const Item('assets/images/13.jpg', 'angora cardo', '\$320'),
    const Item('assets/images/14.jpg', 'reversible angora cardo', '\$410'),
  ];

  List<Services> serviceList = <Services>[
    Services('assets/images/icon/fast.png',
        'fast shipping. Free on orders over \$30.'),
    Services('assets/images/icon/heart.png',
        'Fast shipping. Free on orders over \$30'),
    Services('assets/images/icon/high.png',
        'Unique designs and high-quality materials.'),
    Services('assets/images/icon/sustain.png',
        'Sustainable process from start to finish.'),
  ];

  final List _elements = [
    'All',
    'Apparel',
    'Dress',
    'Tshirt',
    'Bag',
  ];

  final List logos = [
    'PADA',
    'GUCCI',
    'BlueBeri',
  ];

  final List chip = [
    '#2022',
    '#spring',
    '#collection',
    '#fall',
    '#dress',
    '#autumncollection',
    '#openfashion',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Colors.white,
      appBar: BaseAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _banner(),
          SizedBox(height: 40),
          centerHeading("New Arrival"),
          sepLine(),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: _elements.map((e) {
              return _buildCatTabs(context, e);
            }).toList(),
          ),
          SizedBox(height: 15),
          grid2col(),
          SizedBox(height: 15),
          textButton('Explore More'),
          SizedBox(height: 30),
          sepLine(),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: logos.map((e) {
              return _buildlogos(e);
            }).toList(),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: logos.map((e) {
              return _buildlogos(e);
            }).toList(),
          ),
          SizedBox(height: 15),
          sepLine(),
          SizedBox(height: 40),
          centerHeading("Collections"),
          SizedBox(height: 30),
          _buildCollection(),
          SizedBox(height: 40),
          centerHeading("Just for you"),
          sepLine(),
          SizedBox(height: 15),
          scrollItem(),
          SizedBox(height: 40),
          centerHeading("@Trending"),
          SizedBox(height: 15),
          Wrap(
            children: chip.map((e) {
              return _buildChip(e);
            }).toList(),
          ),
          SizedBox(height: 15),
          Container(color: backgroundColor, child: _buildService()),
          SizedBox(height: 40),
          centerHeading("Follow Us"),
          SizedBox(height: 5),
          IconButton(
            icon: ImageIcon(
              AssetImage("assets/images/instagram.png"),
              color: Colors.black54,
              size: 24,
            ),
            onPressed: () {},
          ),
          SizedBox(height: 15),
          instagramProfile(),
          SizedBox(height: 30),
          footerMain(),
        ],
      ),
    );
  }

  Widget _banner() {
    return Builder(
      builder: (context) {
        final double height = MediaQuery.of(context).size.height * .8;

        return CarouselSlider(
          options: CarouselOptions(
            height: height,

            viewportFraction: 1.0,
            enlargeCenterPage: false,
            // autoPlay: true,
          ),
          items: Banner.map((item) => Container(
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(item), fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * .9,
                      height: MediaQuery.of(context).size.width * .7,
                      child: Text("Luxury fashion & Accessories".toUpperCase(),
                          style: TextStyle(
                              color: Colors.black38,
                              fontFamily: 'bold',
                              fontStyle: FontStyle.italic,
                              letterSpacing: 3,
                              fontSize: 38,
                              height: 1.5)),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 40),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Collection()));
                        },
                        child: Text("Explore collection".toUpperCase(),
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 3,
                              fontSize: 14,
                            )),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black45),
                          elevation: MaterialStateProperty.all(15),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 12)),
                        ),
                      ),
                    ),
                  ],
                ),
              )).toList(),
        );
      },
    );
  }

  Widget _buildCatTabs(context, index) {
    return Container(
      child: InkWell(
        onTap: () {
          setState(() {
            tabID = index.hashCode;
          });
        },
        child: Container(
          padding: EdgeInsets.only(bottom: 5),
          decoration: segmentDecoration(index.hashCode),
          child: Text(index, style: segmentText(index.hashCode)),
        ),
      ),
    );
  }

  segmentDecoration(index) {
    return BoxDecoration(
        border: Border(
            bottom: BorderSide(
                width: 1,
                color:
                    tabID == index.hashCode ? appColor : Colors.transparent)));
  }

  segmentText(index) {
    return TextStyle(
        fontFamily: tabID == index.hashCode ? 'medium' : 'regular',
        fontSize: 16,
        color: tabID == index.hashCode ? appColor2 : Colors.grey);
  }

  Widget scrollItem() {
    return Container(
      height: 400,
      child: ListView(
        physics: const ScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: gridList.map((e) {
          return Container(
            padding: EdgeInsets.only(top: 16, left: 6, right: 6),
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .65,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(e.img), fit: BoxFit.fill),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * .6,
                  child: Text(e.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      )),
                ),
                SizedBox(height: 5),
                Text(e.price,
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'medium',
                      color: appColor,
                    )),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildlogos(text) {
    return InkWell(
      onTap: () {},
      child: Container(
        child: Text(text, style: TextStyle(fontSize: 16, color: Colors.black)),
      ),
    );
  }

  Widget _buildChip(text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Chip(
        label: Text(text),
      ),
    );
  }

  Widget _buildCollection() {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/collection.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Container(
              padding: EdgeInsets.only(right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("October",
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'medium',
                        fontSize: 28,
                      )),
                  Text("Collection".toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 3,
                        fontSize: 16,
                      )),
                ],
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(35),
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Container(
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/collection1.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Container(
              padding: EdgeInsets.only(right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("Autumn",
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'medium',
                        fontSize: 28,
                      )),
                  Text("Collection".toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 3,
                        fontSize: 16,
                      )),
                ],
              ),
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/collection.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.play_arrow,
                    size: 24,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black45),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildService() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text("logo",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                )),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .7,
            child: Text(
                "Making a luxurious lifestyle accessible for a generous group of women is our daily drive.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                )),
          ),
          SizedBox(height: 30),
          sepLine(),
          SizedBox(height: 30),
          gridService(),
          SizedBox(height: 30),
          sepLine(),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget grid2col() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            shrinkWrap: true,
            childAspectRatio: 54 / 100,
            physics: const ScrollPhysics(),
            children: gridList.map((e) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ItemDetail()));
                },
                child: Column(
                  children: [
                    Container(
                      height: 230,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(e.img), fit: BoxFit.cover),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 5,
                            left: 0,
                            child: Container(
                              color: appColor,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 2),
                              child: const Text("Popular",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Text(e.name,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                          )),
                    ),
                    Text(e.price,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'medium',
                          color: appColor,
                        )),
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }

  Widget gridService() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            children: serviceList.map((e) {
              return InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Image.asset(
                      e.img,
                      width: 50,
                      height: 50,
                    ),
                    Text(
                      e.name,
                      textAlign: TextAlign.center,
                      style:
                          const TextStyle(fontSize: 15, color: Colors.black54),
                    ),
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }

  Widget instagramProfile() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            children: gridList.map((e) {
              return InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      height: 155,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(e.img),
                          fit: BoxFit.cover,
                          colorFilter: new ColorFilter.mode(
                            Colors.grey,
                            BlendMode.saturation,
                          ),
                        ),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child: Text("@initappz",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
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
  const Item(
    this.img,
    this.name,
    this.price,
  );
  final String img;
  final String name;
  final String price;
}

class Services {
  const Services(
    this.img,
    this.name,
  );
  final String img;
  final String name;
}
