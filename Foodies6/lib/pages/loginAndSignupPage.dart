/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:foodies_fluttermarketplace_hardik/pages/loginPage.dart';
import 'package:foodies_fluttermarketplace_hardik/utilities/constance.dart'
    as style;

class loginAndSignupPage extends StatefulWidget {
  loginAndSignupPage({Key? key}) : super(key: key);

  static const String pageId = 'loginAndSignupPage';

  @override
  State<loginAndSignupPage> createState() => _loginAndSignupPageState();
}

class _loginAndSignupPageState extends State<loginAndSignupPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.srcOver),
                  image: AssetImage(
                    'assets/images/22.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: _buildBody(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(100),
                  child: FittedBox(
                    child: Image.asset('assets/images/l2.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  'Find and book chef & meal services near by you.',
                  style: TextStyle(
                      fontFamily: 'bold', color: Colors.white, fontSize: 17),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => loginPage()));
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: style.contentButtonStyle2(),
                    child: Center(
                      child: Text(
                        'Log in',
                        style:
                            TextStyle(fontFamily: 'bold', color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  onTap: () {
                    //
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: style.categoriesButtonStyle3(),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style:
                            TextStyle(fontFamily: 'bold', color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Wrap(
                  children: [
                    Text(
                      'Already have an account ?',
                      style: TextStyle(
                          fontFamily: 'medium',
                          color: Colors.white,
                          fontSize: 16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => loginPage()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontFamily: 'medium',
                            color: style.appColor,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
