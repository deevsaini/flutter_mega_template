/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food2/models/spotlight.dart';
import '../components/styles.dart' as style;

class SearchFoodListItemView extends StatelessWidget {
  const SearchFoodListItemView({
    Key? key,
    required this.food,
  }) : super(key: key);

  final SpotlightBestTopFood food;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
              boxShadow: const <BoxShadow>[
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 2.0,
                )
              ],
            ),
            child: Image.asset(
              food.image,
              height: 85.0,
              width: 85.0,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(food.name,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'semibold',
                        fontSize: 14)),
                Text(food.address,
                    style: TextStyle(
                        color: Colors.black45,
                        fontFamily: 'medium',
                        fontSize: 12)),
                Text(food.desc,
                    style: TextStyle(
                        color: style.appColor,
                        fontFamily: 'medium',
                        fontSize: 12)),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      size: 14.0,
                      color: Colors.orange,
                    ),
                    Text(food.ratingTimePrice,
                        style: TextStyle(color: Colors.black45, fontSize: 12))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
