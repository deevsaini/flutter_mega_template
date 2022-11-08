/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import '../helper/style.dart' as style;

class ChooseLanguagePage extends StatefulWidget {
    ChooseLanguagePage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Choose Language';

    @override
    State<ChooseLanguagePage> createState() => _ChooseLanguagePageState();
}

class _ChooseLanguagePageState extends State<ChooseLanguagePage> {

    List<Item> languages = <Item> [
        Item('assets/images/arab.png', 'Arab World', 'English'),
        Item('assets/images/argentina.png', 'Argentina', 'Expanol'),
        Item('assets/images/australia.png', 'Australia', 'English'),
        Item('assets/images/belgium.png', 'Belgie', 'Nederlands'),
        Item('assets/images/belgium.png', 'Belgique', 'Francias'),
        Item('assets/images/brazil.png', 'Brazil', 'Portugues'),
        Item('assets/images/canada.png', 'Canada', 'English'),
        Item('assets/images/chile.png', 'Chile', 'Cestina'),
        Item('assets/images/colombia.png', 'Colombia', 'Expanol'),
        Item('assets/images/denmark.png', 'Danmark', 'Dansk'),
        Item('assets/images/germany.png', 'Deutschland', 'Dautsch'),
    ];

    String _currentLang = 'Arab World';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Color.fromARGB(255, 247, 247, 247),
            appBar: AppBar(
                centerTitle: true,
                elevation: 0,
                automaticallyImplyLeading: true,
                iconTheme: IconThemeData(
                    color: Colors.white
                ),
                title: Text('Choose Language'),
                titleTextStyle: style.pageTitleText(),
                flexibleSpace: Container(
                    decoration: style.appBarDecoration(),
                )
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                child: ListView(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(languages.length, (index) {
                        return Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1,
                                        color: (Colors.grey[300])!
                                    )
                                )
                            ),
                            child: ListTile(
                                contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 4),
                                title: Align(
                                    child: Row(
                                        children: [
                                            Image.asset(languages[index].img, width: 40),
                                            SizedBox(width: 16),
                                            Expanded(
                                                child: RichText(
                                                    text: TextSpan(
                                                        text: languages[index].name+" ",
                                                        style: TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'medium'),
                                                        children: <TextSpan>[
                                                            TextSpan(text: languages[index].lang,
                                                                style: TextStyle(color: Colors.grey, fontSize: 14)
                                                            ),
                                                        ],
                                                    ),
                                                )
                                            ),
                                        ],
                                    ),
                                    alignment: Alignment(-1.2, 0),
                                ),
                                leading: Radio(
                                    value: languages[index].name,
                                    groupValue: _currentLang,
                                    onChanged: (e) {
                                        setState(() {
                                            _currentLang = languages[index].name;
                                        });
                                    },
                                    activeColor: style.appColor,
                                ),
                            ),
                        );
                    }),
                ),
            ),
        );
    }


}

class Item {
    const Item(this.img, this.name, this.lang);
    final String img;
    final String name;
    final String lang;
}