/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:iotask/pages/search.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../helper/style.dart' as style;

class UploadFilesPage extends StatefulWidget {
    UploadFilesPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Files';

    @override
    State<UploadFilesPage> createState() => _UploadFilesPageState();
}

class _UploadFilesPageState extends State<UploadFilesPage> {

    List<Item> files = <Item> [
        Item('assets/images/sketch.png', 'IOtask web UI kit.sketch', 1.0),
        Item('assets/images/word.png', 'User Stories.docx', 0.75),
        Item('assets/images/excel.png', 'Budget for UI design project.xlsx', 0.7),
        Item('assets/images/powerpoint.png', 'Presentation for Investors.pptx', 0.8),
        Item('assets/images/pdf.png', 'Web Presentation for Investors.pdf', 0.5),
        Item('assets/images/illustrator.png', 'Logo and branding book.ai', 0.6),
    ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: style.appBackColor,
            appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: Row(
                    children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_circle_outline, color: style.appGrey)
                        ),
                        IconButton(
                            onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                        return SearchPage();
                                    }
                                );
                            },
                            icon: Icon(Icons.search_outlined, color: style.appGrey)
                        ),
                    ],
                ),
                leadingWidth: 110,
                title: Text('Files'),
                centerTitle: true,
                titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'medium'
                ),
                actions: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.notifications_none, color: style.appGrey)
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
        return SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(16),
                width: double.infinity,
                child: Column(
                    children: [
                        Icon(Icons.cloud_upload, size: 80, color: style.appColor),
                        SizedBox(height: 8),
                        Text('Upload your files',
                            style: TextStyle(
                                fontFamily: 'medium',
                                fontSize: 18
                            ),
                        ),
                        SizedBox(height: 8),
                        Text('Try to upload more files to see them here',
                            style: TextStyle(
                                color: style.appGrey,
                                fontSize: 15
                            ),
                        ),

                        SizedBox(height: 24),
                        
                        ListView(
                            shrinkWrap: true,
                            physics: ScrollPhysics(),
                            children: List.generate(files.length, (index) {
                                return Container(
                                    margin: EdgeInsets.only(bottom: 16),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5)
                                        )
                                    ),
                                    child: Column(
                                        children: [
                                            Container(
                                                padding: EdgeInsets.all(16),
                                                child: Row(
                                                    children: [
                                                        Image.asset(files[index].img, width: 40),
                                                        SizedBox(width: 10),
                                                        Expanded(
                                                            child: Text(files[index].title)
                                                        ),
                                                        SizedBox(width: 16),
                                                        InkWell(
                                                            onTap: () {},
                                                            child: Icon(
                                                                files[index].status == 1 ? Icons.check_circle_outline : Icons.close_outlined,
                                                                color: files[index].status == 1 ? Colors.green : style.appGrey,
                                                                size: 20,
                                                            ),
                                                        ),
                                                    ],
                                                )
                                            ),
                                            LinearPercentIndicator(
                                                padding: EdgeInsets.all(0),
                                                lineHeight: 3.0,
                                                percent: files[index].status,
                                                backgroundColor: style.appGrey,
                                                progressColor: style.appColor,
                                            )
                                        ],
                                    ),
                                ); 
                            }),
                        ),
                      
                    ],
                ),
            ),
        );
    }

}

class Item {
    Item(this.img, this.title, this.status);
    final String img;
    final String title;
    final double status;
}