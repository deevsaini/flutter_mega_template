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
import '../helper/style.dart' as style;

class HelpPage extends StatefulWidget {
    HelpPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Help';

    @override
    State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {

    List<Item> help = <Item>[
        Item('How to check status of my order', false),
        Item('Change items in my order', false),
        Item('Cancel my order', false),
        Item('Change my delivery address', false),
        Item('Help with a pick-up order', false),
        Item('My delivery person made me unsafe', false),
        Item('Refunding Payment', false),
    ];


    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
                automaticallyImplyLeading: true,
                iconTheme: IconThemeData(
                    color: style.appColor
                ),
                title: Text('Help'),
                centerTitle: false,
                titleTextStyle: style.pageTitle(),
            ),
            body: SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.all(16),
                    child: _buildPanel()
                ),
            ),
        );
    }

    Widget _buildPanel() {
        return ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  help[index].isExpanded = !isExpanded;
                });
            },
            children: help.map<ExpansionPanel>((Item item) {
                return ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                            title: Text(item.headerValue),
                        );
                    },
                    body: Container(
                        padding: EdgeInsets.all(16),
                        child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
                    ),
                    isExpanded: item.isExpanded,
                );
            }).toList(),
        );
    }
}

class Item {
    Item(this.headerValue, this.isExpanded);

    String headerValue;
    bool isExpanded;
}