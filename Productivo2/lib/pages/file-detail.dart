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

class FileDetailPage extends StatefulWidget {
    FileDetailPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'File Detail';

    @override
    State<FileDetailPage> createState() => _FileDetailPageState();
}

class _FileDetailPageState extends State<FileDetailPage> {



    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBackColor,
            appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: IconButton(
                    onPressed: () {
                        Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.keyboard_arrow_left, color: style.appGrey)
                ),
                title: Text('IOtask web UI Kit.sketch'),
                titleSpacing: 0,
                centerTitle: false,
                titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'medium'
                ),
                actions: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_horiz, color: style.appGrey)
                    ),
                    CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/user.jpg'),
                    ),
                    SizedBox(width: 16),
                ],
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.all(16),
            color: Colors.white,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(5)
                                    )
                                ),
                                child: Text('Documents',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                )
                            ),
                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 241, 245, 255),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(5)
                                    )
                                ),
                                child: Text('16 Apr 2022',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 118 ,154, 254),
                                  ),
                                )
                            ),
                        ],
                    ),
                    SizedBox(height: 40),
                    Image.asset('assets/images/sketch.png'),
                    SizedBox(height: 24),
                    Text('IOtask web UI Kit.sketch',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'medium'
                        ),
                    ),
                    Text('160 Mb',
                        style: TextStyle(color: style.appGrey),
                    ),
                    Container(
                        width: 200,
                        margin: EdgeInsets.only(top: 24),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Download'),
                            style: style.simpleButton(),
                        ),
                    ),
                ],
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

}

class Item {
    Item(this.img, this.title, this.size);
    final String img;
    final String title;
    final String size;
}