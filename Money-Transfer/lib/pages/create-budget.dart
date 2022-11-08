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

class CreateBudgetPage extends StatefulWidget {
    CreateBudgetPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Create Budget';

    @override
    State<CreateBudgetPage> createState() => _CreateBudgetPageState();
}

class _CreateBudgetPageState extends State<CreateBudgetPage> {

    List<Item> types = <Item>[
        Item('assets/images/home.png', 'Bank'),
        Item('assets/images/money.png', 'Cash'),
    ];

    String currentType = 'Bank';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBack,
            appBar: AppBar(
                backgroundColor: style.appBack,
                automaticallyImplyLeading: false,
                elevation: 0,
            ),
            body: SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                            Text('Create Budget', style: style.pageTitle()),
                            SizedBox(height: 20),
                            Text('Choose category of budget',
                                style: style.subTitle(),
                            ),
                            SizedBox(height: 20),

                            Container(
                                height: 200,
                                margin: EdgeInsets.only(bottom: 24),
                                width: double.infinity,
                                child: ListView(
                                    shrinkWrap: true,
                                    physics: ScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    children: List.generate(types.length, (index) {
                                        return _buildSingleItem(types[index]);
                                    }),
                                ),
                            ),

                            TextField(
                                decoration: style.inputTextDecoration('Enter budget name', Colors.white),
                            ),
                            SizedBox(height: 20),
                            TextField(
                                decoration: style.inputTextDecoration('Choose Category', Colors.white),
                            ),
                            SizedBox(height: 20),
                            Row(
                                children: [
                                    Expanded(
                                        child: TextField(
                                            decoration: style.inputTextDecoration('Enter Amount', Colors.white),
                                        )
                                    ),
                                    SizedBox(width: 16),
                                    Expanded(
                                        child: TextField(
                                            decoration: style.inputTextDecoration('Choose Tags', Colors.white),
                                        )
                                    )
                                ],
                            ),
                            SizedBox(height: 20),
                            Container(
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Create Budget'),
                                    style: style.simpleButton(),
                                ),
                            ),

                        ],
                    ),
                ),
            ),
        );
    }

    Widget _buildSingleItem(type) {
        return InkWell(
            onTap: () {
                setState(() {
                    currentType = type.title;
                });
            },
            child: Container(
                width: 240,
                margin: EdgeInsets.only(right: 16),
                padding: EdgeInsets.all(16),
                decoration: BoxContainer(type),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Container(
                            width: 80,
                            height: 80,
                            margin: EdgeInsets.only(bottom: 54),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(100)
                                )
                            ),
                            child: Center(
                                child: Image.asset(type.img, width: 40),
                            ),
                        ),
                        Text(type.title,
                            style: TextStyle(
                                color: type.title == currentType ? style.appColor : Colors.white,
                                fontFamily: 'medium',
                                fontSize: 18
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    BoxContainer(type) {
        return BoxDecoration(
            border: Border.all(
                width: 2,
                color: type.title == currentType ? style.appColor: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(
                Radius.circular(16)
            ),
            color: type.title == currentType ? Colors.white: style.appColor,
        );
    }
}


class Item {
    Item(this.img, this.title);
    final String img;
    final String title;
}