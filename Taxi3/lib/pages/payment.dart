/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:ride/helper/style.dart';

class payment extends StatefulWidget {
  payment({Key? key}) : super(key: key);

  static const String page_id = "Payment";

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  late PageController _pageController;
  List<String> images = [
    "assets/images/card.png",
    "assets/images/card.png",
    "assets/images/card.png",
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              appColor,
              styleColor,
            ],
          ),
        ),
      ),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      title: Text('Payment'),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
                itemCount: images.length,
                pageSnapping: true,
                controller: _pageController,
                onPageChanged: (page) {
                  setState(() {
                    // activePage = page;
                  });
                },
                itemBuilder: (context, pagePosition) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      images[pagePosition],
                      fit: BoxFit.fill,
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recent Activity',
                  style: TextStyle(
                      fontFamily: 'semi-bold',
                      fontSize: 18,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                recentContainer(),
                recentContainer(),
                recentContainer(),
                recentContainer(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget recentContainer() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 20.0,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage('assets/images/profile.jpg'),
                        fit: BoxFit.cover)),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          'Hardik Gohil',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          softWrap: false,
                          style:
                              TextStyle(fontSize: 16, fontFamily: 'semi-bold'),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Text(
                '\$20.00',
                style: TextStyle(color: styleColor, fontSize: 16),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: Text('Jazz road no 23,Malad '),
              ),
              Expanded(
                flex: 2,
                child: Icon(
                  Icons.arrow_forward,
                  color: styleColor,
                ),
              ),
              Expanded(
                flex: 5,
                child: Text('Harvard University'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
