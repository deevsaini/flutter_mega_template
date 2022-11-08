/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:date/components/constants.dart';
import 'package:date/components/button.dart';
import 'package:date/pages/login.dart';

class Register extends StatefulWidget {
  static const String id = 'register';

  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('Register',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                      color: Colors.black45)),
              const SizedBox(
                height: 48.0,
              ),
              TextField(
                onChanged: (value) {},
                decoration: kTextFieldDecoration.copyWith(hintText: 'UserName'),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                onChanged: (value) {},
                decoration: kTextFieldDecoration.copyWith(hintText: 'Password'),
              ),
              const SizedBox(
                height: 20.0,
              ),
              TextField(
                onChanged: (value) {},
                decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Confirm Password'),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFFf66d06)),
                        padding:
                            MaterialStateProperty.all(const EdgeInsets.all(20)),
                        textStyle: MaterialStateProperty.all(const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold))),
                    child: const Text("Register"),
                    onPressed: () {
                      Navigator.pushNamed(context, Login.id);
                    },
                  )),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, Register.id);
                },
                child: const Text('Login',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black54)),
              )
            ],
          ),
        ));
  }
}
