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

class CurrencyOptionsPage extends StatefulWidget {
    CurrencyOptionsPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Currency Options';

    @override
    State<CurrencyOptionsPage> createState() => _CurrencyOptionsPageState();
}

class _CurrencyOptionsPageState extends State<CurrencyOptionsPage> {

    List<Item> currency = <Item> [
        Item('\$', 'USD'),
        Item('AED', 'AED'),
        Item('\$', 'ARS'),
        Item('€', 'EUR'),
        Item('Лв', 'BGN'),
        Item('R\$', 'BRL'),
        Item('C\$', 'CAD'),
        Item('CHF', 'CHF'),
        Item('\$', 'CLP'),
        Item('¥', 'CNY'),
        Item('\$', 'COP'),
    ];

    String _currentCurrency = 'USD';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Color.fromARGB(255, 247, 247, 247),
            appBar: AppBar(
                centerTitle: true,
                elevation: 0,
                automaticallyImplyLeading: true,
                iconTheme: IconThemeData(
                    color: Colors.white
                ),
                title: Text('Currency Options'),
                titleTextStyle: style.pageTitleText(),
                flexibleSpace: Container(
                    decoration: style.appBarDecoration(),
                )
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                child: ListView(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(currency.length, (index) {
                        return Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1,
                                        color: (Colors.grey[300])!
                                    )
                                )
                            ),
                            child: ListTile(
                                contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 4),
                                title: Align(
                                    child: Text(currency[index].sign +" - "+ currency[index].name,
                                        style: TextStyle(fontSize: 16),
                                    ),
                                    alignment: Alignment(-1.1, 0),
                                ),
                                leading: Radio(
                                    value: currency[index].name,
                                    groupValue: _currentCurrency,
                                    onChanged: (e) {
                                        setState(() {
                                            _currentCurrency = currency[index].name;
                                        });
                                    },
                                    activeColor: style.appColor,
                                ),
                            ),
                        );
                    }),
                ),
            ),
        );
    }


}

class Item {
    const Item(this.sign, this.name);
    final String sign;
    final String name;
}