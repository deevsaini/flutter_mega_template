/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:admin_app/pages/addNewCategoriesPage.dart';
import 'package:admin_app/pages/addNewItemPage.dart';
import 'package:admin_app/pages/sideMenuPage.dart';
import 'package:flutter/material.dart';
import 'package:admin_app/utilities/consultsPage.dart' as style;

class menuPage extends StatefulWidget {
  menuPage({Key? key}) : super(key: key);

  static const String pageId = 'menuPage';

  @override
  State<menuPage> createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final items = List<String>.generate(20, (i) => "Item ${i + 1}");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: myDrawer(),
        key: _scaffoldKey,
        drawerEnableOpenDragGesture: false,
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        bottomNavigationBar: _buildBottomNavigationBar(),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Dismissible(
              // Each Dismissible must contain a Key. Keys allow Flutter to
              // uniquely identify widgets.
              key: Key(item),
              // Provide a function that tells the app
              // what to do after an item has been swiped away.
              onDismissed: (direction) {
                print(direction);
                // Remove the item from the data source.
                setState(() {
                  if (direction == DismissDirection.startToEnd)
                    items.removeAt(index);
                  else if (direction == DismissDirection.endToStart)
                    items.removeAt(index);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => addNewItemPage()));
                });

                // Then show a snackbar.
                if (direction == DismissDirection.startToEnd)
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('$item dismissed')));
                else if (direction == DismissDirection.endToStart)
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text('Edit Items')));
              },

              // Show a red background as the item is swiped away.
              background: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 20.0),
                color: Color(0xFFFF4F4E),
                child: Icon(Icons.delete, color: Colors.white),
              ),
              secondaryBackground: Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 20.0),
                color: Color(0xFF1A69AE),
                child: Icon(Icons.edit, color: Colors.white),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildContent(),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget myDrawer() {
    return Drawer(
      child: sideMenuPage(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: style.appColor,
      leading: InkWell(
        onTap: () => _scaffoldKey.currentState?.openDrawer(),
        child: Icon(Icons.menu),
      ),
      centerTitle: true,
      title: Text(
        'Menu',
        style: TextStyle(
            color: Colors.white, fontSize: 17, fontFamily: 'semibold'),
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: SizedBox.fromSize(
              size: Size.fromRadius(30),
              child: FittedBox(
                child: Image.asset('assets/images/c6.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Snacks',
                  style: TextStyle(fontFamily: 'bold', fontSize: 17),
                ),
                Icon(
                  Icons.align_vertical_center_outlined,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => addNewCategoriesPage()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 13.0),
                decoration: style.contentButtonStyle(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Add Categories',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'bold'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => addNewItemPage()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 13.0),
                decoration: style.contentButtonStyle(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Add Menu Item',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'bold'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
