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

class DeleteFavouritePage extends StatefulWidget {
    DeleteFavouritePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Delete Favourite ';

    @override
    State<DeleteFavouritePage> createState() => _DeleteFavouritePageState();
}

class _DeleteFavouritePageState extends State<DeleteFavouritePage> {

    @override

    Widget build(BuildContext context) {
        return Scaffold(
            body: Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                          Text('Delete Favourite',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'medium',
                                  fontSize: 16
                              ),
                          ),

                          Text('Are you sure you want to delete ?',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15
                              ),
                          ),

                          SizedBox(height: 20),

                          Row(
                              children: [
                                  Expanded(
                                      child: OutlinedButton(
                                        onPressed: () {},
                                        child: Text('Yes'),
                                        style: style.outlineButtonStyle(),
                                      )
                                  ),
                                  SizedBox(width: 16),
                                  Expanded(
                                      child: OutlinedButton(
                                          onPressed: () {},
                                          child: Text('No'),
                                          style: style.outlineButtonStyle(),
                                      )
                                  )
                              ],
                          )

                    ],
                ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }



}