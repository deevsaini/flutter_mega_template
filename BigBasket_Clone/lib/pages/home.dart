/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:bigbasket/pages/product-detail.dart';
import 'package:bigbasket/pages/profile.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class HomePage extends StatefulWidget {
    HomePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Home';

    @override
    State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

    List<String> slider1 = [
        'assets/images/slide_1.jpg',
        'assets/images/slide_2.jpg',
        'assets/images/slide_3.jpg',
        'assets/images/slide_4.jpg',
        'assets/images/slide_5.jpg',
    ];

    List<String> slider2 = [
        'assets/images/slide_6.jpg',
        'assets/images/slide_7.jpg',
        'assets/images/slide_8.jpg',
        'assets/images/slide_9.jpg',
        'assets/images/slide_10.jpg',
        'assets/images/slide_11.jpg',
        'assets/images/slide_12.jpg',
    ];

    List<String> slider3 = [
        'assets/images/slide_13.jpg',
        'assets/images/slide_14.jpg',
        'assets/images/slide_15.jpg',
        'assets/images/slide_16.jpeg',
        'assets/images/slide_17.jpg',
    ];

    List<String> payments = [
      'assets/images/pay_1.jpg',
      'assets/images/pay_2.jpg',
      'assets/images/pay_3.jpg',
      'assets/images/pay_4.jpg',
      'assets/images/pay_5.jpg',
      'assets/images/pay_6.jpg',
      'assets/images/pay_7.jpg',

    ];

    List<String> qty = [
        '150 g', '170 g'
    ];

    String dropdownValue = '150 g';

    List<Item> products = <Item>[
        Item('assets/images/pro_1.jpg', 'Testies - Nacho Chips - Jalapeno', '\$90', '\$45'),
        Item('assets/images/pro_2.jpg', 'BB Popular - Almond/Badam', '\$90', '\$45'),
        Item('assets/images/pro_3.jpg', 'Testies - Nacho Chips - Cheese', '\$90', '\$45'),
        Item('assets/images/pro_4.jpg', 'BB Royal - Cardamom Green/Elakki', '\$90', '\$45'),
        Item('assets/images/pro_5.jpg', 'BORGES - Extra Virgin Olive Oil', '\$90', '\$45'),
        Item('assets/images/pro_6.jpg', 'BORGES - Extra Virgin Olive Oil', '\$90', '\$45'),
        Item('assets/images/pro_7.jpg', 'BB Royal - Idli - Sooji', '\$90', '\$45'),
        Item('assets/images/pro_8.jpg', 'BB Home - Spin Mop Bucket-360', '\$90', '\$45'),
    ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 208, 208, 208),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120),
          child: _buildAppBar(),
        ),
        body: _buildBody(context),
      );
    }

    Widget _buildAppBar() {
    return AppBar(
      backgroundColor: style.appColor,
      elevation: 0,
      centerTitle: true,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu),
      ),
      title: Text('Home'),
      titleTextStyle: style.whitePageTitle(),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => new ProfilePage())
              );
            },
            icon: Icon(Icons.account_circle_outlined)
        )
      ],
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
          child: TextField(
            decoration: style.searchInputBox('Search Products'),
          ),
        ),
      ),
    );
  }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Column(
                    children: [
                        Container(
                            width: double.infinity,
                            height: 120,
                            margin: EdgeInsets.only(bottom: 8),
                            decoration: backImage('assets/images/small_1.jpg'),
                        ),
                        Container(
                            width: double.infinity,
                            height: 210,
                            margin: EdgeInsets.only(bottom: 8),
                            decoration: backImage('assets/images/off_banner1.jpg'),
                        ),
                        Container(
                            width: double.infinity,
                            height: 120,
                            margin: EdgeInsets.only(bottom: 8),
                            decoration: backImage('assets/images/small_2.jpg'),
                        ),
                        Container(
                          width: double.infinity,
                          height: 210,
                          margin: EdgeInsets.only(bottom: 8),
                          child: CarouselSlider(
                            options: CarouselOptions(
                              autoPlay: true,
                              enlargeCenterPage: false,
                              viewportFraction: 1.0,
                              enlargeStrategy: CenterPageEnlargeStrategy.height,
                            ),
                            items: slider1.map((item) => Container(
                              width: double.infinity,
                              height: 210,
                              decoration: backImage(item),
                            )).toList(),
                          ),
                        ),
                        _buildTitleRow('Shop By Category'),
                        GridView.count(
                            crossAxisCount: 3,
                            physics: ScrollPhysics(),
                            shrinkWrap: true,
                            children: List.generate([1,2,3,4,5,6,7,8,9].length, (index) {
                                return Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            width: 1,
                                            color: (Colors.grey[300])!
                                        ),
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/cat_img.jpg')
                                        )
                                    ),
                                );
                            }),
                        ),
                        SizedBox(height: 8),
                        Container(
                            width: double.infinity,
                            height: 210,
                            margin: EdgeInsets.only(bottom: 8),
                            child: CarouselSlider(
                            options: CarouselOptions(
                              autoPlay: true,
                              enlargeCenterPage: false,
                              viewportFraction: 1.0,
                              enlargeStrategy: CenterPageEnlargeStrategy.height,
                            ),
                            items: slider2.map((item) => Container(
                              width: double.infinity,
                              height: 210,
                              decoration: backImage(item),
                            )).toList(),
                          ),
                        ),
                        Container(
                            width: double.infinity,
                            height: 210,
                            margin: EdgeInsets.only(bottom: 8),
                            decoration: backImage('assets/images/off_banner2.jpg'),
                        ),
                        Container(
                          width: double.infinity,
                          height: 400,
                          margin: EdgeInsets.only(bottom: 8),
                          padding: EdgeInsets.only(top: 10, right: 10, bottom: 10),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/grey_back.jpg'),
                                  fit: BoxFit.cover,
                                  alignment: Alignment.centerLeft
                              )
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 110,
                                height: 180,
                                color: Colors.white,
                                child: Center(
                                  child: RichText(
                                    textAlign: TextAlign.center,
                                    text: TextSpan(
                                      text: 'Flat \n',
                                      style: TextStyle(fontSize: 18, color: Colors.black, fontFamily: 'medium'),
                                      children: <TextSpan>[
                                        TextSpan(text: '50% ', style: TextStyle(color: Colors.red)),
                                        TextSpan(text: 'Off'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ListView(
                                  shrinkWrap: true,
                                  physics: ScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  children: List.generate(products.length, (index) {
                                    return _buildSingleProduct(products[index]);
                                  }),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 210,
                          margin: EdgeInsets.only(bottom: 8),
                          child: CarouselSlider(
                            options: CarouselOptions(
                              autoPlay: true,
                              enlargeCenterPage: false,
                              viewportFraction: 1.0,
                              enlargeStrategy: CenterPageEnlargeStrategy.height,
                            ),
                            items: slider3.map((item) => Container(
                              width: double.infinity,
                              height: 210,
                              decoration: backImage(item),
                            )).toList(),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 210,
                          margin: EdgeInsets.only(bottom: 8),
                          decoration: backImage('assets/images/off_banner3.jpg'),
                        ),
                      Container(
                        width: double.infinity,
                        height: 70,
                        margin: EdgeInsets.only(bottom: 8),
                        child: CarouselSlider(
                          options: CarouselOptions(
                            autoPlay: true,
                            enlargeCenterPage: false,
                            viewportFraction: 1.0,
                            enlargeStrategy: CenterPageEnlargeStrategy.height,
                          ),
                          items: payments.map((item) => Container(
                            width: double.infinity,
                            height: 210,
                            decoration: backImage(item),
                          )).toList(),
                        ),
                      ),

                        Container(
                          width: double.infinity,
                          height: 210,
                          margin: EdgeInsets.only(bottom: 8),
                          decoration: backImage('assets/images/off_banner4.jpg'),
                        ),

                        Container(
                          width: double.infinity,
                          height: 210,
                          margin: EdgeInsets.only(bottom: 8),
                          decoration: backImage('assets/images/off_banner5.jpg'),
                        ),

                        Container(
                          width: double.infinity,
                          height: 210,
                          margin: EdgeInsets.only(bottom: 8),
                          decoration: backImage('assets/images/off_banner6.jpg'),
                        ),

                        Container(
                          width: double.infinity,
                          height: 210,
                          margin: EdgeInsets.only(bottom: 8),
                          decoration: backImage('assets/images/off_banner7.jpg'),
                        ),
                    ],
                ),
            ),
        );
    }

    Widget _buildTitleRow(val) {
        return Container(
        padding: EdgeInsets.all(16),
        color: Color.fromARGB(255, 219, 219, 219),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$val',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'semi-bold'
              ),
            ),
            Image.asset('assets/images/cat_sasta.png', width: 50)
          ],
        )
    );
    }

    backImage(val) {
        return BoxDecoration(
            image: DecorationImage(
                image: AssetImage(val),
                fit: BoxFit.cover
            )
        );
    }

  Widget _buildSingleProduct(product) {
    return InkWell(
        onTap: () {
          Navigator.push(context, new MaterialPageRoute(
              builder: (context) => new ProductDetailPage())
          );
        },
        child: Container(
          width: 172,
          margin: EdgeInsets.only(right: 16),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
              color: Colors.white
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(product.img),
                    Text(product.name,
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'medium'
                      ),
                    ),
                    SizedBox(height: 8),
                    _buildDropDown(),
                    SizedBox(height: 8),
                    RichText(
                      text: TextSpan(
                        text: product.price,
                        style: TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'semi-bold'),
                        children: <TextSpan>[
                          TextSpan(text: ' '),
                          TextSpan(text: product.offPrice, style: TextStyle(color: Colors.grey, fontSize: 14, fontFamily: 'regular')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('ADD'),
                  style: style.addButton(),
                ),
              )
            ],
          ),
        ),
    );
  }

  Widget _buildDropDown() {
    return Container(
        width: double.infinity,
        height: 30,
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        decoration:  style.outlineDecoration(),
        child: DropdownButton<String>(
          isExpanded: true,
          value: dropdownValue,
          icon: const Icon(Icons.arrow_drop_down),
          elevation: 16,
          style: const TextStyle(fontFamily: 'regular', color: Colors.black),
          underline: SizedBox(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: qty.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
              ),
            );
          }).toList(),
        )
    );
  }
}

class Item {
  Item(this.img, this.name, this.price, this.offPrice);
  final String img;
  final String name;
  final String price;
  final String offPrice;

}