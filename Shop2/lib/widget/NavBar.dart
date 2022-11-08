/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:shop2/pages/Contact.dart';
import 'package:shop2/pages/Item_detail.dart';
import 'package:shop2/pages/add_address.dart';
import 'package:shop2/pages/blog.dart';
import 'package:shop2/pages/blog_info.dart';
import 'package:shop2/pages/cart.dart';
import 'package:shop2/pages/categories.dart';
import 'package:shop2/pages/checkout.dart';
import 'package:shop2/pages/collection.dart';
import 'package:shop2/pages/home.dart';
import 'package:shop2/pages/payment_method.dart';
import 'package:shop2/pages/product.dart';
import 'package:shop2/pages/story.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Admin'),
            accountEmail: Text('admin@initappz.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/collection.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage('assets/images/tom.jpg')),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Home()));
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text('Items'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ItemDetail()));
            },
          ),
          ListTile(
            leading: Icon(Icons.view_comfy_alt_sharp),
            title: Text('Products'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Product()));
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Cart'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Cart()));
            },
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '8',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.category),
            title: Text('Categories'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Categories()));
            },
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Collection'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Collection()));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.location_city),
            title: Text('Add Address'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AddAddress()));
            },
          ),
          ListTile(
            leading: Icon(Icons.check_circle),
            title: Text('Checkout'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Checkout()));
            },
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text('Contact'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Contact()));
            },
          ),
          ListTile(
            leading: Icon(Icons.smart_toy_rounded),
            title: Text('Story'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Story()));
            },
          ),
          ListTile(
            leading: Icon(Icons.mail_rounded),
            title: Text('Blog'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Blog()));
            },
          ),
          ListTile(
            leading: Icon(Icons.mail_rounded),
            title: Text('Blog Detail'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BlogInfo()));
            },
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Payment Method'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaymentMethod()));
            },
          ),
        ],
      ),
    );
  }
}
