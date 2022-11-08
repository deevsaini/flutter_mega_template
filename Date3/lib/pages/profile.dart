/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:date/pages/EditProfile.dart';
import 'package:date/pages/home.dart';
import 'package:date/pages/setting.dart';
import 'package:flutter/material.dart';
import '../components/styles.dart' as style;

class Profile extends StatefulWidget {
  static const String id = 'profile';

  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: style.appColor,
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.settings,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Setting()));
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.note_alt_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EditProfile()));
            },
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
        child: Stack(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Column(),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/2.jpg'),
                    radius: 50,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text('John Doe',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: Text('john21', style: TextStyle(color: Colors.grey)),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 55,
                                width: 55,
                                decoration: buildIconButton(),
                                child: const Icon(
                                  Icons.camera_alt_outlined,
                                  color: Color(0xFFf66d06),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text('20',
                                    style: TextStyle(
                                        fontFamily: "semi-bold",
                                        color: Colors.black)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Text('Stories', style: iconButtonText()),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 55,
                                width: 55,
                                decoration: buildIconButton(),
                                child: const Icon(
                                  Icons.favorite_outline,
                                  color: Color(0xFFf66d06),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text('30',
                                    style: TextStyle(
                                        fontFamily: "semi-bold",
                                        color: Colors.black)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Text('Likes', style: iconButtonText()),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 55,
                                width: 55,
                                decoration: buildIconButton(),
                                child: const Icon(
                                  Icons.person_outline,
                                  color: Color(0xFFf66d06),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Text('15',
                                    style: TextStyle(
                                        fontFamily: "semi-bold",
                                        color: Colors.black)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 0),
                                child: Text('Friends', style: iconButtonText()),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: bottomBorder(),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            const Icon(
                              Icons.check_box_rounded,
                              color: Colors.red,
                            ),
                            Expanded(
                                child: Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: const Text("Verify your account",
                                  style: TextStyle(
                                      fontFamily: "semi-bold",
                                      fontSize: 16,
                                      color: Colors.red)),
                            )),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.chevron_right,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: bottomBorder(),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            const Icon(
                              Icons.card_giftcard,
                              color: Colors.red,
                            ),
                            Expanded(
                                child: Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: const Text("Gift",
                                  style: TextStyle(
                                      fontFamily: "semi-bold",
                                      fontSize: 16,
                                      color: Colors.black)),
                            )),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.chevron_right,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: bottomBorder(),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            const Icon(
                              Icons.circle_rounded,
                              color: Colors.red,
                            ),
                            Expanded(
                                child: Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: const Text("Income",
                                  style: TextStyle(
                                      fontFamily: "semi-bold",
                                      fontSize: 16,
                                      color: Colors.black)),
                            )),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.chevron_right,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                    decoration: bottomBorder(),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            const Icon(
                              Icons.circle_rounded,
                              color: Colors.red,
                            ),
                            Expanded(
                                child: Container(
                              padding: const EdgeInsets.only(left: 10),
                              child: const Text("Coin",
                                  style: TextStyle(
                                      fontFamily: "semi-bold",
                                      fontSize: 16,
                                      color: Colors.black)),
                            )),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.add,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            // showDialog(
                            //     context: context,
                            //     builder: (BuildContext context) {
                            //       return const Home();
                            //     });
                          },
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 5, right: 16, left: 16, bottom: 16),
                            decoration: myBoxDecoration(),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset(
                                    'assets/images/crown.png',
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                                const Text('Become VIP',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            // showDialog(
                            //     context: context,
                            //     builder: (BuildContext context) {
                            //       return const Home();
                            //     });
                          },
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 5, right: 16, left: 16, bottom: 16),
                            decoration: myBoxDecoration(),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  child: Image.asset(
                                    'assets/images/launch.png',
                                    width: 40,
                                    height: 40,
                                  ),
                                ),
                                const Text('Boost yourself',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }

  buildIconButton() {
    return BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 3,
          color: const Color(0xFFf66d06),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(50)));
  }

  iconButtonText() {
    return const TextStyle(fontFamily: "regular", color: Colors.grey);
  }

  bottomBorder() {
    return BoxDecoration(
        border: Border.all(
          width: 3,
          color: Colors.black12,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)));
  }

  myBoxDecoration() {
    return const BoxDecoration(
        color: Color(0xFFf66d06),
        borderRadius: BorderRadius.all(Radius.circular(25)));
  }
}
