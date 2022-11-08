/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:parkme/pages/end_parking.dart';
import '../components/styles.dart';

String formatTime(int milliseconds) {
  var secs = milliseconds ~/ 1000;
  var hours = (secs ~/ 3600).toString().padLeft(2, '0');
  var minutes = ((secs % 3600) ~/ 60).toString().padLeft(2, '0');
  var seconds = (secs % 60).toString().padLeft(2, '0');
  return "$hours:$minutes:$seconds";
}

class ActiveSessions extends StatefulWidget {
  static const String id = 'ActiveSessions';

  const ActiveSessions({Key? key}) : super(key: key);

  @override
  _ActiveSessionsState createState() => _ActiveSessionsState();
}

class _ActiveSessionsState extends State<ActiveSessions> {
  late Stopwatch _stopwatch;
  @override
  void initState() {
    super.initState();
    _stopwatch = Stopwatch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.chevron_left,
              size: 30,
            ),
          ),
          centerTitle: true,
          title: Text(
            'Active sessions',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black87),
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              _buildSession(),
            ],
          ),
        ));
  }

  Widget _buildSession() {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const EndParking()));
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                offset: const Offset(0, 2),
                blurRadius: 12.0),
          ],
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: appColor,
                            borderRadius: BorderRadius.all(Radius.circular(6))),
                        child: Icon(
                          Icons.local_parking,
                          color: Colors.white,
                          size: 14,
                        )),
                    SizedBox(width: 8),
                    Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                            border: Border.all(color: Colors.black54)),
                        child: greyTextSmall('\$/Hr'))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    blackText('Kalaghoda Rd 30'),
                    greyTextSmall('New York')
                  ],
                )
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.black12,
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                greyText("Time remaining"),
                Column(
                  children: [
                    blackHeading(
                      formatTime(_stopwatch.elapsedMilliseconds),
                    ),
                    Row(
                      children: [
                        greyTextSmall('Hr'),
                        SizedBox(width: 18),
                        greyTextSmall('Min'),
                        SizedBox(width: 10),
                        greyTextSmall('Sec'),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
