/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:parkme/pages/filter.dart';
import 'package:parkme/pages/history.dart';
import 'package:parkme/pages/profile.dart';
import 'package:parkme/pages/search_parking.dart';
import 'package:parkme/pages/support.dart';
import 'package:parkme/pages/wallet.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('John Snow'),
            accountEmail: Text(
              'admin@initappz.com',
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/profile.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          ListTile(
            leading: Icon(Icons.directions_car),
            title: Text('Vehicles'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SearchParking()));
            },
          ),
          ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text('Wallet'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Wallet()));
              }),
          ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Profile()));
              }),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('History'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const History()));
            },
          ),
          ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text('Filter'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Filter()));
              }),
          ListTile(
            leading: Icon(Icons.how_to_vote_rounded),
            title: Text('How it works?'),
            onTap: () {},
          ),
          ListTile(
              leading: Icon(Icons.support_agent),
              title: Text('Support'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Support()));
              }),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setttings'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
