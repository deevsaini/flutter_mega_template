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

class NewTaskPage extends StatefulWidget {
    NewTaskPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'New Task';

    @override
    State<NewTaskPage> createState() => _NewTaskPageState();
}

class _NewTaskPageState extends State<NewTaskPage> {

    List<String> employees = [
        'Emp 1', 'Emp 2', 'Emp 3', 'Emp 4'
    ];
    String selectedEmployee = 'Emp 1';
    bool isCheck = false;

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBackColor,
            appBar: AppBar(
                backgroundColor: style.appColor,
                elevation: 0,
                leading: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_circle_outline),
                ),
                title: Text('Add Task'),
                titleSpacing: 0,
                centerTitle: false,
                titleTextStyle: TextStyle(
                    fontSize: 18,
                    fontFamily: 'medium'
                ),
                actions: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.close)
                    ),
                ],
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text('Task Overview', style: greyTitle()),
                        ),
                        Container(
                            decoration: whiteContainer(),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    TextField(
                                        maxLines: 3,
                                        decoration: style.inputTextDecoration('Add your description'),
                                    ),

                                    Container(
                                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                        margin: EdgeInsets.only(left: 16, bottom: 16),
                                        decoration: orangeBox(),
                                        child: Text('Sketch Redesign', style: orangeText()),
                                    )
                                ],
                            ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text('Checklist', style: greyTitle()),
                        ),
                        Container(
                            padding: EdgeInsets.all(16),
                            decoration: whiteContainer(),
                            child: Row(
                                children: [
                                    SizedBox(
                                        height: 24,
                                        width: 24,
                                        child: Checkbox(
                                            value: true,
                                            onChanged: (bool? val) {
                                                setState(() {
                                                    this.isCheck = !this.isCheck;
                                                });
                                            }
                                        ),
                                    ),
                                    SizedBox(width: 8),
                                    Expanded(
                                        child: Text('Add more',
                                            style: TextStyle(
                                                color: style.appGrey,
                                                fontFamily: 'medium',
                                                fontSize: 15
                                            ),
                                        )
                                    )
                                ],
                            ),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text('Attachment', style: greyTitle()),
                        ),
                        Container(
                            padding: EdgeInsets.all(16),
                            decoration: whiteContainer(),
                            child: Row(
                                children: [
                                    Icon(Icons.add_circle_outline, color: style.appGrey),
                                    SizedBox(width: 8),
                                    Expanded(
                                        child: Text('Upload your attachment',
                                            style: TextStyle(
                                                color: style.appGrey,
                                                fontFamily: 'medium',
                                                fontSize: 15
                                            ),
                                        )
                                    )
                                ],
                            ),
                        ),
                        Row(
                            children: [
                                Expanded(
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            Padding(
                                                padding: EdgeInsets.symmetric(vertical: 10),
                                                child: Text('Assigned to', style: greyTitle()),
                                            ),
                                            _buildAssignDropDown()
                                        ],
                                    )
                                ),
                                SizedBox(width: 10),
                                Expanded(
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            Padding(
                                                padding: EdgeInsets.symmetric(vertical: 10),
                                                child: Text('Due to', style: greyTitle()),
                                            ),
                                            Container(
                                                width: double.infinity,
                                                padding: EdgeInsets.all(16),
                                                decoration: whiteContainer(),
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
                                                    child: Text('DD-MM-YYYY',
                                                        style: TextStyle(
                                                            fontFamily: 'medium',
                                                            fontSize: 16,
                                                        ),
                                                    )
                                                ),
                                            ),
                                        ],
                                    )
                                )
                            ],
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text('Comments', style: greyTitle()),
                        ),
                        TextField(
                            maxLines: 4,
                            decoration:  style.inputTextDecoration('Your message'),
                        ),
                        SizedBox(height: 16),
                        Container(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Text('Add Task'),
                                style: style.simpleButton(),
                            ),
                        ),
                    ],
                ),
            ),
        );
    }

    greyTitle() {
        return TextStyle(
            fontFamily: 'medium',
            fontSize: 16,
            color: style.appGrey
        );
    }

    whiteContainer() {
        return BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
                Radius.circular(5)
            )
        );
    }

    borderDecoration() {
        return OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(
                color: Colors.transparent
            )
        );
    }

    Widget _buildAssignDropDown() {
        return Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: whiteContainer(),
            child: DropdownButton<String>(
                isExpanded: true,
                value: selectedEmployee,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(fontFamily: 'medium', color: Colors.black),
                underline: SizedBox(),
                onChanged: (String? newValue) {
                    setState(() {
                        selectedEmployee = newValue!;
                    });
                },
                items: employees.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                        ),
                    );
                }).toList(),
            )
        );
    }

    orangeBox() {
        return BoxDecoration(
            color: Color.fromARGB(255, 255, 249, 238),
            borderRadius: BorderRadius.all(
                Radius.circular(5)
            ),
        );
    }

    orangeText() {
        return TextStyle(
            fontSize: 15,
            color: Color.fromARGB(255, 255, 186, 81)
        );
    }
}
