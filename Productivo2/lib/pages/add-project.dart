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

class AddProjectPage extends StatefulWidget {
    AddProjectPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Add Project';

    @override
    State<AddProjectPage> createState() => _AddProjectPageState();
}

class _AddProjectPageState extends State<AddProjectPage> {

    List<String> managers = [
      'Manager 1', 'Manager 2', 'Manager 3', 'Manager 4'
    ];
    List<String> types = [
      'Type 1', 'Type 2', 'Type 3', 'Type 4'
    ];

    String selectedManager = 'Manager 1';
    String selectedType = 'Type 1';

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
                title: Text('Add new project'),
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
            bottomNavigationBar: _buildBottomContainer(),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                    children: [
                        Container(
                            height: 180,
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 16),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5)
                                )
                            ),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                    Icon(Icons.cloud_upload_outlined, color: style.appGrey),
                                    SizedBox(width: 10),
                                    Text('UPLOAD IMAGE',
                                        style: TextStyle(
                                            color: style.appGrey,
                                            fontFamily: 'medium'
                                        ),
                                    )
                                ],
                            ),
                        ),
                        TextField(
                            decoration: style.inputTextDecoration('Enter your name'),
                        ),
                        SizedBox(height: 16),
                        TextField(
                            decoration: style.inputTextDecoration('Enter your email'),
                        ),
                        SizedBox(height: 16),
                        TextField(
                            decoration: style.inputTextDecoration('Enter your phone'),
                        ),
                        SizedBox(height: 16),
                        _buildManagerDropDown(),
                        SizedBox(height: 16),
                        _buildTypesDropDown()
                    ],
                ),
            ),
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
    
    Widget _buildBottomContainer() {
        return Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            child: ElevatedButton(
                onPressed: () {},
                child: Text('ADD'),
                style: style.simpleButton(),
            )
        );
    }

    Widget _buildManagerDropDown() {
        return Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: whiteContainer(),
            child: DropdownButton<String>(
                isExpanded: true,
                value: selectedManager,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(fontFamily: 'medium', color: Colors.black),
                underline: SizedBox(),
                onChanged: (String? newValue) {
                    setState(() {
                        selectedManager = newValue!;
                    });
                },
                items: managers.map<DropdownMenuItem<String>>((String value) {
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

    Widget _buildTypesDropDown() {
        return Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: whiteContainer(),
            child: DropdownButton<String>(
            isExpanded: true,
            value: selectedType,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(fontFamily: 'medium', color: Colors.black),
                underline: SizedBox(),
                onChanged: (String? newValue) {
                    setState(() {
                        selectedType = newValue!;
                    });
                },
                items: types.map<DropdownMenuItem<String>>((String value) {
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
}
