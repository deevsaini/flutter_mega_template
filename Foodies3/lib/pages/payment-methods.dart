/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import '../helper/style.dart' as style;

class PaymentMethodPage extends StatefulWidget {
    PaymentMethodPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Payment Method';

    @override
    State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {

    List<Item> cards = <Item>[
        Item('assets/images/visa.png', 'June 10, 2020'),
        Item('assets/images/mastercard.png', 'Aug 10, 2020'),
    ];

    int _currentCard = 0;

    List<String> cardType = [
        'Visa', 'Master card'
    ];

    String dropdownValue = 'Visa';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: style.appGrey,
                elevation: 0,
                iconTheme: IconThemeData(
                    color: Colors.black
                ),
                actions: [
                    TextButton(
                        onPressed: () {},
                        child: Text('Edit'),
                        style: TextButton.styleFrom(
                            primary: style.appColor
                        ),
                    )
                ],
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
            color: style.appGrey,
                padding: EdgeInsets.all(16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text('Payment Methods', style: style.boldTitle()),
                        SizedBox(height: 16),

                        ListView(
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            children: List.generate(cards.length, (index) {
                                return Container(
                                    padding: EdgeInsets.only(left: 16, right: 4, top: 8, bottom: 8),
                                    margin: EdgeInsets.only(bottom: 16),
                                    decoration: style.whiteContainer(),
                                    child: ListTile(
                                        contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
                                        leading: Image.asset(cards[index].img, width: 44),
                                        title: Align(
                                            child: Text('XXXX-XXXX-XXXX-4242',
                                                style: TextStyle(fontFamily: 'medium', fontSize: 15),
                                            ),
                                            alignment: Alignment(-1.0, 0),
                                        ),
                                        subtitle: Text(cards[index].name,
                                            style: TextStyle(color: style.appGreyText),
                                        ),
                                        trailing: Radio(
                                            value: index,
                                            groupValue: _currentCard,
                                            onChanged: (e) {
                                              setState(() {
                                                _currentCard = index;
                                              });
                                            },
                                            activeColor: style.appColor,
                                        ),
                                    ),
                                );
                            }),
                        ),

                        Text('Add Payment Methods', style: style.boldTitle()),
                        SizedBox(height: 16),

                        Container(
                            padding: EdgeInsets.symmetric(vertical: 2, horizontal: 16),
                            decoration: whiteBox(),
                            child: DropdownButton<String>(
                                isExpanded: true,
                                value: dropdownValue,
                                icon: const Icon(Icons.arrow_drop_down),
                                elevation: 16,
                                style: const TextStyle(fontFamily: 'regular', color: Colors.black),
                                underline: SizedBox(),
                                onChanged: (String? newValue) {
                                    setState(() {
                                        dropdownValue = newValue!;
                                    });
                                },
                                items: cardType.map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value,
                                          overflow: TextOverflow.ellipsis,
                                          softWrap: false,
                                        ),
                                    );
                                }).toList(),
                            )
                        ),

                        SizedBox(height: 16),

                        TextField(
                            decoration: style.textInputDecoration('Card Number'),
                        ),
                        SizedBox(height: 16),
                        Row(
                            children: [
                                Expanded(
                                    child: Container(
                                        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
                                        decoration: whiteBox(),
                                        child: InkWell(
                                            onTap: () {
                                                DatePicker.showDatePicker(context,
                                                    showTitleActions: true,
                                                    minTime: DateTime(2022, 3, 14),
                                                    maxTime: DateTime(2024, 12, 31),
                                                    theme: DatePickerTheme(
                                                        itemStyle: TextStyle(
                                                            fontFamily: 'medium',
                                                            fontSize: 18
                                                        ),
                                                        doneStyle:TextStyle(fontSize: 16)
                                                    ),
                                                    onChanged: (date) {
                                                        print('change $date in time zone ' +
                                                            date.timeZoneOffset.inHours.toString());
                                                    },
                                                    onConfirm: (date) {
                                                        print('confirm $date');
                                                    },
                                                    currentTime: DateTime.now(), locale: LocaleType.en
                                                );
                                            },
                                            child: Text('DD-MM-YYYY')
                                        ),
                                    )
                                ),
                                SizedBox(width: 16),
                                Expanded(
                                    child: TextField(
                                        decoration: style.textInputDecoration('CVV'),
                                    )
                                ),
                            ],
                        ),
                        SizedBox(height: 16),
                        Container(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Complete'),
                                style: style.simpleButton(),
                            )
                        ),
                    ],
                ),
            ),
        );
    }

    whiteBox() {
        return BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(5)
            ),
            border: Border.all(
                width: 1,
                color: Color.fromARGB(255, 238, 241, 247)
            ),
            color: Colors.white
        );
    }

}


class Item {
    const Item(this.img, this.name);
    final String img;
    final String name;
}