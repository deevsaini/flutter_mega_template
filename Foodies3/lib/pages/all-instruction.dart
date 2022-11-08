/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:gofoodflutter/pages/rest-detail.dart';
import 'package:gofoodflutter/pages/search.dart';
import '../helper/style.dart' as style;

class AllInstructionPage extends StatefulWidget {
    AllInstructionPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'All Instruction';

    @override
    State<AllInstructionPage> createState() => _AllInstructionPageState();
}

class _AllInstructionPageState extends State<AllInstructionPage> {

    List<Item> users = <Item>[
        Item('assets/images/user1.jpg', 'Mrs. Myra Ward', 'English'),
        Item('assets/images/user2.jpg', 'Mrs. Belle Ball', 'English, French'),
        Item('assets/images/user3.jpg', 'Mrs. Nellie Rose', 'Design'),
        Item('assets/images/user4.jpg', 'Mr. Travis Watkins', 'Analytics'),
        Item('assets/images/user5.jpg', 'Mr. Angel Bryan', 'Cooking'),
        Item('assets/images/user6.jpg', 'Mr. Gary Gardner', 'Business'),
        Item('assets/images/user7.jpg', 'Mr. Douglas Leonard', 'Business'),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: style.appGrey,
                elevation: 0,
                title: Text('All Instructor'),
                iconTheme: IconThemeData(
                    color: Colors.black
                ),
                titleTextStyle: style.pageTitle(),
                centerTitle: true,
                actions: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.filter_list)
                    )
                ],
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                color: style.appGrey,
                padding: EdgeInsets.all(16),
                child: ListView(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    children: List.generate(users.length, (index) {
                        return Container(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            decoration: style.borderBottom(),
                            child: Row(
                                children: [
                                    Container(
                                        height: 80,
                                        width: 80,
                                        margin: EdgeInsets.only(right: 12),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(users[index].img),
                                                fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100)
                                            )
                                        ),
                                    ),
                                    Expanded(
                                        child: Container(
                                            child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                    Text(users[index].name,
                                                        style: TextStyle(
                                                            fontFamily: 'medium',
                                                            fontSize: 16
                                                        ),
                                                    ),
                                                    SizedBox(height: 5),
                                                    Text(users[index].designation,
                                                        style: TextStyle(
                                                            color: style.appGreyText,
                                                        ),
                                                    ),
                                                    SizedBox(height: 5),
                                                    Row(
                                                        children: [
                                                            Icon(Icons.star, size: 18, color: style.appColor),
                                                            SizedBox(width: 3),
                                                            RichText(
                                                                textAlign: TextAlign.center,
                                                                text: TextSpan(
                                                                    text: '4.3 ',
                                                                    style: TextStyle(color: style.appColor, fontFamily: 'regular'),
                                                                    children: <TextSpan>[
                                                                        TextSpan(text: '(120 Reviews)',
                                                                            style: TextStyle(color: style.appGreyText)
                                                                        ),
                                                                    ],
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ],
                                            ),
                                        )
                                    ),
                                ],
                            ),
                        );
                    }),
                ),
            ),
        );
    }

}

class Item {
    const Item(this.img, this.name, this.designation);
    final String img;
    final String name;
    final String designation;
}