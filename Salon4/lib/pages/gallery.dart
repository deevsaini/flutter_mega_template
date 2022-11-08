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

class GalleryScreen extends StatefulWidget {
    GalleryScreen({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Gallery';

    @override
    State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {

    List<Item> services = <Item>[
        Item('assets/images/service1.jpg', 'Hair'),
        Item('assets/images/service2.jpg', 'Massage'),
        Item('assets/images/service3.jpg', 'Face & Skin'),
        Item('assets/images/service4.jpg', 'Makeup'),
        Item('assets/images/service5.jpg', 'Hair Styling'),
        Item('assets/images/service6.jpg', 'Hair Color'),
        Item('assets/images/service7.jpg', 'Hair Texture'),
        Item('assets/images/service8.jpg', 'Bridal')
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                iconTheme: IconThemeData(
                    color: Colors.white
                ),
                title: Text('Gallery', style: style.pageTitleText()),
                centerTitle: true,
                elevation: 0,
                flexibleSpace: Container(
                    decoration: style.appBarDecoration(),
                ),
                actions: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share)
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
                color: Color.fromARGB(255, 220, 220, 220),
                padding: EdgeInsets.all(10),
                child: Column(
                    children: [
                        Container(
                            width: double.infinity,
                            height: 200,
                            decoration: style.squareImage('assets/images/service8.jpg'),
                            margin: EdgeInsets.only(bottom: 10),
                        ),
                        GridView.count(
                            crossAxisCount: 2,
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            children: List.generate(services.length, (index) {
                                return _buildSingleService(services[index]);
                            }),
                        )
                    ],
                ),
            ),
        );
    }

    Widget _buildSingleService(val) {
        return Container(
            decoration: style.squareImage(val.img),
        );
    }

}

class Item {
    const Item(this.img, this.name);
    final String img;
    final String name;
}