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
import '../components/styles.dart' as style;
import 'package:food2/models/spotlight.dart';
import 'package:food2/widgets/search_food_list.dart';

class Search extends StatefulWidget {
  static const String id = 'Search';

  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
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
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        // centerTitle: true,
        title: Container(
          decoration: const BoxDecoration(
            color: style.background,
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: const TextField(
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              border: InputBorder.none,
              hintText: "Find Restaurants, foods, Drinks..",
              hintStyle: TextStyle(fontSize: 16, color: Colors.black26),
              suffixIcon: SizedBox(
                  width: 50, child: Icon(Icons.search, color: Colors.black26)),
            ),
          ),
        ),

        actions: [
          IconButton(
            icon: const Icon(
              Icons.filter_alt_outlined,
              size: 28,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: style.appColor,
              controller: _tabController,
              indicatorColor: style.appColor,
              labelStyle: TextStyle(fontFamily: 'semibold', fontSize: 16),
              unselectedLabelStyle:
                  TextStyle(fontFamily: 'semibold', fontSize: 16),
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: const [
                Tab(
                  child: Text('Restaurants',
                      style: TextStyle(fontFamily: 'semibold')),
                ),
                Tab(
                  child:
                      Text('Items', style: TextStyle(fontFamily: 'semibold')),
                ),
              ],
            ),
            Divider(
              thickness: 10,
              color: style.background,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  _SearchListView(),
                  _SearchListView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SearchListView extends StatelessWidget {
  const _SearchListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<SpotlightBestTopFood> foods = [
      ...SpotlightBestTopFood.popularAllRestaurants
    ]..shuffle();

    return ListView.builder(
      shrinkWrap: true,
      itemCount: foods.length,
      itemBuilder: (context, index) => SearchFoodListItemView(
        food: foods[index],
      ),
    );
  }
}
