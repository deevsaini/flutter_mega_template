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

class CancelRequestPage extends StatefulWidget {
    CancelRequestPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Cancel Request';

    @override
    State<CancelRequestPage> createState() => _CancelRequestPageState();
}

class _CancelRequestPageState extends State<CancelRequestPage> {

    List<User> users = <User>[
        User(1, "Change my mind"),
        User(2, "Driver is late"),
        User(3, "I got lift"),
        User(4, "Driver too far"),
        User(5, "Driver ask to cancel"),
        User(6, "Other"),
    ];

    User selectedUser = User(1, "Aaron");

    @override

    setSelectedUser(User user) {
        setState(() {
            selectedUser = user;
        });
    }

    List<Widget> createRadioListUsers() {
        List<Widget> widgets = [];
        for (User user in users) {
            print(user);
            widgets.add(
                RadioListTile(
                    controlAffinity: ListTileControlAffinity.trailing,
                    contentPadding: EdgeInsets.all(0),
                    value: user,
                    groupValue: selectedUser,
                    title: Text(user.firstName,
                        style: TextStyle(
                            fontSize: 16
                        ),
                    ),
                    onChanged: (currentUser) {
                        setSelectedUser(user);
                    },
                    selected: selectedUser == user,
                    activeColor: style.appGreen,
                ),
            );
        }
        return widgets;
    }

    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                elevation: 0,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.white,
            ),
            bottomNavigationBar: _buildBottomContainer(),
            body: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: style.shadowContainer(),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                        Text('Cancel Request',
                            style: style.boldLabel(),
                        ),

                        SizedBox(height: 20),

                        ListView(
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            children: createRadioListUsers(),
                        ),

                    ],
                ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

    Widget _buildBottomContainer() {
        return Container(
            padding: EdgeInsets.all(16),
            child: Row(
                children: [
                    Expanded(
                        child: OutlinedButton(
                            onPressed: () {},
                            child: Text('Submit'),
                            style: style.outlineButtonStyle(),
                        )
                    ),
                    SizedBox(width: 16),
                    Expanded(
                        child: OutlinedButton(
                            onPressed: () {},
                            child: Text('Cancel'),
                            style: style.outlineButtonStyle(),
                        )
                    )
                ],
            ),
        );
    }

}

class User {
    int userId;
    String firstName;

    User(this.userId, this.firstName);
}