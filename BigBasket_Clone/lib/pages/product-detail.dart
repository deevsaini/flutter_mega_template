/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:bigbasket/pages/delivery-options.dart';
import 'package:bigbasket/pages/verification.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class ProductDetailPage extends StatefulWidget {
    ProductDetailPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Product Detail';

    @override
    State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {

    List<String> addresses = [
        'Home', 'Office'
    ];
    int _current = 0;

    List<String> images = [
        'assets/images/detail_2.jpg',
        'assets/images/detail_1.jpg',
        'assets/images/detail_2.jpg',
        'assets/images/detail_1.jpg',
        'assets/images/detail_2.jpg',
        'assets/images/detail_1.jpg',
    ];

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

    String dropdownValue = '150 g';

    List<String> qty = [
        '150 g', '170 g'
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBackColor,
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(56),
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
                onPressed: () {
                    Navigator.of(context).pop();
                },
                icon: Icon(Icons.keyboard_arrow_left),
            ),
            actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search)
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.share_outlined)
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shopping_basket_outlined)
                )
            ],
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                        Container(
                            padding: EdgeInsets.all(16),
                            decoration: borderBottom(),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Container(
                                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                                        margin: EdgeInsets.only(bottom: 16),
                                        decoration: BoxDecoration(
                                            color: Color.fromARGB(255, 233, 242, 225),
                                            border: Border.all(
                                                width: 1,
                                                color: style.appColor
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(3)
                                            )
                                        ),
                                        child: Text('See more BB Popular products',
                                            style: TextStyle(fontFamily: 'medium'),
                                        ),
                                    ),
                                    Text('Toor/Arhar Dal, 1kg - Pouch',
                                        style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                        children: [
                                            Text('Rs 120',
                                                style: TextStyle(fontFamily: 'medium'),
                                            ),
                                            SizedBox(width: 10),
                                            Text('MRP: Rs 160',
                                                style: TextStyle(color: Colors.grey),
                                            ),
                                            SizedBox(width: 10),
                                            Container(
                                                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                                                decoration: BoxDecoration(
                                                    color: style.appRed,
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(3)
                                                    ),
                                                ),
                                                child: Text('20% OFF',
                                                    style: TextStyle(
                                                        fontFamily: 'medium',
                                                        color: Colors.white
                                                    ),
                                                ),
                                            )
                                        ],
                                    ),
                                    Text('(Inclusive of all taxes)',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey
                                        ),
                                    ),
                                    Image.asset('assets/images/brand_image.jpg'),
                                    SizedBox(height: 16),
                                    Container(
                                        height: 75,
                                        child: ListView(
                                            physics: ScrollPhysics(),
                                            scrollDirection: Axis.horizontal,
                                            shrinkWrap: true,
                                            children: List.generate(images.length, (index) {
                                                return Container(
                                                    width: 80,
                                                    height: 75,
                                                    margin: EdgeInsets.only(right: 16),
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.all(
                                                            Radius.circular(3)
                                                        ),
                                                        border: Border.all(
                                                            width: 1,
                                                            color: (Colors.grey[300])!
                                                        ),
                                                        image: DecorationImage(
                                                            image: AssetImage(images[index]),
                                                            fit: BoxFit.contain
                                                        )
                                                    ),
                                                );
                                            }),
                                        )
                                    ),


                                ],
                            ),
                        ),

                        Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(16),
                            decoration: borderBottom(),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text('Pack Sizes',
                                        style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(height: 16),
                                    ListView(
                                        shrinkWrap: true,
                                        physics: ScrollPhysics(),
                                        children: List.generate([1,2,3,4,5].length, (index) {
                                            return Container(
                                                padding: EdgeInsets.all(16),
                                                margin: EdgeInsets.only(bottom: 16),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        width: 1,
                                                        color: (Colors.grey[300])!
                                                    ),
                                                    borderRadius: BorderRadius.all(
                                                        Radius.circular(3)
                                                    )
                                                ),
                                                child: Stack(
                                                    alignment: Alignment.topLeft,
                                                    overflow: Overflow.visible,
                                                    children: [
                                                        Positioned(
                                                            top: -16,
                                                            left: -16,
                                                            child: Container(
                                                                padding: EdgeInsets.symmetric(horizontal: 10),
                                                                decoration: BoxDecoration(
                                                                    color: style.appRed,
                                                                    borderRadius: BorderRadius.only(
                                                                        topLeft: Radius.circular(3)
                                                                    )
                                                                ),
                                                                child: Text('20% OFF',
                                                                    style: TextStyle(
                                                                        color: Colors.white,
                                                                        fontSize: 12
                                                                    ),
                                                                ),
                                                            )
                                                        ),
                                                        Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                                Expanded(
                                                                    flex: 5,
                                                                    child: Column(
                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: [
                                                                        Text('1 kg', style: TextStyle(fontFamily: 'medium')),
                                                                        Text('Pouch')
                                                                      ],
                                                                    )
                                                                ),
                                                                Expanded(
                                                                    flex: 5,
                                                                    child: Column(
                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: [
                                                                        Text('Rs 120', style: TextStyle(fontFamily: 'medium')),
                                                                        Text('MRP: Rs 160', style: smallLabel())
                                                                      ],
                                                                    )
                                                                ),
                                                                SizedBox(
                                                                    height: 24,
                                                                    width: 24,
                                                                    child: Radio(
                                                                        value: index,
                                                                        groupValue: _current,
                                                                        onChanged: (e) {
                                                                            setState(() {
                                                                               _current = index;
                                                                            });
                                                                        },
                                                                        activeColor: style.appColor,
                                                                    )
                                                                )
                                                            ],
                                                        )
                                                    ],
                                                ),
                                            );
                                        }),
                                    )
                                ],
                            ),
                        ),

                        Container(
                            margin: EdgeInsets.symmetric(vertical: 12),
                            color: Colors.white,
                            padding: EdgeInsets.all(16),
                            child: Row(
                                children: [
                                    Icon(Icons.shopping_basket_outlined, size: 16),
                                    SizedBox(width: 10),
                                    Expanded(child: Text('Delivers in 15 hrs'))
                                ],
                            ),
                        ),
                        
                        Container(
                            width: double.infinity,
                            color: Colors.white,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Container(
                                        width: double.infinity,
                                        padding: EdgeInsets.all(16),
                                        decoration: borderBottom(),
                                        child: Text('About this product',
                                            style: TextStyle(fontSize: 20),
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        padding: EdgeInsets.symmetric(vertical: 8),
                                        child: Column(
                                            children: [
                                                Text('Know more about this products',
                                                    style: TextStyle(
                                                        color: Color.fromARGB(255, 56, 128, 255),
                                                        fontSize: 13
                                                    ),
                                                ),
                                                Icon(Icons.keyboard_arrow_down, color: Color.fromARGB(255, 56, 128, 255))
                                            ],
                                        )
                                    )
                                ],
                            ),
                        ),

                        Container(
                            margin: EdgeInsets.symmetric(vertical: 12),
                            color: Colors.white,
                            child: Row(
                                children: [
                                    Expanded(
                                        child: ElevatedButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.bookmark_border),
                                            label: Text('Save for later'),
                                        )
                                    ),
                                    Expanded(
                                        child: ElevatedButton.icon(
                                            onPressed: () {},
                                            icon: Icon(Icons.shopping_basket_outlined),
                                            label: Text('Add to basket'),
                                        )
                                    )
                                ],
                            ),
                        ),

                        Container(
                            width: double.infinity,
                            color: Colors.white,
                            margin: EdgeInsets.only(bottom: 12),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Container(
                                        width: double.infinity,
                                        padding: EdgeInsets.all(16),
                                        decoration: borderBottom(),
                                        child: Text('Rating & Reviews',
                                            style: TextStyle(fontSize: 20),
                                        ),
                                    ),
                                    Container(
                                        width: double.infinity,
                                        padding: EdgeInsets.all(16),
                                        child: Center(
                                            child: Image.asset('assets/images/rating.png', width: 150),
                                        )
                                    )
                                ],
                            ),
                        ),

                        Container(
                            padding: EdgeInsets.all(16),
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 12),
                            decoration: borderBottom(),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text('Frequently Bought Together',
                                        style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(height: 16),

                                    Container(
                                        height: 400,
                                        child: ListView(
                                            shrinkWrap: true,
                                            physics: ScrollPhysics(),
                                            scrollDirection: Axis.horizontal,
                                            children: List.generate(products.length, (index) {
                                              return _buildSingleProduct(products[index]);
                                            }),
                                        ),
                                    )
                                ],
                            ),
                        ),

                        Container(
                            padding: EdgeInsets.all(16),
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 12),
                            decoration: borderBottom(),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text('Similar Products',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(height: 16),

                                    Container(
                                        height: 400,
                                        child: ListView(
                                            shrinkWrap: true,
                                            physics: ScrollPhysics(),
                                            scrollDirection: Axis.horizontal,
                                            children: List.generate(products.length, (index) {
                                                return _buildSingleProduct(products[index]);
                                            }),
                                        ),
                                    )
                                ],
                            ),
                        ),

                        Container(
                            color: Colors.white,
                            margin: EdgeInsets.only(bottom: 12),
                            child: Column(
                                children: [
                                    Row(
                                        children: [
                                            SizedBox(width: 12),
                                            Image.asset('assets/images/staple_icn.jpg', width: 60,),
                                            Expanded(
                                                child: Padding(
                                                    padding: EdgeInsets.symmetric(horizontal: 12),
                                                    child: Text('View more products from Toor, Chana & Moong dal'.toUpperCase()),
                                                )
                                            ),
                                            Container(
                                                height: 80,
                                                width: 36,
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                        left: BorderSide(
                                                            width: 1,
                                                            color: (Colors.grey[300])!
                                                        )
                                                    )
                                                ),
                                                child: Icon(Icons.keyboard_arrow_right),
                                            )
                                        ],
                                    ),
                                    Container(
                                        width: double.infinity,
                                        height: 12,
                                        color: style.appBackColor,
                                    ),
                                    Row(
                                        children: [
                                            SizedBox(width: 12),
                                            Container(
                                                width: 60,
                                                height: 60,
                                                color: Color.fromARGB(255, 233, 242, 225),
                                                child: Center(
                                                    child: Text('B',
                                                        style: TextStyle(
                                                            fontSize: 30,
                                                            fontFamily: 'semi-bold'
                                                        ),
                                                    ),
                                                ),
                                            ),
                                            Expanded(
                                                child: Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 12),
                                                  child: Text('View more products from bbpopular'.toUpperCase()),
                                                )
                                            ),
                                            Container(
                                                height: 80,
                                                width: 36,
                                                decoration: BoxDecoration(
                                                    border: Border(
                                                        left: BorderSide(
                                                            width: 1,
                                                            color: (Colors.grey[300])!
                                                        )
                                                    )
                                                ),
                                                child: Icon(Icons.keyboard_arrow_right),
                                            )
                                        ],
                                    )
                                ],
                            ),
                        ),

                        Container(
                            padding: EdgeInsets.all(12),
                            color: Colors.white,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text('More about the product from Brand',
                                        style: TextStyle(fontSize: 18),
                                    ),
                                    SizedBox(height: 16),
                                    Divider(
                                        height: 1,
                                        color: Colors.grey[300],
                                    ),
                                    SizedBox(height: 16),
                                  
                                    Image.asset('assets/images/b_detail_1.jpg'),
                                    Padding(
                                        padding: EdgeInsets.symmetric(vertical: 10),
                                        child: Text('BB Popular Toor Dal - Big quality, Small Price.',
                                            style: titleLabel(),
                                        ),
                                    ),
                                    Image.asset('assets/images/b_detail_2.jpg'),
                                    Text('About The Brand.', style: subTitle()),
                                    Text('Value for money.', style: boldLabel()),
                                    SizedBox(height: 16),

                                    Text('Lorem ipsum dolor sit amet consectetur adipisicing elit.', style: smallLabel()),
                                    SizedBox(height: 16),
                                    Text('Illo ratione odio eos aspernatur labore molestias totam. Possimus, tempore laboriosam similique, quos adipisci praesentium autem temporibus explicabo consequatur non ab neque?',
                                        style: smallLabel()
                                    ),
                                    SizedBox(height: 16),

                                    Text('Healthy and Nutritious.', style: boldLabel()),
                                    SizedBox(height: 16),

                                    Text('Lorem ipsum dolor sit amet consectetur adipisicing elit.', style: smallLabel()),
                                    SizedBox(height: 16),
                                    Text('Repudiandae id quaerat quibusdam ducimus nostrum voluptatum, tempora voluptates velit vero numquam! Assumenda, velit! Quam explicabo enim dolores sint ullam eaque odio.',
                                        style: smallLabel()
                                    ),
                                    SizedBox(height: 16),

                                    Image.asset('assets/images/b_detail_3.jpg'),

                                    Padding(
                                        padding: EdgeInsets.symmetric(vertical: 16),
                                        child: Text('Product Highlights', style: subTitle())
                                    ),
                                    Image.asset('assets/images/b_detail_4.jpg'),
                                    Text('Quality Control', style: boldLabel()),
                                    SizedBox(height: 16),

                                    Text('Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nemo, eaque facere.', style: smallLabel()),
                                    SizedBox(height: 16),
                                    Text('Labore odio quae id esse voluptates saepe eos animi amet, blanditiis numquam molestias veniam in vero, sed ipsa asperiores?',
                                        style: smallLabel()
                                    ),
                                    SizedBox(height: 16),

                                    Image.asset('assets/images/b_detail_5.jpg'),
                                    Text('Production', style: boldLabel()),
                                    SizedBox(height: 16),

                                    Text('Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nemo, eaque facere.', style: smallLabel()),
                                    SizedBox(height: 16),
                                    Text('Optio totam culpa quos, necessitatibus maiores deleniti veniam quo ullam dolorum itaque nostrum dolorem saepe omnis adipisci fugit dicta a aut molestiae.',
                                        style: smallLabel()
                                    ),
                                    SizedBox(height: 16),

                                    Image.asset('assets/images/b_detail_6.jpg'),
                                    Text('Hygiene', style: boldLabel()),
                                    SizedBox(height: 16),

                                    Text('Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nemo, eaque facere.', style: smallLabel()),
                                    SizedBox(height: 16),
                                    Text('Dolor, vitae et nemo tempore doloribus enim dolore optio, reiciendis velit sunt ipsum veniam sequi quis, neque laboriosam! Accusamus sit consequatur necessitatibus!',
                                        style: smallLabel()
                                    ),
                                    SizedBox(height: 16),
                                  
                                ],
                            ),
                        ),

//
//
                    ],
                ),
            ),
        );
    }

    borderBottom() {
        return BoxDecoration(
            color: Colors.white,
            border: Border(
                bottom: BorderSide(
                    width: 1,
                    color: (Colors.grey[300])!
                )
            )
        );
    }

    Widget _buildSingleProduct(product) {
        return Container(
            width: 172,
            margin: EdgeInsets.only(right: 16),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
                border: Border.all(
                    width: 1,
                    color: (Colors.grey[300])!
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
          decoration: BoxDecoration(
              border: Border.all(
                  width: 1,
                  color: (Colors.grey[300])!
              ),
              borderRadius: BorderRadius.all(
                  Radius.circular(3)
              )
          ),
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
                  style: TextStyle(
                      fontSize: 12
                  ),
                ),
              );
            }).toList(),
          )
      );
    }

    titleLabel() {
        return TextStyle(
            fontSize: 18,
            fontFamily: 'semi-bold'
        );
    }

    subTitle() {
        return TextStyle(
            fontSize: 16,
            fontFamily: 'semi-bold'
        );
    }

    boldLabel() {
        return TextStyle(
            fontSize: 15,
            fontFamily: 'semi-bold'
        );
    }


    greyLabel() {
        return TextStyle(
            color: Colors.grey,
            fontSize: 14
        );
    }

    smallLabel() {
        return TextStyle(
            color: Colors.grey
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