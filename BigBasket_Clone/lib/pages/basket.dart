/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:bigbasket/pages/add-address.dart';
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class BasketPage extends StatefulWidget {
    BasketPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Basket';

    @override
    State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {

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

    List<String> qty = [
        '150 g', '170 g'
    ];

    String dropdownValue = '150 g';

    String currentTabID = 'Best Deals';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Color.fromARGB(255, 200, 200, 200),
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(56),
                child: _buildAppBar(),
            ),
            body: _buildBody(context),
            bottomNavigationBar: _buildBottomContainer(),
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
                onPressed: () { },
                icon: Icon(Icons.menu),
            ),
            title: Text('Review Basket'),
            titleTextStyle: style.whitePageTitle(),
            actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search_outlined)
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert)
                )
            ],
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                child: Column(
                    children: [
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            color: Colors.white,
                            child: Row(
                                children: [
                                    Icon(Icons.location_on_outlined, size: 16),
                                    Padding(
                                        padding: EdgeInsets.only(left: 3, right: 3),
                                        child: Text('364001, Bhavnagar-364001'),
                                    ),
                                    Icon(Icons.keyboard_arrow_down, size: 20),
                                ],
                            ),
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            color: style.appBackColor,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                    Text('Bakery, Cakes & Dairy',
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 74, 74, 74),
                                            fontFamily: 'semi-bold'
                                        ),
                                    ),
                                    Text('2 Items',
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 143, 143, 143),
                                            fontFamily: 'semi-bold'
                                        ),
                                    )
                                ],
                            ),
                        ),
                        Container(
                            child: ListView(
                                shrinkWrap: true,
                                physics: ScrollPhysics(),
                                children: List.generate(products.sublist(0, 2).length, (index) {
                                    return _buildSingleCartItem(products[index]);
                                }),
                            ),
                        ),
                        Container(
                            padding: EdgeInsets.all(16),
                            margin: EdgeInsets.only(top: 16, bottom: 16),
                            color: Colors.white,
                            child: Column(
                                children: [
                                    Text('Saved For Later Items',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'medium',
                                            color: style.appColor
                                        ),
                                    ),
                                    SizedBox(height: 16),
                                    Text('Swipe to save products in your basket to purchase later',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12
                                        ),
                                    ),
                                    SizedBox(height: 10),
                                    Text('Unavailable items from checkout will checkout will automatically appear here',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey
                                        ),
                                    ),
                                    SizedBox(height: 20),
                                    Image.asset('assets/images/file.png', width: 80)
                                ],
                            ),
                        ),
                        Container(
                            color: Colors.white,
                            width: double.infinity,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Padding(
                                        padding: EdgeInsets.all(16),
                                        child: Text('Before You Checkout',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'medium'
                                            ),
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        height: 400,
                                        child: Row(
                                            children: [
                                                _buildTabContainer(),
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
                                ],
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    Widget _buildSingleCartItem(product) {
        return Container(
          padding: EdgeInsets.all(16),
          decoration: style.borderBottom(),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 120,
                    width: 110,
                    decoration: style.outlineDecoration(),
                    child: Image.asset(product.img),
                  ),
                  Expanded(
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(product.name,
                                  style: TextStyle(
                                      fontFamily: 'medium',
                                      fontSize: 16
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text('500 ml - Pouch',
                                  style: greyLabel(),
                                ),
                                Text(product.price,
                                  style: greyLabel(),
                                ),
                                Text(product.offPrice,
                                  style: TextStyle(
                                      fontFamily: 'semi-bold',
                                      fontSize: 14
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 98,
                                height: 32,
                                decoration: redBorder(),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 32,
                                      child: InkWell(
                                        onTap: () {},
                                        child: Icon(
                                            Icons.remove, size: 16,
                                            color: style.appRed
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 32,
                                      height: 32,
                                      color: style.appRed,
                                      child: Center(
                                        child: Text('2',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontFamily: 'semi-bold'
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                        width: 32,
                                        child: InkWell(
                                          onTap: () {},
                                          child: Icon(
                                              Icons.add, size: 16,
                                              color: style.appRed
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              )
                          ),
                        ],
                      )
                  )
                ],
              ),
            ],
          ),
        );
    }

    greyLabel() {
        return TextStyle(
            color: Colors.grey,
            fontSize: 14
        );
    }

    redBorder() {
        return BoxDecoration(
            border: Border.all(
                width: 1,
                color: style.appRed
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(3)
            )
        );
    }

    Widget _buildTabContainer() {
        return Container(
          width: 110,
          margin: EdgeInsets.only(right: 12),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    currentTabID = 'Best Deals';
                  });
                },
                child: Container(
                  width: 110,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: tabDecoration('Best Deals'),
                  child: Text('Best Deals'),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentTabID = 'Top Offers';
                  });
                },
                child: Container(
                  width: 110,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: tabDecoration('Top Offers'),
                  child: Text('Top Offers'),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    currentTabID = 'Essentials';
                  });
                },
                child: Container(
                  width: 110,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  decoration: tabDecoration('Essentials'),
                  child: Text('Essentials'),
                ),
              ),
              InkWell(
                  onTap: () {
                    setState(() {
                      currentTabID = 'Quick Bites';
                    });
                  },
                  child: Container(
                    width: 110,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    decoration: tabDecoration('Quick Bites'),
                    child: Text('Quick Bites'),
                  )
              ),
            ],
          ),
        );
    }

    tabDecoration(val) {
        return BoxDecoration(
            color: Color.fromARGB(255, 247, 247, 247),
            border: Border(
                left: BorderSide(
                    width: 4,
                    color: val == currentTabID ? style.appRed : Colors.transparent
                ),
                top: BorderSide(
                    width: 1,
                    color: val == currentTabID ? Color.fromARGB(255, 241, 208, 208) : Colors.transparent
                ),
                right: BorderSide(
                    width: 1,
                    color: val == currentTabID ? Color.fromARGB(255, 241, 208, 208) : Colors.transparent
                ),
                bottom: BorderSide(
                    width: 1,
                    color: val == currentTabID ? Color.fromARGB(255, 241, 208, 208) : Colors.transparent
                )
            )
        );
    }



    Widget _buildSingleProduct(product) {
        return Container(
            width: 172,
            margin: EdgeInsets.only(right: 16),
            padding: EdgeInsets.all(8),
            decoration: style.outlineDecoration(),
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
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontFamily: 'semi-bold'
                                        ),
                                        children: <TextSpan>[
                                            TextSpan(text: ' '),
                                            TextSpan(text: product.offPrice,
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14,
                                                    fontFamily: 'regular'
                                                )
                                            ),
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
                          style: style.simpleButton(),
                        ),
                    )
                ],
            ),
        );
    }

    Widget _buildDropDown() {
        return Container(
            width: double.infinity,
            height: 30,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            decoration: style.outlineDecoration(),
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
                            style: TextStyle(fontSize: 12),
                        ),
                    );
                }).toList(),
            )
        );
    }

    Widget _buildBottomContainer() {
        return Container(
            height: 78,
            padding: EdgeInsets.all(16),
            color: Color.fromARGB(255, 54, 71, 79),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('\$200',
                          style: TextStyle(
                              fontFamily: 'medium',
                              color: Colors.white,
                              fontSize: 16
                          ),
                        ),
                        Text('Saved \$30',
                          style: TextStyle(
                              fontSize: 15,
                              color: style.appColor
                          ),
                        ),
                      ],
                    ),
                    Container(
                        child: ElevatedButton(
                            onPressed: () {
                                Navigator.push(context, new MaterialPageRoute(
                                    builder: (context) => new AddAddressPage())
                                );
                            },
                            child: Text('Checkout'),
                            style: style.simpleButton(),
                        ),
                    )
                ],
            ),
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