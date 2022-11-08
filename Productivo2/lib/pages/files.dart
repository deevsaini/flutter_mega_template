/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:iotask/pages/file-detail.dart';
import 'package:iotask/pages/search.dart';
import 'package:iotask/pages/upload-files.dart';
import '../helper/style.dart' as style;

class FilesPage extends StatefulWidget {
    FilesPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Files';

    @override
    State<FilesPage> createState() => _FilesPageState();
}

class _FilesPageState extends State<FilesPage> {

    List<Item> files = <Item> [
        Item('assets/images/sketch.png', 'IOtask web UI kit.sketch', '162 Mb'),
        Item('assets/images/word.png', 'User Stories.docx', '1.2 Mb'),
        Item('assets/images/excel.png', 'Budget for UI design project.xlsx', '2.8Mb'),
        Item('assets/images/powerpoint.png', 'Presentation for Investors.pptx', '120 Mb'),
        Item('assets/images/pdf.png', 'Web Presentation for Investors.pdf', '12 Mb'),
        Item('assets/images/illustrator.png', 'Logo and branding book.ai', '70Mb'),
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
                            onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                        return UploadFilesPage();
                                    }
                                );
                            },
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
                width: double.infinity,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Container(
                            padding: EdgeInsets.all(16),
                            child: Row(
                                children: [
                                    Expanded(
                                        child: Row(
                                            children: [
                                                Text('Task Overview', style: greyTitle()),
                                                SizedBox(width: 8),
                                                Icon(Icons.sort_by_alpha, color: style.appGrey),
                                            ],
                                        )
                                    ),
                                    Icon(Icons.list, color: style.appGrey),
                                ],
                            ),
                        ),

                        Container(
                            width: double.infinity,
                            padding: EdgeInsets.all(16),
                            child: GridView.count(
                                crossAxisCount: 2,
                                physics: ScrollPhysics(),
                                shrinkWrap: true,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 10,
                                childAspectRatio: 80/100,
                                children: List.generate(files.length, (index) {
                                    return InkWell(
                                        onTap: () {
                                            Navigator.push(context, new MaterialPageRoute(
                                                builder: (context) => new FileDetailPage())
                                            );
                                        },
                                        child: Container(
                                          padding: EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 16),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)
                                              ),
                                              color: Colors.white
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                child: Column(
                                                  children: [
                                                    Align(
                                                      alignment: Alignment.topRight,
                                                      child: InkWell(
                                                        onTap: () {},
                                                        child: Icon(Icons.more_horiz, color: style.appGrey),
                                                      ),
                                                    ),
                                                    SizedBox(height: 10),
                                                    Image.asset(files[index].img, width: 50),
                                                    SizedBox(height: 10),
                                                    Text(files[index].title,
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          fontFamily: 'medium',
                                                          fontSize: 13
                                                      ),
                                                    ),
                                                    SizedBox(height: 10),
                                                  ],
                                                ),
                                              ),

                                              Text(files[index].size,
                                                style: TextStyle(
                                                    color: style.appGrey,
                                                    fontSize: 13
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                    );
                                }),
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

}

class Item {
    Item(this.img, this.title, this.size);
    final String img;
    final String title;
    final String size;
}