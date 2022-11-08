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

class NewDashboardPage extends StatefulWidget {
    NewDashboardPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'New Dashboard';

    @override
    State<NewDashboardPage> createState() => _NewDashboardPageState();
}

class _NewDashboardPageState extends State<NewDashboardPage> {

    List<Item> tasks = <Item> [
        Item('Design new home page', true),
        Item('Send design sample to the customer', false),
        Item('Add more', false),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBackColor,
            appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                title: Text('Design new dashboard'),
                titleSpacing: 0,
                centerTitle: false,
                titleTextStyle: TextStyle(
                    fontSize: 18,
                    fontFamily: 'medium',
                    color: Colors.black
                ),
                actions: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.check_circle_outline, color: style.appGrey)
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_horiz, color: style.appGrey)
                    ),
                    CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/user.jpg'),
                    ),
                    SizedBox(width: 16),
                ],
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text('Description', style: greyTitle()),
                        ),
                        Container(
                            padding: EdgeInsets.all(16),
                            decoration: whiteContainer(),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text('There is no denying the fact that the success of an advertisement lies '
                                        'mostly in the headline should attract the reader'),

                                    Container(
                                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                        margin: EdgeInsets.only(top: 16),
                                        decoration: orangeBox(),
                                        child: Text('Sketch Redesign', style: orangeText()),
                                    )
                                ],
                            ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text('Checklist', style: greyTitle()),
                        ),
                        Container(
                            padding: EdgeInsets.all(16),
                            decoration: whiteContainer(),
                            child: ListView(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              children: List.generate(tasks.length, (index) {
                                return _buildSingleTask(tasks[index]);
                              }),
                            ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text('Attachment', style: greyTitle()),
                        ),
                        Container(
                            padding: EdgeInsets.all(16),
                            decoration: whiteContainer(),
                            child: Row(
                                children: [
                                    Icon(Icons.add_circle_outline, color: style.appGrey),
                                    SizedBox(width: 8),
                                    Expanded(
                                        child: Text('Upload your attachment',
                                            style: TextStyle(
                                                color: style.appGrey,
                                                fontFamily: 'medium',
                                                fontSize: 15
                                            ),
                                        )
                                    )
                                ],
                            ),
                        ),
                        Row(
                            children: [
                                Expanded(
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            Padding(
                                                padding: EdgeInsets.symmetric(vertical: 10),
                                                child: Text('Assigned to', style: greyTitle()),
                                            ),
                                            Container(
                                                width: double.infinity,
                                                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 9),
                                                decoration: whiteContainer(),
                                                child: Row(
                                                    children: [
                                                        CircleAvatar(
                                                            backgroundImage: AssetImage('assets/images/user.jpg'),
                                                            radius: 20,
                                                        ),
                                                        SizedBox(width: 8),
                                                        Expanded(
                                                            child: Text('NELLIE BOONE',
                                                                style: TextStyle(
                                                                    fontFamily: 'medium',
                                                                    fontSize: 15,
                                                                ),
                                                            )
                                                        )
                                                    ],
                                                ),
                                            ),
                                        ],
                                    )
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            Padding(
                                                padding: EdgeInsets.symmetric(vertical: 10),
                                                child: Text('Due to', style: greyTitle()),
                                            ),
                                            Container(
                                                width: double.infinity,
                                                padding: EdgeInsets.all(16),
                                                decoration: whiteContainer(),
                                                child: Text('14 April 2022',
                                                    style: TextStyle(
                                                        fontFamily: 'medium',
                                                        fontSize: 16,
                                                    ),
                                                ),
                                            ),
                                        ],
                                    )
                                )
                            ],
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text('Comments', style: greyTitle()),
                        ),
                        TextField(
                            maxLines: 4,
                            decoration: style.inputTextDecoration('Your message'),
                        ),
                        SizedBox(height: 16),
                        Container(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Add Task'),
                                style: style.simpleButton(),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    greyTitle() {
        return TextStyle(
            fontFamily: 'medium',
            fontSize: 16,
            color: style.appGrey
        );
    }

    whiteContainer() {
        return BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
                Radius.circular(5)
            )
        );
    }

    borderDecoration() {
        return OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
                color: Colors.transparent
            )
        );
    }

    orangeBox() {
        return BoxDecoration(
            color: Color.fromARGB(255, 255, 249, 238),
            borderRadius: BorderRadius.all(
                Radius.circular(5)
            ),
        );
    }

    orangeText() {
        return TextStyle(
            fontSize: 15,
            color: Color.fromARGB(255, 255, 186, 81)
        );
    }

    Widget _buildSingleTask(task) {
        return Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            decoration: style.borderBottom(),
            child: Row(
              children: [
                SizedBox(
                    width: 24,
                    height: 24,
                    child: Checkbox(
                        value: task.status,
                        onChanged: (bool? val) {
                          setState(() {
                            task.status = !task.status;
                          });
                        }
                    )
                ),
                SizedBox(width: 10),
                Expanded(
                    child: Text(task.title,
                      style: TextStyle(
                          fontFamily: 'medium',
                          fontSize: 15
                      ),
                    )
                )
              ],
            ),
        );
    }
}

class Item {
    Item(this.title, this.status);
    final String title;
    bool status;
}