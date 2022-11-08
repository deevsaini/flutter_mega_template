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

class Profile extends StatefulWidget {
  static const String id = 'Profile';

  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                      onPressed: () {},
                      icon: const Icon(
                        Icons.chevron_left,
                        size: 30,
                        color: Colors.transparent,
                      ),
                    ),
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          'Profile Detail',
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
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _profilePicture(),
                  _buildHeading('bonus Card', ''),
                  _buildCreditCard(),
                  _buildHeading('Saved Tips & Tricks', 'See more'),
                  _buildGallery(),
                  _buildHeading('Rating & Review', 'See more'),
                  _buildProfileDetail(),
                  _buildHeading('Clients Support', ''),
                  _contactnotice(),
                  _buildBtn()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _profilePicture() {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      child: Column(
        children: <Widget>[
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.jpg'),
            radius: 50,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text('John Martina',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 2),
            child:
                Text('+1(000)555-2020', style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }

  Widget _buildCreditCard() {
    return Container(
      height: 230,
      padding: EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          image: DecorationImage(
              image: const AssetImage('assets/images/back.jpg'),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  ImageIcon(
                    AssetImage("assets/images/qr.png"),
                    color: Colors.black54,
                    size: 40,
                  ),
                  SizedBox(height: 16),
                  Text("2020 2222 2020 1212 ",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                  SizedBox(height: 5),
                  Text("John Martina",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 18,
                          fontWeight: FontWeight.w600)),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text("Logo",
                    style: TextStyle(
                        color: style.appColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const <Widget>[
                  Text("Expiry date",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      )),
                  Text("12/2025",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      )),
                ],
              ),
              Text("-15% Discount",
                  style: TextStyle(
                      color: style.appColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGallery() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
              height: 250,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                      image: const AssetImage('assets/images/2.jpg'),
                      fit: BoxFit.cover)),
              child: _buildImageText("How to apply foundation")),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                      height: 120,
                      width: double.infinity,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          image: DecorationImage(
                              image: const AssetImage('assets/images/2.jpg'),
                              fit: BoxFit.cover)),
                      child: _buildImageText("Evening make-up")),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: Container(
                    height: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                              height: 120,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  image: DecorationImage(
                                      image: const AssetImage(
                                          'assets/images/2.jpg'),
                                      fit: BoxFit.cover)),
                              child: _buildImageText("Jode ")),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Container(
                              height: 120,
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  image: DecorationImage(
                                      image: const AssetImage(
                                          'assets/images/2.jpg'),
                                      fit: BoxFit.cover)),
                              child: _buildImageText("Jode ")),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProfileDetail() {
    return Row(
      children: [
        Container(
          height: 130,
          width: 80,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/3.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jenny Wilson',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                      fontSize: 16),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.orange,
                    ),
                    SizedBox(width: 8),
                    Text('5.0',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.orange,
                        )),
                  ],
                ),
                Text(
                  '"John really saved my hair after the bad hair dye in other salon. My hair is again glossy and silky. Thank you"',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black38,
                      fontSize: 13),
                ),
                Text(
                  'July 21, 2022',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black26,
                      fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _contactnotice() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(
              Icons.access_time,
              size: 30,
              color: Colors.black54,
            ),
          ),
          const Expanded(
            child: Text(
              "You can contact us on any questions from 08 to 12 pm",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: ElevatedButton(
          child: const Text(
            "Request a call",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: style.appColor,
            onPrimary: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        )),
        SizedBox(width: 10),
        Expanded(
            child: ElevatedButton(
          child: const Text(
            "Go to chat",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: style.appColor,
            onPrimary: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        )),
      ],
    );
  }

  Widget _buildImageText(text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            )),
      ],
    );
  }

  Widget _buildHeading(text, btn) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Expanded(
          child: Text(text,
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.black54,
                  fontWeight: FontWeight.w600)),
        ),
        TextButton(
            onPressed: () {},
            child: Text(btn,
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.w500)))
      ]),
    );
  }
}
