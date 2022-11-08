/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:shop2/pages/blog_info.dart';
import 'package:shop2/widget/appbar.dart';
import 'package:shop2/widget/NavBar.dart';
import 'package:shop2/widget/footer.dart';
import '../components/styles.dart';

class Blog extends StatefulWidget {
  static const String id = 'Blog';

  const Blog({Key? key}) : super(key: key);

  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  List<Item> gridList = <Item>[
    Item(
        'assets/images/collection.jpg',
        '2022 Style Guide: the Biggest fall trends',
        '#Fashion  #Tips',
        '4 days ago'),
    Item(
        'assets/images/collection1.jpg',
        'Style Guide: the Biggest fall Collections',
        '#Trends  #Hot',
        'days ago'),
    Item('assets/images/13.jpg', '2022 Style Guide: the Biggest fall trends',
        '#Collection  #Tips', '4 days ago'),
    Item('assets/images/14.jpg', '2022 Style Guide: the Biggest fall trends',
        '#Fashion  #Tips', '5 days ago'),
    Item(
        'assets/images/collection.jpg',
        '2022 Style Guide: the Biggest fall trends',
        '#Fashion  #Tips',
        '4 days ago'),
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
            SizedBox(height: 40),
            centerHeading("Blog"),
            sepLine(),
            SizedBox(height: 20),
            _Grid1(),
            Container(
              child: Column(
                children: gridList.map((e) {
                  return _buildBlogList(context, e);
                }).toList(),
              ),
            ),
            _buildBtn(),
            footerMain(),
          ],
        ),
      ),
    );
  }

  Widget _Grid1() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: gridList.map((e) {
          return InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BlogInfo()));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(14),
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(e.img), fit: BoxFit.cover),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 10,
                        right: 10,
                        child: Icon(
                          Icons.save_alt,
                          size: 24,
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(e.name.toUpperCase(),
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 2,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(e.chip,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black45,
                        )),
                    Text(e.time,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black45,
                        )),
                  ],
                ),
                SizedBox(height: 25),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildBlogList(context, e) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: InkWell(
        onTap: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2.0,
                  )
                ],
              ),
              child: InkWell(
                onTap: () {},
                child: Image.asset(
                  e.img,
                  height: 170.0,
                  width: 120.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(e.name.toUpperCase(),
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        )),
                    Text(
                        "The exvitement of fall fashion is here and I am already loving some of the trends forecasts",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        )),
                    Text(e.time,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black45,
                        )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBtn() {
    return Container(
      padding: EdgeInsets.all(16),
      child: ElevatedButton(
        child: Text("View More".toUpperCase(), style: TextStyle(fontSize: 16)),
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: backgroundColor,
          onPrimary: Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        ),
      ),
    );
  }
}

class Item {
  const Item(
    this.img,
    this.name,
    this.chip,
    this.time,
  );
  final String img;
  final String name;
  final String chip;
  final String time;
}
