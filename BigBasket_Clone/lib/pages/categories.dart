/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:bigbasket/pages/category-detail.dart';
import 'package:bigbasket/pages/product-list.dart';
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class Item {
    Item({
        required this.expandedValue,
        required this.headerValue,
        this.isExpanded = false,
    });

    List<String> expandedValue;
    String headerValue;
    bool isExpanded;
}

class CategoriesPage extends StatefulWidget {
    CategoriesPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Categories';

    @override
    State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {

    final List<Item> _data = [
        Item(
            headerValue: 'Fruits & Vegetables',
            expandedValue: [
                'All Fruits & Vegetables',
                'Fresh Vegetables',
                'Herbs & Seasonings',
                'Organic Fruits & Vegetables',
                'Fresh Fruits',
                'Exotic Fruits & Veggies',
                'Cuts & Sprouts',
                'Flower Bouquets, Bunches'
            ],
        ),
        Item(
            headerValue: 'Foodgrains, Oil & Masala',
            expandedValue: [
                'All Foodgrains, Oil & Masala',
                'Dals & Pulses',
                'Salt, Sugar & Jaggery',
                'Rice & Rice Products',
                'Atta, Flours & Sooji',
                'Edible Oils & Ghee',
                'Organic Staples',
                'Masalas & Spices',
                'Dry Fruits'
            ],
        ),
        Item(
            headerValue: 'Bakery, Cakes & Dairy',
            expandedValue: [
                'All Bakery, Cakes & Dairy',
                'Dairy',
                'Breads & Buns',
                'Non Dairy',
                'Gourmet Breads',
                'Cookies, Rusk & Khari',
                'Bakery Snacks',
                'Cakes & Pastries',
                'Ice Creams & Desserts',
            ],
        ),
        Item(
            headerValue: 'Beverages',
            expandedValue: [
                'All Beverages',
                'Energy & Soft Drinks',
                'Coffee',
                'Tea',
                'Water',
                'Health Drink, Supplement',
                'Fruit Juices & Drinks',
            ],
        ),
        Item(
            headerValue: 'Snacks & Branded Foods',
            expandedValue: [
                'All Snacks & Branded Foods',
                'Noodle, Pasta, Vermicelli',
                'Biscuits & Cookies',
                'Ready To Cook & Eat',
                'Frozen Veggies & Snacks',
                'Snacks & Namkeen',
                'Breakfast Cereals',
                'Spreads, Sauces, Ketchup',
                'Chocolates & Candies',
                'Pickles & Chutney',
                'Indian Mithai'
            ],
        ),
        Item(
            headerValue: 'Beauty & Hygiene',
            expandedValue: [
                'All Beauty & Hygiene',
                'Oral Care',
                'Feminine Hygiene',
                'Bath & Hand Wash',
                'Hair Care',
                'Men\'s Grooming',
                'Skin Care',
                'Health & Medicine',
                'Makeup',
                'Fragrances & Deos'
            ],
        ),
        Item(
            headerValue: 'Cleaning & Household',
            expandedValue: [
                'All Cleaning & Household',
                'Detergents & Dishwash',
                'All Purpose Cleaners'  ,
                'Disposables, Garbage Bag',
                'Fresheners & Repellents',
                'Mops, Brushes & Scrubs',
                'Pooja Needs',
                'Bins & Bathroom Ware',
                'Stationery',
                'Car & Shoe Care',
                'Party & Festive Needs'
            ],
        ),
        Item(
            headerValue: 'Kitchen, Garden & Pets',
            expandedValue: [
                'All Kitchen, Garden & Pets',
                'Pet Food & Accessories',
                'Appliances & Electricals',
                'Gardening',
                'Steel Utensils',
                'Kitchen Accessories',
                'Cookware & Non Stick',
                'Crockery & Cutlery',
                'Flask & Casserole',
                'Bakeware',
                'Storage & Accessories'
            ],
        ),
        Item(
            headerValue: 'Eggs, Meat & Fish',
            expandedValue: [
                'All Eggs, Meat & Fish',
                'Eggs',
                'Poultry',
                'Sausages, Bacon & Salami',
                'Marinades',
                'Fish & Seafood',
                'Mutton & Lamb',
                'Pork & Other Meats',
            ],
        )
    ];



    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(120),
                child: _buildAppBar(),
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildAppBar() {
        return AppBar(
            backgroundColor: style.appColor,
            elevation: 0,
            centerTitle: true,
            automaticallyImplyLeading: false,
            iconTheme: IconThemeData(
                color: Colors.white,
            ),
            leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
            ),
            title: Text('Shop By Category'),
            titleTextStyle: style.whitePageTitle(),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(120),
                child: Container(
                    padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: TextField(
                        decoration: style.searchInputBox('Search Products'),
                    ),
                ),
            ),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                child: _buildPanel(),
            ),
        );
    }

    Widget _buildPanel() {
        return ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
                setState(() {
                    _data[index].isExpanded = !isExpanded;
                });
            },
            children: _data.map<ExpansionPanel>((Item item) {
                return ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                            onTap: () {
                                Navigator.push(context, new MaterialPageRoute(
                                    builder: (context) => new ProductListPage())
                                );
                            },
                            title: Text(item.headerValue),
                        );
                    },
                    body: ListView(
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        padding: EdgeInsets.all(0),
                        children: List.generate(item.expandedValue.length, (index) {
                            return InkWell(
                                onTap: () {
                                    Navigator.push(context, new MaterialPageRoute(
                                        builder: (context) => new CategoryDetailPage())
                                    );
                                },
                                child: Container(
                                    padding: EdgeInsets.all(16),
                                    decoration: style.borderBottom(),
                                    child: Text(item.expandedValue[index]),
                                ),
                            );
                        }),
                    ),
                    isExpanded: item.isExpanded,
                );
            }).toList(),
        );
    }

}