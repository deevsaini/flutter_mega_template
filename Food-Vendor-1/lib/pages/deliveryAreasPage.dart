/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:admin_app/utilities/consultsPage.dart' as style;

class deliveryAreasPage extends StatefulWidget {
  deliveryAreasPage({Key? key}) : super(key: key);

  static const String pageId = 'deliveryAreasPage';

  @override
  State<deliveryAreasPage> createState() => _deliveryAreasPageState();
}

class _deliveryAreasPageState extends State<deliveryAreasPage> {
  bool isChecked = false;
  String stateValue = 'Gujrat';
  String cityValue = 'Bhavnagar';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: _buildBody(),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: style.appColor,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
      centerTitle: true,
      title: Text(
        'Delivery Areas',
        style: TextStyle(
            color: Colors.white, fontSize: 17, fontFamily: 'semibold'),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            _buildTitle('Add New Area'),
            _buildDrpDown(),
            Row(
              children: [
                Expanded(
                  child: _buildInputContent('Enter Area..'),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                  margin: EdgeInsets.only(right: 10),
                  decoration: style.borderButtonStyle(),
                  child: Center(
                    child: Text(
                      'Add Area',
                      style: TextStyle(
                          color: style.appColor,
                          fontSize: 10,
                          fontFamily: 'bold'),
                    ),
                  ),
                ),
              ],
            ),
            _buildTitle('Delivery Area List'),
            _buildContent('Sector 70, Mohali'),
            _buildContent('Sector 79, Mohali'),
            _buildContent('Industrial Area Phase 8b, Mohali'),
            _buildContent('Sector 67, Mohali'),
            _buildContent('Phase 57, Mohali'),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle(txt) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: style.appColor),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Row(
          children: [
            Text(
              '$txt',
              style: TextStyle(
                  fontFamily: 'semibold', fontSize: 17, color: style.appColor),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrpDown() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(5),
              ),
              child: DropdownButton<String>(
                value: stateValue,
                isExpanded: true,
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.transparent,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    stateValue = newValue!;
                  });
                },
                items: <String>[
                  'Gujrat',
                  'Punjab',
                  'Tamilnadu',
                  'Rajsthan',
                  'Karnatak',
                  'Jarkhand',
                  'Assam',
                  'Bihar',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(5),
              ),
              child: DropdownButton<String>(
                value: cityValue,
                isExpanded: true,
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.transparent,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    cityValue = newValue!;
                  });
                },
                items: <String>[
                  'Bhavnagar',
                  'Amreli',
                  'Rajkot',
                  'Surat',
                  'Ahemdabad',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(txt) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$txt',
              style: TextStyle(fontFamily: 'semibold', fontSize: 15),
            ),
            Checkbox(
              checkColor: Colors.white,
              activeColor: style.appColor,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _buildInputContent(txt) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: '$txt',
                contentPadding:
                    const EdgeInsets.only(bottom: 8.0, top: 14.0, left: 10),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: style.appColor),
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 13.0),
                decoration: style.contentButtonStyle(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Save Changes',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontFamily: 'bold'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
