/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class ServiceListScreen extends StatefulWidget {
  ServiceListScreen({Key? key, Title? title}) : super(key: key);
  final String title = '';
  static const String page_id = 'Service List';

  @override
  State<ServiceListScreen> createState() => _ServiceListScreenState();
}

class _ServiceListScreenState extends State<ServiceListScreen> {
  List<Item> services = <Item>[
    Item('assets/images/massage1.jpg', 'Hot Stone Massage'),
    Item('assets/images/massage2.jpg', 'Aromatherapy Massage'),
    Item('assets/images/massage3.jpg', 'Swedish Massage'),
    Item('assets/images/massage4.jpg', 'Deep Tissue Massage'),
    Item('assets/images/massage5.jpg', 'Sports Massage'),
    Item('assets/images/massage6.jpg', 'Face Massage'),
    Item('assets/images/massage7.jpg', 'Reflexology'),
  ];
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Massage Services', style: style.pageTitleText()),
        centerTitle: true,
        backgroundColor: style.appColor,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.share))],
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Container(
        width: double.infinity,
        color: Color.fromARGB(255, 245, 245, 245),
        padding: EdgeInsets.all(16),
        child: ListView(
          shrinkWrap: true,
          children: List.generate(services.length, (index) {
            return _buildSingleService(services[index]);
          }),
        ),
      ),
    );
  }

  Widget _buildSingleService(service) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 30),
          decoration: outerContainer(),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: imageBox(service.img),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, left: 8, right: 8, bottom: 20),
                child: Text(
                  service.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontFamily: 'medium'),
                ),
              ),
            ],
          ),
        ),
        Positioned(
            left: (MediaQuery.of(context).size.width / 2) - 68,
            bottom: 15,
            child: Container(
              width: 100,
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  border: Border.all(width: 1, color: style.appColor)),
              child: Text(
                '\$ 20.00',
                textAlign: TextAlign.center,
                style: TextStyle(color: style.appColor, fontFamily: 'medium'),
              ),
            ))
      ],
    );
  }

  outerContainer() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(color: (Colors.grey[300])!, width: 1));
  }

  imageBox(val) {
    return BoxDecoration(
        image: DecorationImage(image: AssetImage(val), fit: BoxFit.cover),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5), topRight: Radius.circular(5)));
  }
}

class Item {
  const Item(this.img, this.name);
  final String img;
  final String name;
}
