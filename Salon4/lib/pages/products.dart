/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class ProductsScreen extends StatefulWidget {
    ProductsScreen({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Products';

    @override
    State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {

    List<Item> products = <Item>[
        Item('assets/images/pro1.jpg', 'Hair'),
        Item('assets/images/pro2.jpg', 'Massage'),
        Item('assets/images/pro3.jpg', 'Face & Skin'),
        Item('assets/images/pro4.jpg', 'Makeup'),
        Item('assets/images/pro5.jpg', 'Hair Styling'),
        Item('assets/images/pro6.jpg', 'Hair Color'),
        Item('assets/images/pro7.jpg', 'Hair Texture'),
        Item('assets/images/pro8.jpg', 'Bridal')
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                elevation: 0,
                title: Text('Products',style: style.pageTitleText()),
                centerTitle: true,
                automaticallyImplyLeading: false,
                backgroundColor: style.appColor,
                actions: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search)
                    )
                ],
          ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                color: Color.fromARGB(255, 245, 245, 245),
                padding: EdgeInsets.all(16),
                child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    childAspectRatio: 84/100,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    children: List.generate(products.length, (index) {
                        return _buildSingleProducts(products[index]);
                    }),
                ),
            ),
        );
    }

    Widget _buildSingleProducts(product) {
        return Stack(
            children: [
                Container(
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: outerContainer(),
                    child: Column(
                        children: [
                            Container(
                                width: double.infinity,
                                height: 115,
                                padding: EdgeInsets.all(8),
                                child: Image(
                                  image: AssetImage(product.img),
                                ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 20),
                                child: Text('Lorem ipsum dolor',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 13
                                    ),
                                ),
                            ),
                        ],
                    ),
                ),
                Positioned(
                    left: (MediaQuery.of(context).size.width/2) - (200-48),
                    bottom: 5,
                    child: Container(
                        width: 100,
                        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                                Radius.circular(25)
                            ),
                            border: Border.all(
                                width: 1,
                                color: style.appColor
                            )
                        ),
                        child: Text('\$ 20.00',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: style.appColor,
                                fontFamily: 'medium'
                            ),
                        ),
                    )
                )
            ],
        );
    }

    outerContainer() {
        return BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
                Radius.circular(5)
            ),
            border: Border.all(
                color: (Colors.grey[300])!,
                width: 1
            )
        );
    }

    imageBox(val) {
        return BoxDecoration(
            image: DecorationImage(
                image: AssetImage(val),
                fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5)
            )
        );
    }

}

class Item {
    const Item(this.img, this.name);
    final String img;
    final String name;
}