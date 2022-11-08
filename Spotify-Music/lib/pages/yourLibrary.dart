/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:spotify/helper/style.dart';

class yourLibrary extends StatefulWidget {
  yourLibrary({Key? key}) : super(key: key);

  static const String page_id = "Your Library";

  @override
  _yourLibraryState createState() => _yourLibraryState();
}

class _yourLibraryState extends State<yourLibrary> {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  bool currentView = false;
  int selectID = 1;
  List<Item> categories = <Item>[
    Item('assets/images/s1.jpg', 'My playlists #1'),
    Item('assets/images/s2.jpg', 'My playlists #2'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.white),
      title: Row(
        children: [
          Container(
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                'J',
                style: TextStyle(color: Colors.black, fontFamily: 'medium'),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Your Library',
            style: headText(),
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return FractionallySizedBox(
                              heightFactor: 0.6,
                              child: sortBy(),
                            );
                          },
                        );
                      },
                      icon: Icon(Icons.arrow_downward),
                    ),
                    Text(
                      'Most Recent',
                    )
                  ],
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentView = !currentView;
                    });
                  },
                  icon: currentView == true
                      ? Icon(Icons.list)
                      : Icon(Icons.grid_view_outlined),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            for (var i in list)
              currentView == true ? artistList() : artistRow(),
          ],
        ),
      ),
    );
  }

  Widget artistList() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                  image: AssetImage(
                    ('assets/images/s1.jpg'),
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'My playlists #1',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Playlist	• Jaydeep',
                    style: TextStyle(color: Colors.white60, fontSize: 14),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget artistRow() {
    return Container(
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 95 / 100,
        physics: ScrollPhysics(),
        children: categories.map((e) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          (e.img),
                        ),
                        fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    e.text,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'Playlist	• Jaydeep',
                    style: TextStyle(fontSize: 12, color: Colors.white70),
                  )
                ],
              )
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget sortBy() {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sort by',
              style: headText(),
            ),
            SizedBox(
              height: 30,
            ),
            _buildSelect(1, 'Most recent'),
            SizedBox(
              height: 20,
            ),
            _buildSelect(2, 'Recent played'),
            SizedBox(
              height: 20,
            ),
            _buildSelect(3, 'Recently added'),
            SizedBox(
              height: 20,
            ),
            _buildSelect(4, 'Alphabetical'),
            SizedBox(
              height: 20,
            ),
            _buildSelect(5, 'Creator'),
            SizedBox(
              height: 30,
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'CANCEL',
                  style: TextStyle(color: Colors.white70, fontFamily: 'medium'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSelect(id, text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectID = id;
        });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(color: selectID == id ? appColor : Colors.white),
          ),
          selectID == id
              ? Icon(
                  Icons.check,
                  color: appColor,
                )
              : Text('')
        ],
      ),
    );
  }
}

class Item {
  const Item(this.img, this.text);
  final String img;
  final String text;
}
