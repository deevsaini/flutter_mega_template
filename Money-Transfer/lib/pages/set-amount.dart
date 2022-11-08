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

class SetAmountPage extends StatefulWidget {
    SetAmountPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Set Amount';

    @override
    State<SetAmountPage> createState() => _SetAmountPageState();
}

class _SetAmountPageState extends State<SetAmountPage> {

    String quickAmount = '\$500';

    List<Item> users = <Item>[
        Item('assets/images/user1.jpg', 'Michel'),
        Item('assets/images/user2.jpg', 'Billy'),
        Item('assets/images/user3.jpg', 'Mark'),
        Item('assets/images/user4.jpg', 'James'),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBack,
            appBar: AppBar(
                backgroundColor: style.appBack,
                automaticallyImplyLeading: false,
                elevation: 0,
            ),
            body: _buildBody(),
        );
    }

    Widget _buildBody() {
        return SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                        Text('Set Amount', style: style.pageTitle()),
                        Text('How much you would like to send?',
                            style: style.subTitle(),
                        ),

                        SizedBox(height: 24),
                        Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(16),
                            decoration: style.whiteContainer(),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    SizedBox(height: 20),
                                    Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                            Container(
                                                height: 46,
                                                width: 46,
                                                decoration: qtyBtn(),
                                                child: Icon(Icons.add, color: Colors.white, size: 30),
                                            ),
                                            Padding(
                                                padding: EdgeInsets.symmetric(horizontal: 20),
                                                child: Text('\$7000',
                                                    style: TextStyle(
                                                        fontSize: 26,
                                                        color: style.appColor,
                                                        fontFamily: 'semi-bold'
                                                    ),
                                                ),
                                            ),
                                            Container(
                                                height: 46,
                                                width: 46,
                                                decoration: qtyBtn(),
                                                child: Icon(Icons.remove, color: Colors.white, size: 30),
                                            ),
                                        ],
                                    ),
                                    SizedBox(height: 20),
                                    Text('Quick Actions', style: style.simpleText()),
                                    SizedBox(height: 20),
                                    Row(
                                        children: [
                                            Expanded(
                                                child: InkWell(
                                                    onTap: () {
                                                        setState(() {
                                                            quickAmount = '\$500';
                                                        });
                                                    },
                                                    child: Container(
                                                        padding: EdgeInsets.symmetric(vertical: 12),
                                                        decoration: amountBox('\$500'),
                                                        child: Text('\$500',
                                                            textAlign: TextAlign.center,
                                                            style: amountText('\$500')
                                                        ),
                                                    ),
                                                )
                                            ),
                                            SizedBox(width: 16),
                                            Expanded(
                                                child: InkWell(
                                                    onTap: () {
                                                        setState(() {
                                                            quickAmount = '\$1500';
                                                        });
                                                    },
                                                    child: Container(
                                                        padding: EdgeInsets.symmetric(vertical: 12),
                                                        decoration: amountBox('\$1500'),
                                                        child: Text('\$1500',
                                                            textAlign: TextAlign.center,
                                                            style: amountText('\$1500')
                                                        ),
                                                    ),
                                                )
                                            ),
                                            SizedBox(width: 16),
                                            Expanded(
                                                child: InkWell(
                                                    onTap: () {
                                                        setState(() {
                                                            quickAmount = '\$2000';
                                                        });
                                                    },
                                                    child: Container(
                                                        padding: EdgeInsets.symmetric(vertical: 12),
                                                        decoration: amountBox('\$2000'),
                                                        child: Text('\$2000',
                                                            textAlign: TextAlign.center,
                                                            style: amountText('\$2000')
                                                        ),
                                                    ),
                                                )
                                            ),
                                        ],
                                    ),
                                ],
                            ),
                        ),
                        SizedBox(height: 24),

                        Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(16),
                            decoration: style.whiteContainer(),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text('To whom you want to send?', style: style.simpleText()),
                                    SizedBox(height: 20),
                                    Container(
                                        height: 110,
                                        width: double.infinity,
                                        child: ListView(
                                            physics: ScrollPhysics(),
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            children: List.generate(users.length, (index) {
                                                return _buildSingleUser(users[index]);
                                            }),
                                        )
                                    ),
                                ],
                            ),
                        ),
                        SizedBox(height: 24),
                        Row(
                            children: [
                                Expanded(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Transfer'),
                                      style: style.simpleButton(),
                                    )
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text('Cancel'),
                                      style: style.whiteButton(),
                                    )
                                ),
                            ],
                        ),
                    ],
                ),
            ),
        );
    }

    qtyBtn() {
        return BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(8)
            ),
            color: style.appBlue
        );
    }

    amountBox(val) {
        return BoxDecoration(
            color: val == quickAmount ? style.appBlue : style.appLight,
            borderRadius: BorderRadius.all(
                Radius.circular(8)
            )
        );
    }

    amountText(val) {
        return TextStyle(
            color: val == quickAmount ? Colors.white : style.appBlue,
            fontFamily: 'semi-bold',
            fontSize: 16
        );
    }

    Widget _buildSingleUser(user) {
        return Container(
            margin: EdgeInsets.only(right: 16),
            child: Column(
                children: [
                    Container(
                        height: 70,
                        width: 70,
                        margin: EdgeInsets.only(bottom: 8),
                        decoration: style.roundImage(user.img),
                    ),
                    Text(user.name)
                ],
            ),
        );
    }

}


class Item {
    const Item(this.img, this.name);
    final String img;
    final String name;
}