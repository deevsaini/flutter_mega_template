/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutternewgrocery/pages/product-list.dart';
import '../helper/style.dart' as style;

class PromoPage extends StatefulWidget {
    PromoPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Promo';

    @override
    State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {

    List<BannerItem> promos = <BannerItem>[
        BannerItem('assets/images/avocado.png', 'Avocado 5% OFF', Color.fromARGB(255, 105, 92, 205)),
        BannerItem('assets/images/grapes.png', 'Free delivery every purchase', Color.fromARGB(255, 254, 184, 46)),
        BannerItem('assets/images/kale.png', 'Free lettuce on every purchase', Color.fromARGB(255, 105, 92, 205)),
        BannerItem('assets/images/mango.png', '12% OFF on Mango', Color.fromARGB(255, 254, 184, 46)),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                automaticallyImplyLeading: true,
                iconTheme: IconThemeData(
                    color: style.appColor
                ),
                title: Text('Promos'),
                centerTitle: false,
                titleTextStyle: style.pageTitle(),
            ),
            body: _buildBody(),
        );
    }

    Widget _buildBody() {
        return SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                        Text('Available Promos',
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'medium'
                            ),
                        ),
                        SizedBox(height: 20),

                        ListView(
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            children: List.generate(promos.length, (index) {
                                return _buildSingleItem(promos[index]);
                            }),
                        ),
                    ],
                ),
            ),
        );
    }

    Widget _buildSingleItem(promo) {
        return Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 16),
            height: 230,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(5)
                ),
                color: promo.clr
            ),
            child: Row(
                children: [
                    Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Text(promo.name.toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: 'medium'
                                    ),
                                ),
                                Container(
                                    width: 150,
                                    margin: EdgeInsets.only(top: 16),
                                    child: ElevatedButton(
                                        onPressed: () {
                                            Navigator.push(context, new MaterialPageRoute(
                                                builder: (context) => new ProductListPage())
                                            );
                                        },
                                        child: Text('Check Now'.toUpperCase()),
                                        style: ElevatedButton.styleFrom(
                                            primary: style.appColor,
                                            onPrimary: Colors.white,
                                            elevation: 0,
                                            textStyle: TextStyle(
                                                fontFamily: 'medium'
                                            )
                                        ),
                                    )
                                ),
                            ],
                        )
                    ),
                    Container(
                        height: 150,
                        width: 150,
                        child: Image.asset(promo.img),
                    ),
                ],
            ),
        );
    }
}

class BannerItem {
    const BannerItem(this.img, this.name, this.clr);
    final String img;
    final String name;
    final Color clr;
}