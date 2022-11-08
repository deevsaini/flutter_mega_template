/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:saloon5/pages/profile.dart';
import 'package:saloon5/pages/success.dart';
import 'package:saloon5/pages/tabs.dart';
import '../components/styles.dart' as style;

class Confirmation extends StatefulWidget {
  static const String id = 'Confirmation';

  const Confirmation({Key? key}) : super(key: key);

  @override
  _ConfirmationState createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  bool isChecked = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: style.appColor2,
      body: Scaffold(
        backgroundColor: style.appColor2,
        body: SafeArea(
          bottom: false,
          child: Stack(
            children: <Widget>[
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context, true);
                      },
                      icon: const Icon(
                        Icons.chevron_left,
                        size: 30,
                        color: Colors.black54,
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          'Confirmation',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black54,
                              fontSize: 24),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              _buildContent(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return DraggableScrollableSheet(
      initialChildSize: .9,
      minChildSize: .9,
      builder: (BuildContext context, ScrollController scrollController) {
        return ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildServiceDesc(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildServiceDesc() {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 14),
                  _buildItem("assets/images/home.png", 'Salon address',
                      'Sophia Beauty Salon', '2745 Santa Ana, Florida'),
                  _buildItem("assets/images/scissors.png", 'Service', 'Haircut',
                      'Non-specified Type'),
                  _buildItem("assets/images/user.png", 'Specialist',
                      'Jenny Wilson', 'Hair Stylist'),
                  _buildItem("assets/images/time.png", 'Date & Time',
                      'July,21/5:00 pm', ''),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        _addService(),
                        SizedBox(height: 10),
                        _checkBox()
                      ],
                    ),
                  ),
                  _buildFooter(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildItem(icon, label, title, text) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              bottom: BorderSide(color: Theme.of(context).dividerColor))),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: <Widget>[
            Container(
              width: 65,
              height: 65,
              padding: const EdgeInsets.all(12),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: style.appColor2),
              child: Image(image: AssetImage(icon), fit: BoxFit.contain),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(label,
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w500)),
                    SizedBox(height: 2),
                    Text(title,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black54,
                            fontSize: 16)),
                    SizedBox(height: 2),
                    Text(text, style: TextStyle(color: Colors.grey)),
                  ],
                ),
              ),
            ),
            ImageIcon(
              AssetImage("assets/images/edit.png"),
              color: Colors.black54,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _addService() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Icon(
            Icons.add,
            size: 30,
            color: Colors.black54,
          ),
        ),
        const Expanded(
          child: Text(
            "Add another service to your visit",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black54,
            ),
          ),
        )
      ],
    );
  }

  Widget _checkBox() {
    return Row(
      children: [
        Checkbox(
          checkColor: Colors.white,
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
          activeColor: style.appColor,
        ),
        const Expanded(
          child: Text(
            "Remind me of this visit with a message to my phone number.",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
        )
      ],
    );
  }

  Widget _buildFooter() {
    return Container(
      color: Colors.white,
      height: 130,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              child: const Text("Confirm",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  )),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Success()));
              },
              style: ElevatedButton.styleFrom(
                primary: style.appColor,
                onPrimary: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          Container(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              child: const Text("Cancel",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  )),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                onPrimary: Colors.black,
                shadowColor: Colors.transparent,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(width: 1, color: Colors.black26)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
