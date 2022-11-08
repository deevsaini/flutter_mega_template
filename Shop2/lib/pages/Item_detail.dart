/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shop2/widget/appbar.dart';
import 'package:shop2/widget/NavBar.dart';
import 'package:shop2/widget/footer.dart';
import '../components/styles.dart';

class ItemDetail extends StatefulWidget {
  static const String id = 'ItemDetail';

  const ItemDetail({Key? key}) : super(key: key);

  @override
  _ItemDetailState createState() => _ItemDetailState();
}

class _ItemDetailState extends State<ItemDetail> {
  int _current = 0;
  int tabID = 1;
  final CarouselController _controller = CarouselController();

  final List _elements = [
    '1',
    '2',
    '3',
  ];
  List<String> imgList = [
    'assets/images/11.jpg',
    'assets/images/12.jpg',
    'assets/images/13.jpg',
    'assets/images/14.jpg',
  ];

  List<String> gallaryList = [
    'assets/images/collection.jpg',
    'assets/images/collection1.jpg',
  ];

  List<Item> gridList = <Item>[
    const Item('assets/images/11.jpg', 'Black Suit',
        'reversible angora cardigan', '\$120'),
    const Item('assets/images/12.jpg', 'Suit', ' angora cardo bag', '\$250'),
    const Item('assets/images/13.jpg', 'Wood Jacket', 'angora cardo', '\$320'),
    const Item(
        'assets/images/14.jpg', 'Pajama', 'reversible angora cardo', '\$410'),
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
      child: Container(
        child: Column(
          children: [
            _itemCarausl(),
            ItemDetail(),
            SizedBox(height: 40),
            centerHeading("You may also like"),
            sepLine(),
            SizedBox(height: 30),
            grid2col(),
            footerMain(),
          ],
        ),
      ),
    );
  }

  Widget _buildColor(context, index) {
    return Container(
      padding: const EdgeInsets.only(left: 8),
      child: InkWell(
        onTap: () {
          setState(() {
            tabID = index.hashCode;
          });
        },
        child: Container(
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
              border: Border.all(
                  width: 2,
                  color:
                      tabID == index.hashCode ? appColor : Colors.transparent)),
          child: CircleAvatar(
            radius: 10,
            backgroundColor: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildSize(context, index) {
    return Container(
      padding: const EdgeInsets.only(left: 8),
      child: InkWell(
        onTap: () {
          setState(() {
            tabID = index.hashCode;
          });
        },
        child: CircleAvatar(
          radius: 16,
          backgroundColor: tabID == index.hashCode ? appColor : backgroundColor,
          child: Container(
            child: Text('S', style: segmentText(index.hashCode)),
          ),
        ),
      ),
    );
  }

  segmentText(index) {
    return TextStyle(
        fontFamily: tabID == index.hashCode ? 'bold' : 'semibold',
        color: tabID == index.hashCode ? Colors.white : Colors.grey);
  }

  Widget _itemCarausl() {
    return Builder(
      builder: (context) {
        return Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  height: 600,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }
                  // autoPlay: true,
                  ),
              items: imgList
                  .map((item) => Container(
                        padding: EdgeInsets.all(16),
                        child: Center(
                            child: Image.asset(
                          item,
                          fit: BoxFit.cover,
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * .8,
                        )),
                      ))
                  .toList(),
              carouselController: _controller,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 8.0,
                    height: 8.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(_current == entry.key ? 0.4 : 0.2)),
                  ),
                );
              }).toList(),
            )
          ],
        );
      },
    );
  }

  Widget ItemDetail() {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildTitle("Bleand Coat"),
                  Icon(Icons.favorite_border, color: appColor)
                ],
              ),
              _buildtext("Recycle Boucle Knit Cardigan Pink"),
              _buildprice("\$140"),
              _buildSelect(),
              _buildAddBtn(),
              _buildTitle("Gallery"),
              Column(
                children: gallaryList.map((e) {
                  return Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Image.asset(
                      e,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width * 1,
                    ),
                  );
                }).toList(),
              ),
              _buildTitle("Materials"),
              _buildtext(
                  "We work with monitoring programmes to ensure compliance with safety, health and quality standards for our products."),
              _buildTitle("Care"),
              _buildtext(
                  "To keep your jackets and coats clean, you only need to freshen them up and go over them with cloth or a clothes brush. If you need to dry clean a garment, look for a dry cleaner that uses technologies that are respectful of the environment."),
              ListTile(
                leading: Icon(Icons.not_accessible_sharp),
                title: Text('Do not use beach'),
              ),
              ListTile(
                leading: Icon(Icons.warning_amber_sharp),
                title: Text('Do not tumble dry'),
              ),
              ListTile(
                leading: Icon(Icons.warning_amber_sharp),
                title: Text('Dry clean with tetrachloroethylene'),
              ),
              ListTile(
                leading: Icon(Icons.warning_amber_sharp),
                title: Text('Iron at a maximum of 100/230'),
              ),
              _buildTitle("Care"),
            ],
          ),
        ),
        ExpansionTile(
          title: _buildBoldText("Free Flat Rate Shipping"),
          children: [
            ListTile(
              title:
                  Text("Estimated to be delivered on 09/11/2022 - 12/11/2022"),
            ),
          ],
        ),
        ExpansionTile(
          title: _buildBoldText("COD Policy"),
          children: [
            ListTile(
              title:
                  Text("Estimated to be delivered on 09/11/2022 - 12/11/2022"),
            ),
          ],
        ),
        ExpansionTile(
          title: _buildBoldText("Return Policy"),
          children: [
            ListTile(
              title:
                  Text("Estimated to be delivered on 09/11/2022 - 12/11/2022"),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildSelect() {
    return Row(
      children: [
        Expanded(
            child: Row(
          children: [
            Text("Color"),
            Row(
              children: _elements.map((e) {
                return _buildColor(context, e);
              }).toList(),
            ),
          ],
        )),
        Expanded(
            child: Row(
          children: [
            Text("size"),
            Row(
              children: _elements.map((e) {
                return _buildSize(context, e);
              }).toList(),
            ),
          ],
        )),
      ],
    );
  }

  Widget _buildAddBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        child: Text("+ ADD TO BASKET".toUpperCase(),
            style: TextStyle(fontSize: 16)),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: appColor2,
          onPrimary: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 10),
        ),
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
            childAspectRatio: 55 / 100,
            physics: const ScrollPhysics(),
            children: gridList.map((e) {
              return InkWell(
                onTap: () {},
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 220,
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
                    SizedBox(height: 8),
                    Text(e.name,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'medium',
                          color: Colors.black,
                        )),
                    Text(e.detail,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        )),
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

  Widget _buildTitle(val) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16, top: 16),
      child: Text(
        val.toUpperCase(),
        style: TextStyle(color: Colors.black87, fontSize: 16, letterSpacing: 3),
      ),
    );
  }

  Widget _buildtext(val) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Text(
        val,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _buildBoldText(val) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Text(
        val,
        style: TextStyle(
          fontFamily: 'medium',
          color: Colors.black87,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget _buildprice(val) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        val,
        style: TextStyle(color: appColor, fontSize: 16),
      ),
    );
  }
}

class Item {
  const Item(
    this.img,
    this.name,
    this.detail,
    this.price,
  );
  final String img;
  final String name;
  final String detail;
  final String price;
}
