import 'package:flutter/cupertino.dart';
/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:spotify/helper/style.dart';
import 'package:spotify/pages/carThing.dart';
import 'package:spotify/pages/language.dart';
import 'package:spotify/pages/navigationAndOtherapps.dart';
import 'package:spotify/pages/notificationsScreen.dart';
import 'package:spotify/pages/profile.dart';

class settings extends StatefulWidget {
  settings({Key? key}) : super(key: key);

  static const String page_id = "Settings";

  @override
  _settingsState createState() => _settingsState();
}

class _settingsState extends State<settings> {
  int _value = 6;
  bool _switchValue = false;
  String dropdownvalue = 'Automatic';

  // List of items in our dropdown menu
  var items = [
    'Automatic',
    'Low',
    'Normal',
    'High',
    'Very high',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      title: Text('Settings'),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Free Account',
                style: headText(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Go Premiem',
                style: headText(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => profile()));
              },
              child: Row(
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blue,
                      child: Text(
                        'J',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'medium'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jaydeep',
                            style:
                                TextStyle(fontFamily: 'medium', fontSize: 18),
                          ),
                          Text(
                            'View Profile',
                            style:
                                TextStyle(color: Colors.white60, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                  Icon(Icons.chevron_right)
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Data Saver',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            switchRow('Audio Quality'),
            Text(
              'Video Podcasts',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            switchRow('Download audio only'),
            switchRow('Stream audio only'),
            Row(
              children: [
                Icon(Icons.info_outline),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Note : video is not streamed when the Spotify app is background',
                      style: TextStyle(color: Colors.white60, fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Playback',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Crossfade',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Sets your audio quality to low and disable artis canvases.',
              style: TextStyle(color: Colors.white60, fontSize: 12),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Off',
                  style: TextStyle(color: Colors.white60, fontSize: 12),
                ),
                new Expanded(
                  child: Slider(
                    value: _value.toDouble(),
                    min: 1.0,
                    max: 12.0,
                    activeColor: Colors.green,
                    inactiveColor: Colors.grey,
                    label: 'Set volume value',
                    onChanged: (double newValue) {
                      setState(() {
                        _value = newValue.round();
                      });
                    },
                    semanticFormatterCallback: (double newValue) {
                      return '${newValue.round()} dollars';
                    },
                  ),
                ),
                Text(
                  '12 s',
                  style: TextStyle(color: Colors.white60, fontSize: 12),
                ),
              ],
            ),
            switchRow('Gapless'),
            switchRow('Automix'),
            switchRow('Allow Explicit Content'),
            switchRow('Show unplayable song'),
            switchRow('Normalize volume'),
            switchRow('Mono audio'),
            switchRow('Device Brodcast Status'),
            switchRow('Autoplay on the device'),
            switchRow('Autoplay on other device'),
            Text(
              'Languages',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => language()));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Language for music',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Choose your prefereed language for music.',
                    style: TextStyle(color: Colors.white60, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Deviced',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Connect to a device',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Listen to and control Spotify on your devices.',
                  style: TextStyle(color: Colors.white60, fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            switchRow('Show local device only'),
            switchRow('Spotify connect in background'),
            Text(
              'Voice Assistance & Other Apps',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => navigationAndOtherapps()));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Navigation & Other Apps',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                    style: TextStyle(color: Colors.white60, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Car',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  style: TextStyle(color: Colors.white60, fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => carThing()));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Car Thing',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                    style: TextStyle(color: Colors.white60, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Social',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            switchRow('Private session'),
            switchRow('Listening activity'),
            Text(
              'Audio Quality',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wifi streaming',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '',
                        style: TextStyle(color: Colors.white60, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: DropdownButton(
                    value: dropdownvalue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cellular streaming',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'streaming higher quality over a cellular connection usew mora data',
                        style: TextStyle(color: Colors.white60, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 4,
                  child: DropdownButton(
                    value: dropdownvalue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            switchRow('Auto adjust quality'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Download',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Higher quality uses more disc space',
                        style: TextStyle(color: Colors.white60, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 4,
                  child: DropdownButton(
                    value: dropdownvalue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            switchRow('Download using Cellular'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Equalizer',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'LOpen the equalizer control panel.',
                  style: TextStyle(color: Colors.white60, fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Video Quality',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Wifi streaming',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Higher quality uses more disc space',
                        style: TextStyle(color: Colors.white60, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 4,
                  child: DropdownButton(
                    value: dropdownvalue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cellular streaming',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        'Higher quality uses more disc space',
                        style: TextStyle(color: Colors.white60, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 4,
                  child: DropdownButton(
                    value: dropdownvalue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Storage',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Slider(
              value: _value.toDouble(),
              min: 1.0,
              max: 12.0,
              activeColor: appColor,
              inactiveColor: Colors.grey,
              label: 'Set volume value',
              onChanged: (double newValue) {
                setState(() {
                  _value = newValue.round();
                });
              },
              semanticFormatterCallback: (double newValue) {
                return '${newValue.round()} dollars';
              },
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: appColor,
                            size: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Other apps')
                        ],
                      ),
                    ),
                    Expanded(child: Text('3.3 GB'))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.grey,
                            size: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Cache')
                        ],
                      ),
                    ),
                    Expanded(child: Text('502 MB'))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.black45,
                            size: 18,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Free')
                        ],
                      ),
                    ),
                    Expanded(child: Text('10.3 GB'))
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Remove all downloads',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  style: TextStyle(color: Colors.white60, fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Clear cache',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                  style: TextStyle(color: Colors.white60, fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Notification',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => notificationsScreen()));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Notification',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of.',
                    style: TextStyle(color: Colors.white60, fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Import',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            switchRow('Show local audio files'),
            Text(
              'Advertisement',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Spotify Ad Partner Preferences',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Lorem Ipsum is simply dummy text of simply dummy text of.',
                  style: TextStyle(color: Colors.white60, fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'About',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Version',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  '8.7.20.1320',
                  style: TextStyle(color: Colors.white60, fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Version',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  '8.7.20.1320',
                  style: TextStyle(color: Colors.white60, fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Third-party software',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Sweet software thst helped us',
                  style: TextStyle(color: Colors.white60, fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Terms and Conditions',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'All the stuff you need to know.',
                  style: TextStyle(color: Colors.white60, fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Privacy Policy',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Import for both of us.',
                  style: TextStyle(color: Colors.white60, fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Platform Rules',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Help keep spotify safe for all',
                  style: TextStyle(color: Colors.white60, fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Support',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Get help from us and the community.',
                  style: TextStyle(color: Colors.white60, fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Other',
              style: headText(),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Storage',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'choose where to store your music data',
                  style: TextStyle(color: Colors.white60, fontSize: 12),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Logout',
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'You are logged in as Jaydeep',
                  style: TextStyle(color: Colors.white60, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget switchRow(text) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  'Sets your audio quality to low and disable artis canvases.',
                  style: TextStyle(color: Colors.white60, fontSize: 12),
                )
              ],
            ),
          ),
          Transform.scale(
            scale: 0.8,
            child: CupertinoSwitch(
              value: _switchValue,
              onChanged: (bool value) {
                setState(() {
                  _switchValue = value;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
