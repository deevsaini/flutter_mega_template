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

class UserProfilePage extends StatefulWidget {
    UserProfilePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Contact Detail';

    @override
    State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {

    List<Item> tasks = <Item> [
        Item('Template description', true, Color.fromARGB(255, 255, 249, 238), Color.fromARGB(255, 255, 186, 81), 'Sketch'),
        Item('Budget and contract', false, Color.fromARGB(255, 255, 249, 238), Color.fromARGB(255, 255, 186, 81), 'Sketch'),
        Item('Search for a UI kit', false, Color.fromARGB(255, 244, 252, 239), Color.fromARGB(255, 164, 227, 124), 'Spotify'),
        Item('Review created screens', false, Color.fromARGB(255, 255, 241, 247), Color.fromARGB(255, 255, 126, 179), 'Dribble'),
        Item('Design search page', true, Color.fromARGB(255, 255, 249, 238), Color.fromARGB(255, 255, 186, 81), 'Sketch'),
        Item('Prepare HTML & CSS', false, Color.fromARGB(255, 255, 249, 238), Color.fromARGB(255, 255, 186, 81), 'Sketch'),
        Item('Update a UI kit', false, Color.fromARGB(255, 244, 252, 239), Color.fromARGB(255, 164, 227, 124), 'Spotify'),
        Item('Browser testing', false, Color.fromARGB(255, 244, 252, 239), Color.fromARGB(255, 164, 227, 124), 'Spotify'),
        Item('Fix Issues', false, Color.fromARGB(255, 255, 241, 247), Color.fromARGB(255, 255, 126, 179), 'Dribble'),
        Item('Update a UI kit', false, Color.fromARGB(255, 244, 252, 239), Color.fromARGB(255, 164, 227, 124), 'Spotify'),
        Item('Design search page', false, Color.fromARGB(255, 244, 252, 239), Color.fromARGB(255, 164, 227, 124), 'Spotify'),
        Item('Search for a UI kit', false, Color.fromARGB(255, 255, 241, 247), Color.fromARGB(255, 255, 126, 179), 'Dribble'),
        Item('Design search page', false, Color.fromARGB(255, 244, 252, 239), Color.fromARGB(255, 164, 227, 124), 'Spotify'),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBackColor,
            appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                automaticallyImplyLeading: false,
                leading: IconButton(
                    onPressed: () {
                        Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.keyboard_arrow_left, color: style.appGrey)
                ),
                title: Text('Details'),
                centerTitle: false,
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
            bottomNavigationBar: _buildBottomContainer(),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
                children: [
                    Stack(
                        overflow: Overflow.visible,
                        alignment: Alignment.center,
                        children: [
                            Container(
                                width: double.infinity,
                                height: 350,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(5)
                                    )
                                ), 
                                
                            ),
                            Positioned(
                                top: 290,
                                child: CircleAvatar(
                                    backgroundImage: AssetImage('assets/images/user.jpg'),
                                    radius: 60,
                                )
                            )
                        ],
                    ),
                    SizedBox(height: 70),
                    Text('Jonh Doe',
                        style: TextStyle(
                            fontFamily: 'medium',
                            fontSize: 18
                        ),
                    ),
                    Text('Manager',
                        style: TextStyle(
                            color: style.appGrey,
                        ),
                    ),
                    SizedBox(height: 16),
                    _buildChip('Business'),
                    SizedBox(height: 30),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            IconButton(
                                onPressed: () {}, 
                                icon: Image.asset('assets/images/facebook.png', width: 24)
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset('assets/images/twitter.png', width: 20)
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Image.asset('assets/images/linkedin.png', width: 20)
                            )
                        ],
                    )

                ],
            ),
        );
    }

    Widget _buildChip(val) {
        return Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: blueBox(),
            child: Text('$val', style: blueText()),
        );
    }

    blueBox() {
        return BoxDecoration(
            color: Color.fromARGB(255, 241, 245, 255),
            borderRadius: BorderRadius.all(
                Radius.circular(5)
            ),
        );
    }

    blueText() {
        return TextStyle(
            fontSize: 15,
            color: Color.fromARGB(255, 118 ,154, 254)
        );
    }

    greyTitle() {
        return TextStyle(
            fontFamily: 'medium',
            fontSize: 16,
            color: style.appGrey
        );
    }
    
    Widget _buildBottomContainer() {
        return Container(
          child: Row(
            children: [
              Expanded(
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.mail_outline, color: style.appGrey, size: 20),
                      label: Text('Email'.toUpperCase(),
                        style: TextStyle(
                            color: style.appGrey,
                            fontSize: 13,
                            fontFamily: 'medium'
                        ),
                      )
                  )
              ),
              Expanded(
                  child: TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.chat_outlined, color: style.appGrey, size: 20),
                      label: Text('Chat'.toUpperCase(),
                        style: TextStyle(
                            color: style.appGrey,
                            fontSize: 13,
                            fontFamily: 'medium'
                        ),
                      )
                  )
              )
            ],
          ),
        );
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