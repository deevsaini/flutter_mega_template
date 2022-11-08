/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:iotask/pages/search.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../helper/style.dart' as style;

class DashboardPage extends StatefulWidget {
    DashboardPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Dashboard';

    @override
    State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

    bool check = true;

    List<Item> tasks = <Item> [
        Item('10:00', 'Meeting with client', Colors.blue),
        Item('11:30', 'Visit course', Colors.pink),
        Item('14:00', 'Design new pages', Colors.green),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBackColor,
            appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: Row(
                    children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_circle_outline, color: style.appGrey)
                        ),
                        IconButton(
                            onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                        return SearchPage();
                                    }
                                );
                            },
                            icon: Icon(Icons.search_outlined, color: style.appGrey)
                        ),
                    ],
                ),
                leadingWidth: 110,
                title: Text('Dashboard'),
                centerTitle: true,
                titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'medium'
                ),
                actions: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notifications_none, color: style.appGrey)
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
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Padding(
                            padding: EdgeInsets.all(16),
                            child: Text('Task Overview', style: greyTitle()),
                        ),
                        Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(16),
                            color: Colors.white,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Center(
                                        child: CircularPercentIndicator(
                                          radius: 60.0,
                                          lineWidth: 4.0,
                                          percent: 0.5,
                                          center: Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text('50%',
                                                style: TextStyle(
                                                    color: Color.fromARGB(255, 104,208,42),
                                                    fontFamily: 'semi-bold',
                                                    fontSize: 22,
                                                    height: 1
                                                ),
                                              ),
                                              Text('Share',
                                                style: TextStyle(
                                                    color: Color.fromARGB(255, 104,208,42),
                                                    fontSize: 14,
                                                    height: 1
                                                ),
                                              ),
                                            ],
                                          ),
                                          progressColor: Color.fromARGB(255, 104,208,42),
                                        )
                                    ),

                                    Container(
                                        padding: EdgeInsets.symmetric(vertical: 16),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Text('Projects Complete', style: boldText()),
                                                Text('Outdoor advertising is a low budget', style: greyText()),
                                            ],
                                        ),
                                    ),
                                    Divider(
                                        height: 1,
                                        color: Colors.grey[300],
                                    ),
                                    Container(
                                        padding: EdgeInsets.only(top: 16),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Text('Increase +2.0%', style: boldText()),
                                                Text('Comparable to thr previous weeks', style: greyText()),
                                            ],
                                        ),
                                    ),
                                ],
                            ),
                        ),
                        Padding(
                            padding: EdgeInsets.all(16),
                            child: Row(
                                children: [
                                    Icon(Icons.calendar_today, color: style.appGrey),
                                    SizedBox(width: 10),
                                    Text('28 February', style: greyTitle())
                                ],
                            ),
                        ),

                        Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(16),
                            child: ListView(
                                physics: ScrollPhysics(),
                                shrinkWrap: true,
                                children: List.generate(tasks.length, (index) {
                                    return _buildSingleTask(tasks[index]);
                                }),
                            )
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

    boldText() {
        return TextStyle(
            fontSize: 16,
            fontFamily: 'semi-bold'
        );
    }

    greyText() {
        return TextStyle(
            color: style.appGrey
        );
    }

    Widget _buildSingleTask(task) {
        return Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(
                        width: 4,
                        color: task.clr
                    )
                ),
                color: Colors.white
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Text(task.time,
                        style: TextStyle(
                            color: task.clr,
                            fontSize: 13
                        ),
                    ),
                    Text(task.title,
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'medium'
                        ),
                    ),
                ],
            ),
        );
    }

}

class Item {
    Item(this.time, this.title, this.clr);
    final String time;
    final String title;
    final Color clr;
}