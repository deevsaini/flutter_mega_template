/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../components/styles.dart' as style;

class EditProfile extends StatefulWidget {
  static const String id = 'EditProfile';

  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool isSmartPhotos = false;
  bool isShare = false;
  RangeValues distance = const RangeValues(40, 80);
  RangeValues age = const RangeValues(40, 80);
  int selectGender = 1;
  String dropdownValue = 'Men';
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 243, 243),
      appBar: AppBar(
        backgroundColor: const Color(0xFFf66d06),
        centerTitle: true,
        title: const Text(
          'Edit Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: _buildBody(),
    );
  }

  // Widget _buildBody() {
  //   return SingleChildScrollView(
  //     child: _buildProfile(),
  //   );
  // }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 25),
                    child: Center(
                      child: Column(
                        children: const <Widget>[
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/images/2.jpg'),
                            radius: 60,
                          ),
                        ],
                      ),
                    ),
                  ),
                  _buildBoldFont('About You'),
                  TextField(
                    maxLines: 4,
                    decoration: inputFieldDecoration('Bio'),
                  ),
                  _buildBoldFont('Name'),
                  TextField(
                    decoration: inputFieldDecoration('Enter Name'),
                  ),
                  _buildBoldFont('Date of birth'),
                  TextField(
                    decoration: inputFieldDecoration('Enter Date of birth'),
                  ),
                  _buildBoldFont('Location'),
                  TextField(
                    decoration: inputFieldDecoration('Enter CIty'),
                  ),
                  _buildBoldFont('Gender'),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('I Am'),
                        Center(
                          child: _buildSelect(),
                        ),
                      ],
                    ),
                  ),
                  _buildBoldFont('Other'),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Don \'t Show My Age',
                            style: TextStyle(fontSize: 16)),
                        Switch(
                          value: isSmartPhotos,
                          activeColor: style.appColor,
                          onChanged: (value) {
                            setState(() {
                              isSmartPhotos = value;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Make My Distance Invisible',
                            style: TextStyle(fontSize: 16)),
                        Switch(
                          value: isSmartPhotos,
                          activeColor: style.appColor,
                          onChanged: (value) {
                            setState(() {
                              isSmartPhotos = value;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSelect() {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_drop_down),
      elevation: 16,
      style: const TextStyle(color: Colors.black87),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Men', 'Woman', 'Other']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  myBoxDecoration() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)));
  }

  Widget _buildGreyLabel(text) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        '$text',
        style: TextStyle(color: Colors.grey, fontSize: 16),
      ),
    );
  }

  Widget _buildBoldFont(text) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Text(
        '$text',
        style: TextStyle(
            color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  inputFieldDecoration(text) {
    return InputDecoration(
        hintText: '$text',
        filled: true,
        fillColor: Colors.white,
        border: InputBorder.none);
  }

  textButton() {
    return const TextStyle(
        color: Colors.white, fontFamily: 'semi-bold', fontSize: 12);
  }
}
