/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';

import '../components/styles.dart';

class Categories extends StatefulWidget {
  static const String id = 'Categories';

  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
            icon: const Icon(
              Icons.close,
              size: 24,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16),
            child: TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.black,
              controller: _tabController,
              indicatorColor: appColor,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  child: Text('Women'.toUpperCase()),
                ),
                Tab(
                  child: Text('Man'.toUpperCase()),
                ),
                Tab(
                  child: Text('Kids'.toUpperCase()),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildCat(),
                _buildCat(),
                _buildCat(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCat() {
    return Column(
      children: [
        ExpansionTile(
          title: _buildBoldText("New"),
          children: [
            ListTile(
              title: Text("outer"),
            ),
          ],
        ),
        ExpansionTile(
          title: _buildBoldText("Old"),
          children: [
            ListTile(
              title: Text("inner"),
            ),
            ListTile(
              title: Text("pant"),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBoldText(val) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Text(
        val,
        style: TextStyle(
          fontFamily: 'medium',
          color: Colors.black87,
          fontSize: 16,
        ),
      ),
    );
  }
}
