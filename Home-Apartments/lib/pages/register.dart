/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/pages/login.dart';
import 'package:home/widget/elevated_button.dart';
import 'package:home/widget/text_btn.dart';
import '../components/styles.dart';

class Register extends StatefulWidget {
  static const String id = 'Register';

  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register>
    with SingleTickerProviderStateMixin {
  bool isChecked = false;
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0,
          centerTitle: true,
          title:
              Text('Register Account', style: TextStyle(color: Colors.black)),
          actions: [
            IconButton(
              icon: Icon(
                Icons.close,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: _buildBody());
  }

  Widget _buildBody() {
    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/home.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        _buildDragg(),
      ],
    );
  }

  Widget _buildDragg() {
    return DraggableScrollableSheet(
      initialChildSize: .76,
      minChildSize: .76,
      maxChildSize: .86,
      builder: (BuildContext context, ScrollController scrollController) {
        return ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          child: Container(
            color: backgroundColor,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 24),
            child: SingleChildScrollView(
              // controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  boldHeading("Hello!"),
                  greyText("Create an account to continue"),
                  SizedBox(height: 20),
                  blackText("Your Name"),
                  textField('Enter name', Icons.check_circle),
                  SizedBox(height: 12),
                  blackText("Email Address"),
                  textField('Enter email', Icons.check_circle),
                  SizedBox(height: 12),
                  blackText("Password"),
                  textField('Enter password', Icons.remove_red_eye),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        shape: CircleBorder(),
                        checkColor: Colors.white,
                        activeColor: Colors.green,
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Expanded(
                        child: appColorText(
                            'By Creating an account you agree to our Term of Service'),
                      )
                    ],
                  ),
                  SizedBox(height: 16),
                  MyElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()));
                    },
                    text: 'Create an Account',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      greyText("Already have an account?"),
                      MyTextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()));
                          },
                          text: "Sign in")
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
