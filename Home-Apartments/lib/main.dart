/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:home/modal/password_changed_modal.dart';
import 'package:home/modal/terms_condition.dart';
import 'package:home/pages/forgot_Password.dart';
import 'package:home/pages/login.dart';
import 'package:home/pages/password_recovery.dart';
import 'package:home/pages/register.dart';
import 'package:home/pages/verification.dart';
import 'package:home/pages/welcome.dart';
import '../components/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Apartments',
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
          fontFamily: "regular",
          primaryColor: appColor,
          backgroundColor: appColor

          // brightness: Brightness.light,
          ),
      initialRoute: Welcome.id,
      routes: {
        Welcome.id: (context) => const Welcome(),
        Login.id: (context) => const Login(),
        Register.id: (context) => const Register(),
        PasswordRecovery.id: (context) => const PasswordRecovery(),
        ForgotPassword.id: (context) => const ForgotPassword(),
        Verification.id: (context) => const Verification(),
        TermsConditionModal.id: (context) => const TermsConditionModal(),
        PasswordChangeModal.id: (context) => const PasswordChangeModal(),

        // Agent.id: (context) => const Agent(),
        // AgentDetail.id: (context) => const AgentDetail(),
      },
    );
  }
}
