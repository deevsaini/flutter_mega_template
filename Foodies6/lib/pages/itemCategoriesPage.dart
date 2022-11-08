/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/tabBarPage.dart';
import 'package:foodies_fluttermarketplace_hardik/utilities/constance.dart'
    as style;

class itemCategoriesPage extends StatefulWidget {
  itemCategoriesPage({Key? key}) : super(key: key);

  static const String pageId = 'itemCategoriesPage';

  @override
  State<itemCategoriesPage> createState() => _itemCategoriesPageState();
}

class _itemCategoriesPageState extends State<itemCategoriesPage> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _buildBody(),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            _buildTitle(),
            GridView.count(
              primary: false,
              crossAxisCount: 2,
              shrinkWrap: true,
              childAspectRatio: 100 / 100,
              children: [
                _buildContent(AssetImage('assets/images/1.jpg'),
                    'Treditional \n American'),
                _buildContent(
                    AssetImage('assets/images/2.jpg'), 'Breackfast \n& Brunch'),
                _buildContent(AssetImage('assets/images/3.jpg'),
                    'Treditional \n American'),
                _buildContent(
                    AssetImage('assets/images/4.jpg'), 'New \n Maxican'),
                _buildContent(
                    AssetImage('assets/images/5.jpg'), 'Comfort \n Food'),
                _buildContent(AssetImage('assets/images/6.jpg'), 'Wings'),
                _buildContent(AssetImage('assets/images/7.jpg'), 'Sandwich'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: EdgeInsets.only(bottom: 20, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            children: [
              Text(
                'What kind of food are you looking for ?',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontFamily: 'bold', color: Colors.black, fontSize: 20),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Wrap(
            children: [
              Text(
                'You are selected two or more prefrences',
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildContent(img, txt) {
    return Container(
      height: 150,
      width: 160,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.srcOver),
            image: img,
            fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                  width: 180,
                  child: Text(
                    '$txt',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'bold', color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            right: 0,
            child: Container(
              height: 40,
              width: 50,
              decoration: BoxDecoration(
                  color: style.itemColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Center(
                child: Checkbox(
                  checkColor: style.itemColor,
                  activeColor: Colors.white,
                  value: isChecked,
                  shape: CircleBorder(),
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => tabBarPage()));
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 13.0),
          decoration: style.categoriesButtonStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Next',
                style: TextStyle(
                    color: Colors.white, fontSize: 17, fontFamily: 'bold'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
