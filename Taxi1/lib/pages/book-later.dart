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

class BookLaterPage extends StatefulWidget {
    BookLaterPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Book Later';

    @override
    State<BookLaterPage> createState() => _BookLaterPageState();
}

class _BookLaterPageState extends State<BookLaterPage> {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                elevation: 0,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.white,
            ),
            body: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: style.shadowContainer(),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Text('Book Later',
                                    style: style.boldLabel(),
                                ),
                                InkWell(
                                    onTap: () {},
                                    child: Icon(Icons.close),
                                ),
                            ],
                        ),

                        SizedBox(height: 20),
                        
                        Row(
                            children: [
                                Text('Date : '),
                                Expanded(
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
                                        child: Text('dd-mm-yyyy')
                                    )
                                ),
                            ],
                        ),

                        SizedBox(height: 30),

                        Row(
                            children: [
                                Text('Time : '),
                                Expanded(
                                    child: InkWell(
                                        onTap: () {
                                            DatePicker.showTimePicker(context, showTitleActions: true,
                                            onChanged: (date) {
                                                print('change $date in time zone ' +
                                                  date.timeZoneOffset.inHours.toString());
                                            }, onConfirm: (date) {
                                                print('confirm $date');
                                            },
                                            currentTime: DateTime.now());
                                        },
                                        child: Text('--:--')
                                    ),
                                ),
                            ],
                        ),

                        Align(
                            alignment: Alignment.centerRight,
                            child: FloatingActionButton(
                                onPressed: () { },
                                child: Icon(Icons.check),
                                backgroundColor: style.appGreen,
                                elevation: 0,
                            )
                        ),


          ],
        ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
        );
    }

}