/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:spotify/pages/chooseArtist.dart';

class musicLanguage extends StatefulWidget {
  musicLanguage({Key? key}) : super(key: key);

  static const String page_id = "Music Language";

  @override
  _musicLanguageState createState() => _musicLanguageState();
}

class _musicLanguageState extends State<musicLanguage> {
  int selectID = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 6,
                        child:
                            _buildSelect(1, 'assets/images/s1.jpg', 'Hindi')),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 6,
                        child:
                            _buildSelect(2, 'assets/images/s2.jpg', 'English')),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 6,
                        child:
                            _buildSelect(3, 'assets/images/s3.jpg', 'Punjabi')),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 6,
                        child:
                            _buildSelect(4, 'assets/images/s4.jpg', 'Tamil')),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 6,
                        child:
                            _buildSelect(5, 'assets/images/s5.jpg', 'Telugu')),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 6,
                        child: _buildSelect(
                            6, 'assets/images/s1.jpg', 'Malayalam')),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 6,
                        child:
                            _buildSelect(7, 'assets/images/s2.jpg', 'Marathi')),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 6,
                        child: _buildSelect(
                            8, 'assets/images/s3.jpg', 'Gujarati')),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        flex: 6,
                        child:
                            _buildSelect(9, 'assets/images/s4.jpg', 'Bengali')),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        flex: 6,
                        child: _buildSelect(
                            10, 'assets/images/s5.jpg', 'Kannada')),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => chooseArtist()));
                },
                child: Text(
                  'Next',
                  style: TextStyle(fontFamily: 'semi-bold'),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSelect(id, image, text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectID = id;
        });
      },
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(
                (image),
              ),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(fontFamily: 'medium'),
              ),
              selectID == id
                  ? Icon(
                      Icons.check_circle,
                      color: Colors.white,
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
