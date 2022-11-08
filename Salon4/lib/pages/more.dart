/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:newsalonflutter/pages/about.dart';
import 'package:newsalonflutter/pages/gallery.dart';
import 'package:newsalonflutter/pages/offers.dart';
import 'package:newsalonflutter/pages/reviews.dart';
import '../helper/style.dart' as style;

class MoreScreen extends StatefulWidget {
    MoreScreen({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'More';

    @override
    State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {

    List<Item> pages = <Item>[
        Item('assets/images/about.png', 'About Us', Color.fromARGB(255, 72, 221, 207)),
        Item('assets/images/offer.png', 'Offers', Color.fromARGB(255, 226, 89, 169)),
        Item('assets/images/gallery.png', 'Gallery', Color.fromARGB(255, 70, 210, 255)),
        Item('assets/images/star.png', 'Reviews', Color.fromARGB(255, 250, 204, 3)),
        Item('assets/images/user.png', 'My Profile', Color.fromARGB(255, 243, 72, 69)),
        Item('assets/images/facebook.png', 'Facebook Page', Color.fromARGB(255, 91, 105, 194)),
        Item('assets/images/settings.png', 'Settings', Color.fromARGB(255, 65, 208, 122)),
        Item('assets/images/calendar.png', 'Appointments', Color.fromARGB(255, 178, 56, 242))
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                iconTheme: IconThemeData(
                    color: Colors.white
                ),
                title: Text('More Options', style: style.pageTitleText()),
                centerTitle: true,
                elevation: 0,
                automaticallyImplyLeading: false,
                flexibleSpace: Container(
                  decoration: style.appBarDecoration(),
                ),
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
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    children: List.generate(pages.length, (index) {
                        return InkWell(
                            onTap: () {
                                if(pages[index].name == 'About Us') {
                                    Navigator.push(context, new MaterialPageRoute(
                                        builder: (context) => new AboutScreen())
                                    );
                                }
                                if(pages[index].name == 'Offers') {
                                    Navigator.push(context, new MaterialPageRoute(
                                        builder: (context) => new OffersScreen())
                                    );
                                }
                                if(pages[index].name == 'Gallery') {
                                    Navigator.push(context, new MaterialPageRoute(
                                        builder: (context) => new GalleryScreen())
                                    );
                                }
                                if(pages[index].name == 'Reviews') {
                                    Navigator.push(context, new MaterialPageRoute(
                                        builder: (context) => new ReviewsScreen())
                                    );
                                }
                            },
                            child: _buildSinlgeBox(pages[index]),
                        );
                    }),
                ),
            ),
        );
    }

    whiteBox() {
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

    Widget _buildSinlgeBox(page) {
        return Container(
            padding: EdgeInsets.all(16),
            decoration: whiteBox(),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    _buildColorBox(page),
                    Text(page.name,
                        style: TextStyle(
                            fontFamily: 'medium',
                            fontSize: 14
                        ),
                    )
                ],
            ),
        );
    }


    Widget _buildColorBox(pages) {
        return Container(
            height: 80,
            width: 80,
            margin: EdgeInsets.only(bottom: 8),
            padding: EdgeInsets.all(20),
            decoration: colorBox(pages.clr),
            child: Image(
              image: AssetImage(pages.img),
            ),
        );
    }

    colorBox(clr) {
        return BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(100)
            ),
            color: clr
        );
    }

}

class Item {
    const Item(this.img, this.name, this.clr);
    final String img;
    final String name;
    final Color clr;
}