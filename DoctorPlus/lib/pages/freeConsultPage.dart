/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:doctor/utilities/constancePage.dart' as style;

class freeConsultPage extends StatefulWidget {
  freeConsultPage({Key? key}) : super(key: key);

  static const String pageId = 'freeConsultPage';

  @override
  State<freeConsultPage> createState() => _freeConsultPageState();
}

class _freeConsultPageState extends State<freeConsultPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: _buildAppBar(),
          body: _buildBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      bottom: PreferredSize(
        child: const TabBar(
          labelColor: Colors.black,
          isScrollable: true,
          unselectedLabelColor: Colors.grey,
          labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
          indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 2.0, color: Colors.black),
              insets: EdgeInsets.symmetric(horizontal: 10.0)),
          tabs: [
            Tab(
              text: 'New [150+]',
            ),
            Tab(
              text: 'Answered [300]',
            ),
            Tab(
              text: 'Following [450]',
            ),
            Tab(
              text: 'Services [70]',
            ),
            Tab(
              text: 'Emergancy [13]',
            ),
          ],
        ),
        preferredSize: Size.fromHeight(50.0),
      ),
      flexibleSpace: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: style.appBarButtonStyle(),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Text(
                  'Free Consult',
                  style: TextStyle(fontFamily: 'bold', fontSize: 17),
                ),
                InkWell(
                  onTap: () {
                    //
                  },
                  child: Container(
                    decoration: style.appBarItemClrButtonStyle(),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.search,
                        color: style.itemColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      child: TabBarView(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildContent(),
                _buildContent(),
                _buildContent(),
                _buildContent(),
                _buildContent(),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildContent(),
                _buildContent(),
                _buildContent(),
                _buildContent(),
                _buildContent(),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildContent(),
                _buildContent(),
                _buildContent(),
                _buildContent(),
                _buildContent(),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildContent(),
                _buildContent(),
                _buildContent(),
                _buildContent(),
                _buildContent(),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildContent(),
                _buildContent(),
                _buildContent(),
                _buildContent(),
                _buildContent(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: InkWell(
        onTap: () {
          //
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 20.0,
              ),
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Late falling of milk teeth on a child, resulting in two rows of milk and permanent teeth at the same time, what could help?',
                    style: TextStyle(fontSize: 15, fontFamily: 'bold'),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.chat,
                        color: style.appColor,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '12 ',
                        style:
                            TextStyle(fontFamily: 'bold', color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Doctors Answered',
                            style: TextStyle(
                                fontFamily: 'regular', color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox.fromSize(
                          size: Size.fromRadius(30),
                          child: FittedBox(
                            child: Image.asset('assets/images/3.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: RichText(
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  text: TextSpan(
                                    text: 'Dr.Sandarka Clevins ',
                                    style: TextStyle(
                                        fontFamily: 'bold',
                                        color: style.itemColor),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: ' Answered',
                                        style: TextStyle(
                                            fontFamily: 'regular',
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.more_horiz,
                                color: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(40),
                      child: FittedBox(
                        child: Image.asset('assets/images/p1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
