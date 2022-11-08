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

class ContactDetailPage extends StatefulWidget {
  ContactDetailPage({Key? key, Title? title}) : super(key: key);
  final String title = '';
  static const String page_id = 'Contact Detail';

  @override
  State<ContactDetailPage> createState() => _ContactDetailPageState();
}

class _ContactDetailPageState extends State<ContactDetailPage> {
  List<Item> tasks = <Item>[
    Item('Template description', true, Color.fromARGB(255, 255, 249, 238),
        Color.fromARGB(255, 255, 186, 81), 'Sketch'),
    Item('Budget and contract', false, Color.fromARGB(255, 255, 249, 238),
        Color.fromARGB(255, 255, 186, 81), 'Sketch'),
    Item('Search for a UI kit', false, Color.fromARGB(255, 244, 252, 239),
        Color.fromARGB(255, 164, 227, 124), 'Spotify'),
    Item('Review created screens', false, Color.fromARGB(255, 255, 241, 247),
        Color.fromARGB(255, 255, 126, 179), 'Dribble'),
    Item('Design search page', true, Color.fromARGB(255, 255, 249, 238),
        Color.fromARGB(255, 255, 186, 81), 'Sketch'),
    Item('Prepare HTML & CSS', false, Color.fromARGB(255, 255, 249, 238),
        Color.fromARGB(255, 255, 186, 81), 'Sketch'),
    Item('Update a UI kit', false, Color.fromARGB(255, 244, 252, 239),
        Color.fromARGB(255, 164, 227, 124), 'Spotify'),
    Item('Browser testing', false, Color.fromARGB(255, 244, 252, 239),
        Color.fromARGB(255, 164, 227, 124), 'Spotify'),
    Item('Fix Issues', false, Color.fromARGB(255, 255, 241, 247),
        Color.fromARGB(255, 255, 126, 179), 'Dribble'),
    Item('Update a UI kit', false, Color.fromARGB(255, 244, 252, 239),
        Color.fromARGB(255, 164, 227, 124), 'Spotify'),
    Item('Design search page', false, Color.fromARGB(255, 244, 252, 239),
        Color.fromARGB(255, 164, 227, 124), 'Spotify'),
    Item('Search for a UI kit', false, Color.fromARGB(255, 255, 241, 247),
        Color.fromARGB(255, 255, 126, 179), 'Dribble'),
    Item('Design search page', false, Color.fromARGB(255, 244, 252, 239),
        Color.fromARGB(255, 164, 227, 124), 'Spotify'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: style.appBackColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_circle_outline, color: style.appGrey)),
        title: Text('Contact Details'),
        centerTitle: true,
        titleTextStyle:
            TextStyle(color: Colors.black, fontSize: 18, fontFamily: 'medium'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none, color: style.appGrey)),
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
      child: Stack(
//                alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 250,
            color: Colors.grey,
          ),
//                    Positioned(
//                        top: 30,
//                        child: CircleAvatar(
//                            backgroundImage: AssetImage('assets/images/user.jpg'),
//                            radius: 60,
//                        ),
//                    ),
          Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                            top: -76,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/user.jpg'),
                              radius: 60,
                            )),
                        Column(
                          children: [
                            SizedBox(height: 50),
                            Text(
                              'Jonh Doe',
                              style:
                                  TextStyle(fontFamily: 'medium', fontSize: 18),
                            ),
                            SizedBox(height: 3),
                            Text(
                              'UI/UX Designer',
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Conversation can be a tricky business. Sometimes, decoding what is said with what is meant is difficult at best.',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _buildChip('Business'),
                                _buildChip('Management'),
                                _buildChip('PHP'),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(
                            child: Row(
                          children: [
                            Icon(Icons.folder, color: style.appGrey),
                            SizedBox(width: 8),
                            Text('Projects', style: greyTitle()),
                          ],
                        )),
                        Row(
                          children: [
                            Text('All', style: greyTitle()),
                            SizedBox(width: 8),
                            Icon(Icons.keyboard_arrow_down,
                                color: style.appGrey),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(16),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Column(
                      children: [
                        ListView(
                          shrinkWrap: true,
                          physics: ScrollPhysics(),
                          children: List.generate(tasks.length, (index) {
                            return Container(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              decoration: style.borderBottom(),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Row(
                                    children: [
                                      SizedBox(
                                          width: 24,
                                          height: 24,
                                          child: Checkbox(
                                              value: tasks[index].status,
                                              onChanged: (bool? val) {
                                                setState(() {
                                                  tasks[index].status =
                                                      !tasks[index].status;
                                                });
                                              })),
                                      SizedBox(width: 10),
                                      Expanded(
                                          child: Text(
                                        tasks[index].title,
                                        style: TextStyle(
                                            fontFamily: 'medium', fontSize: 15),
                                      ))
                                    ],
                                  )),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    decoration: BoxDecoration(
                                      color: tasks[index].clr1,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    child: Text(
                                      tasks[index].detail,
                                      style:
                                          TextStyle(color: tasks[index].clr2),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                        )
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }

  Widget _buildChip(val) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      margin: EdgeInsets.symmetric(horizontal: 4),
      decoration: blueBox(),
      child: Text('$val', style: blueText()),
    );
  }

  blueBox() {
    return BoxDecoration(
      color: Color.fromARGB(255, 241, 245, 255),
      borderRadius: BorderRadius.all(Radius.circular(5)),
    );
  }

  blueText() {
    return TextStyle(fontSize: 15, color: Color.fromARGB(255, 118, 154, 254));
  }

  greyTitle() {
    return TextStyle(fontFamily: 'medium', fontSize: 16, color: style.appGrey);
  }
}

class Item {
  Item(this.title, this.status, this.clr1, this.clr2, this.detail);
  final String title;
  bool status;
  final Color clr1;
  final Color clr2;
  final String detail;
}
