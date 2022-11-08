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

class OrdersPage extends StatefulWidget {
    OrdersPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Orders';

    @override
    State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {

    String currentTab = 'BIGBASKET';
    late double screenHeight;

    @override
    Widget build(BuildContext context) {
        screenHeight = MediaQuery.of(context).size.height;
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(56),
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
                onPressed: () {
                    Navigator.of(context).pop();
                },
                icon: Icon(Icons.keyboard_arrow_left),
            ),
            title: Text('My Orders'),
            titleTextStyle: style.whitePageTitle()
        );
    }

    Widget _buildBody(context) {
        return Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Container(
                        color: style.appBackColor,
                        child: Row(
                            children: [
                                _buildTab('BIGBASKET'),
                                _buildTab('BB NOW'),
                            ],
                        ),
                    ),
                    Container(
                        height: screenHeight-136,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Image.asset('assets/images/file.png', width: 100),
                                SizedBox(height: 20),
                                Text('We are waiting to deliver your first order.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'medium'
                                    ),
                                ),
                                SizedBox(height: 16),
                                Text('Shop products from india\'s largest online supermarket',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.grey
                                    ),
                                ),
                                SizedBox(height: 16),
                                Container(
                                    width: 200,
                                    margin: EdgeInsets.only(bottom: 20),
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Start Shopping'),
                                        style: style.simpleButton(),
                                    ),
                                ),
                            ],
                        ),
                    )
                ],
            ),
        );
    }

    Widget _buildTab(val) {
        return InkWell(
            onTap: () {
                setState(() {
                    currentTab = val;
                });
            },
            child: Container(
                padding: EdgeInsets.all(16),
                decoration: tabDecoration('$val'),
                child: Text('$val',
                    style: TextStyle(
                        fontFamily: 'medium',
                        color: currentTab == val ? Colors.black : Color.fromARGB(255, 139, 139, 139)
                    ),
                ),
            )
        );
    }

    tabDecoration(val) {
        return BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    width: 3,
                    color: val == currentTab ? Colors.black : Colors.transparent
                )
            )
        );
    }

    greyLabel() {
        return TextStyle(
            color: Colors.grey,
            fontSize: 14
        );
    }

}