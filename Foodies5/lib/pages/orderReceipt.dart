/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:food2/helper/style.dart' as style;

class orderReciept extends StatefulWidget {
  orderReciept({Key? key}) : super(key: key);

  static const String page_id = 'Order Receipt';

  @override
  _orderRecieptState createState() => _orderRecieptState();
}

class _orderRecieptState extends State<orderReciept> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(10),
      content: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order Receipt',
                  style: style.headText(),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            allItems('Caramel Macchiato'),
            allItems('Americano'),
            allItems('Caramel Macchiato'),
            SizedBox(
              height: 10,
            ),
            biilDetails('Sub total price', '\$26.29'),
            biilDetails('Delivery fee', '\$8'),
            biilDetails('Promo code', 'None'),
            biilDetails('Total price', '\$34.29'),
          ],
        ),
      ),
    );
  }

  Widget allItems(item) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey.shade200, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(5)),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 5),
              child: SizedBox(
                width: 150,
                child: Text(
                  item,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  softWrap: false,
                  style: TextStyle(fontSize: 14, fontFamily: 'medium'),
                ),
              ),
            ),
          ),
          Text(
            '\$5.25',
            style: TextStyle(fontSize: 16, fontFamily: 'medium'),
          )
        ],
      ),
    );
  }

  Widget biilDetails(text, detail) {
    return Container(
      margin: EdgeInsets.only(bottom: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(color: Colors.grey),
          ),
          Text(
            detail,
            style: TextStyle(fontFamily: 'semi-bold'),
          ),
        ],
      ),
    );
  }
}
