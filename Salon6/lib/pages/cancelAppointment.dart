/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:salon/helper/style.dart';

class cancelAppointment extends StatefulWidget {
  cancelAppointment({Key? key}) : super(key: key);

  @override
  _cancelAppointmentState createState() => _cancelAppointmentState();
}

class _cancelAppointmentState extends State<cancelAppointment> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: EdgeInsets.all(20),
      content: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            Text(
              'Cancellation of Appointment',
              style: headText(),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Are you sure you want to cancel this appointment',
              style: simpleText(),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Cancel',
                    style:
                        TextStyle(color: Colors.black, fontFamily: 'semi-bold'),
                  ),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 36, vertical: 14),
                    side: BorderSide(width: 1.0, color: Colors.grey.shade400),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Select',
                    style:
                        TextStyle(color: Colors.white, fontFamily: 'semi-bold'),
                  ),
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 36, vertical: 14),
                    backgroundColor: Colors.red.shade400,
                    // side: BorderSide(width: 1.0, color: Colors.grey.shade400),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
