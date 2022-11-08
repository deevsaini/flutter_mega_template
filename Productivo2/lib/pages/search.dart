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

class SearchPage extends StatefulWidget {
    SearchPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Search';

    @override
    State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

    List<Item> searchList = <Item> [
        Item(Icons.work_outline, 'Search for projects'),
        Item(Icons.checklist, 'Search for assigned task'),
        Item(Icons.calendar_today, 'Search for created events'),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBackColor,
            appBar: AppBar(
                backgroundColor: style.appColor,
                elevation: 0,
                leading: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search_outlined)
                ),
                title: Text('Type to Search'),
                titleSpacing: 0,
                centerTitle: false,
                titleTextStyle: TextStyle(
                    fontSize: 18,
                    fontFamily: 'medium'
                ),
                actions: [
                    IconButton(
                        onPressed: () {
                            Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.close)
                    ),
                ],
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                child: ListView(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    children: List.generate(searchList.length, (index) {
                        return Container(
                            padding: EdgeInsets.all(16),
                            decoration: style.borderBottom(),
                            child: Row(
                                children: [
                                    Icon(searchList[index].icn, color: style.appGrey),
                                    SizedBox(width: 10),
                                    Expanded(
                                        child: Text(searchList[index].text,
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: style.appGrey
                                            ),
                                        )
                                    )
                                ],
                            ),
                        );
                    }),
                )
            )
        );
    }

}

class Item {
    Item(this.icn, this.text);

    final IconData icn;
    final String text;
}