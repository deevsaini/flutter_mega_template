/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:pet_care/pages/tabs.dart';
import 'package:pet_care/widget/elevated_button.dart';
import '../components/styles.dart';

class AddPetDetail extends StatefulWidget {
  static const String id = 'AddPetDetail';

  const AddPetDetail({Key? key}) : super(key: key);

  @override
  _AddPetDetailState createState() => _AddPetDetailState();
}

class _AddPetDetailState extends State<AddPetDetail> {
  int selectID = 1;
  String dropdownValueSpecies = 'Dog';
  String dropdownValueBreed = 'American Bulldog';
  String dropdownValueSize = 'Select';

  DateTime currentDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: appColor),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Add pet detail',
            style: TextStyle(color: Colors.black, fontFamily: 'bold'),
          ),
          actions: [TextButton(onPressed: () {}, child: appcolorText('Skip'))],
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: CircleAvatar(
              radius: 46,
              backgroundImage: AssetImage('assets/images/pet.jpg'),
            ),
          ),
          SizedBox(height: 24),
          blackBoldText('General information'),
          textField('Pet\'s Name', Icons.check),
          SizedBox(height: 8),
          greyTextSmall('Species of your pet'),
          buildDropDownSpecies(),
          SizedBox(height: 8),
          greyTextSmall('Breed'),
          buildDropDownBreed(),
          SizedBox(height: 8),
          greyTextSmall('Size(optional)'),
          buildDropDownSize(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              greyTextSmall('Gender'),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildSelect('Male', 1),
                  _buildSelect('Female', 2),
                ],
              ),
            ],
          ),
          SizedBox(height: 8),
          greyTextSmall('Date of birth'),
          _buildSelectDate(),
          SizedBox(height: 30),
          MyElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TabsExample()));
              },
              colors: appColor,
              text: 'Save'),
        ],
      ),
    );
  }

  Widget _buildSelect(title, id) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectID = id;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 50),
        margin: EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          color: selectID == id ? appColor : Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
        ),
        child: Text(title,
            style: TextStyle(
                fontFamily: 'medium',
                fontSize: 14,
                color: selectID == id ? Colors.white : Colors.black54)),
      ),
    );
  }

  Widget buildDropDownSpecies() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black26)),
        color: Colors.white,
      ),
      child: DropdownButton<String>(
        underline: SizedBox(),
        iconSize: 18,
        iconEnabledColor: Colors.black,
        value: dropdownValueSpecies,
        onChanged: (newValue) {
          setState(() {
            dropdownValueSpecies = newValue!;
          });
        },
        items: ['Dog', 'Cat', 'Turtle', 'Monkey']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget buildDropDownBreed() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black26)),
        color: Colors.white,
      ),
      child: DropdownButton<String>(
        underline: SizedBox(),
        iconSize: 18,
        iconEnabledColor: Colors.black,
        value: dropdownValueBreed,
        onChanged: (newValue) {
          setState(() {
            dropdownValueBreed = newValue!;
          });
        },
        items: [
          'American Bulldog',
          'Muffin',
          'Labrador',
          'German Shephard',
          'Golden Retriver'
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget buildDropDownSize() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black26)),
        color: Colors.white,
      ),
      child: DropdownButton<String>(
        underline: SizedBox(),
        iconSize: 18,
        iconEnabledColor: Colors.black,
        value: dropdownValueSize,
        onChanged: (newValue) {
          setState(() {
            dropdownValueSize = newValue!;
          });
        },
        items: ['Select', '5', '6', '7']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildSelectDate() {
    return GestureDetector(
      onTap: () => _selectDate(context),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black26)),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //  Text(currentDate.toString()),
            Text('4 Jan \'21',
                style: TextStyle(
                    fontFamily: 'medium', fontSize: 14, color: Colors.black54)),
            Icon(Icons.calendar_month, color: appColor)
          ],
        ),
      ),
    );
  }
}
