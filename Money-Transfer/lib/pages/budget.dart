/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:moneytransaction/pages/create-budget.dart';
import '../helper/style.dart' as style;

class BudgetPage extends StatefulWidget {
    BudgetPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Budget';

    @override
    State<BudgetPage> createState() => _BudgetPageState();
}

class _BudgetPageState extends State<BudgetPage> {

    List<String> months = <String>[
        'January', 'February', 'March', 'April', 'May', 'June', 'July',
        'August', 'September', 'October', 'November', 'December'
    ];

    List<Item> budgets = <Item>[
        Item('Chilren Education', 5, '\$5,000.00'),
        Item('Home Mediacl', 7.5, '\$60,000.00'),
        Item('Office & Business', 3, '\$25,000.00'),
    ];

    String _currentMonth = 'January';

    late double screenWidth;

    @override
    Widget build(BuildContext context) {
        screenWidth = MediaQuery.of(context).size.width - 64;
        return Scaffold(
            backgroundColor: style.appBack,
            appBar: AppBar(
                backgroundColor: style.appBack,
                automaticallyImplyLeading: false,
                elevation: 0,
            ),
            body: SingleChildScrollView(
                padding: EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                        Text('Budget', style: style.pageTitle()),
                        SizedBox(height: 20),

                        Container(
                            width: double.infinity,
                            height: 50,
                            margin: EdgeInsets.only(bottom: 40),
                            child: ListView(
                                shrinkWrap: true,
                                physics: ScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: List.generate(months.length, (index) {
                                    return _buildMonth(months[index]);
                                }),
                            ),
                        ),

                        ListView(
                            shrinkWrap: true,
                            children: List.generate(budgets.length, (index) {
                                return Container(
                                  padding: EdgeInsets.all(16),
                                  decoration: style.whiteContainer(),
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: _buildBudget(budgets[index]),
                                );
                            }),
                        ),

                        Container(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {
                                    Navigator.push(context, new MaterialPageRoute(
                                        builder: (context) => new CreateBudgetPage())
                                    );
                                },
                                child: Text('Set New Budget'),
                                style: style.simpleButton(),
                            ),
                        ),

                    ],
                ),
            ),
        );
    }

    Widget _buildMonth(val) {
        return InkWell(
            onTap: () {
                setState(() {
                    _currentMonth = val;
                });
            },
            child: Container(
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(10)
                    ),
                    color: _currentMonth == val ? style.appColor: Colors.white
                ),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Text(val,
                    style: TextStyle(
                        color: _currentMonth == val ? Colors.white : Colors.black,
                        fontFamily: 'medium'
                    ),
                ),
            ),
        );
    }

    greyText() {
        return TextStyle(
            color: Colors.grey,
        );
    }
    
    Widget _buildBudget(budget) {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(budget.title, style: greyText()),
                Row(
                    children: [
                        Expanded(
                            child: RichText(
                                text: TextSpan(
                                    text: budget.amount,
                                    style: TextStyle(fontSize: 15, color: Colors.black, fontFamily: 'semi-bold'),
                                    children: <TextSpan>[
                                        TextSpan(text: ' 50%', style: TextStyle(fontFamily: 'regular', color: Colors.grey, fontSize: 15)),
                                    ],
                                ),
                            )
                        ),
                        Text('\$5000.00', style: greyText()),
                    ],
                ),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Stack(
                        children: [
                            Container(
                                width: double.infinity,
                                height: 4,
                                color: style.appBlue,
                            ),
                            Container(
                                width: (screenWidth * budget.percent)  / 10,
                                height: 4,
                                color: style.appColor
                            )
                        ],
                    ),
                )
            ],
        );
    }

}

class Item {
    Item(this.title, this.percent, this.amount);
    final String title;
    final double percent;
    final String amount;
}