/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:pet_care/pages/add_pet_detail.dart';
import 'package:pet_care/pages/edit_profile.dart';
import '../components/styles.dart';

class MyProfile extends StatefulWidget {
  static const String id = 'MyProfile';

  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  int selectedValue = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          toolbarHeight: 170,
          iconTheme: IconThemeData(color: appColor),
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 3,
          shadowColor: backgroundColor,
          centerTitle: true,
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.black, fontFamily: 'bold'),
          ),
          automaticallyImplyLeading: false,
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EditProfile()));
                },
                child: Row(
                  children: [
                    Icon(Icons.edit_outlined),
                    SizedBox(width: 4),
                    appcolorText('Edit')
                  ],
                ))
          ],
          bottom: PreferredSize(
            child: Container(
                margin: EdgeInsets.only(bottom: 16),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 46,
                      backgroundImage: AssetImage('assets/images/pet.jpg'),
                    ),
                    SizedBox(height: 10),
                    blackHeading('Vivian Richard'),
                    greyText('Florida')
                  ],
                )),
            preferredSize: const Size(0.0, 60.0),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: ListView(
            children: [
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundColor: backgroundColor,
                      child: Icon(Icons.pets)),
                  title: Text('My pets'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddPetDetail()));
                  },
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundColor: backgroundColor,
                      child: Icon(Icons.favorite_border)),
                  title: Text('My favourites'),
                  onTap: () {},
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundColor: backgroundColor,
                      child: Icon(Icons.home_repair_service_outlined)),
                  title: Text('Add pet service'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddPetDetail()));
                  },
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundColor: backgroundColor,
                      child: Icon(Icons.share)),
                  title: Text('Invite friends'),
                  onTap: () {},
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundColor: backgroundColor,
                      child: Icon(Icons.help_outline)),
                  title: Text('Help'),
                  onTap: () {},
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
              Card(
                child: ListTile(
                  leading: CircleAvatar(
                      backgroundColor: backgroundColor,
                      child: Icon(Icons.settings_outlined)),
                  title: Text('Settings'),
                  onTap: () {},
                  trailing: Icon(Icons.chevron_right),
                ),
              ),
            ],
          ),
        ));
  }
}
