/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:newsalonflutter/pages/serviceList.dart';
import '../helper/style.dart' as style;

class ServicesScreen extends StatefulWidget {
    ServicesScreen({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Services';

    @override
    State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {

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
                automaticallyImplyLeading: false,
                title: Text('Services', style: style.pageTitleText()),
                centerTitle: true,
                flexibleSpace: Container(
                    decoration: style.appBarDecoration(),
                ),
                elevation: 0,
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
                color: Color.fromARGB(255, 220, 220, 220),
                padding: EdgeInsets.all(16),
                child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    children: List.generate(services.length, (index) {
                        return _buildSingleService(services[index]);
                    }),
                ),
            ),
        );
    }

    Widget _buildSingleService(val) {
        return InkWell(
            onTap: () {
                Navigator.push(context, new MaterialPageRoute(
                    builder: (context) => new ServiceListScreen())
                );
            },
            child: Container(
              decoration: style.roundImage(val.img),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.all(6),
                  width: double.infinity,
                  decoration: textContainer(),
                  child: Text(val.name.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: nameLabel(),
                  ),
                ),
              ),
            ),
        );
    }

    textContainer() {
        return BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5)
            ),
            gradient: LinearGradient(
                colors: [style.appColor, style.appColor2],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.5, 1.0],
            )
        );
    }

    nameLabel() {
        return TextStyle(
            color: Colors.white,
            fontSize: 13,
            fontFamily: 'medium'
        );
    }

}

class Item {
    const Item(this.img, this.name);
    final String img;
    final String name;
}