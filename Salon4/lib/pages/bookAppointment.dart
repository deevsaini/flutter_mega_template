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
import 'package:date_picker_timeline/date_picker_timeline.dart';

class BookAppointmentScreen extends StatefulWidget {
    BookAppointmentScreen({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Book Appointment';

    @override
    State<BookAppointmentScreen> createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen> {

    List<Item> services = <Item>[
        Item('assets/images/service1.jpg', 'Hair'),
        Item('assets/images/service2.jpg', 'Massage'),
        Item('assets/images/service3.jpg', 'Face & Skin'),
    ];

    List <String> slots=[
        '10:00 AM', '11:00 AM', '11:30 AM', '12:00 PM', '01:00 PM', '02:00 PM', '03:30 PM', '04:00 PM',
        '04:30 PM', '05:00 PM', '06:00 PM', '07:00 PM', '07:30 PM', '08:00 PM', '08:30 AM'
    ];

    String currentSlot = '';
    DateTime selectedValue = DateTime.now();

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                iconTheme: IconThemeData(
                    color: Colors.white
                ),
                automaticallyImplyLeading: false,
                title: Text('Book Appointment', style: style.pageTitleText()),
                centerTitle: true,
                elevation: 0,
                flexibleSpace: Container(
                    decoration: style.appBarDecoration(),
                ),
            ),
            body: _buildBody(context),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                    children: <Widget>[

                          Container(
                              padding: EdgeInsets.all(16),
                              decoration: titleContainer(),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                      Text('Choose Date & Time', style: titleLabel()),
                                      Text('March'),
                                  ],
                              ),
                          ),

                          Container(
                              height: 70,
                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                              decoration: borderContainer(),
                              child: _buildTimeContainer(),
                          ),

                          Container(
                            height: 150,
                              padding: EdgeInsets.all(16),
                              decoration: borderContainer(),
                              child: DatePicker(
                                DateTime.now(),
                                  initialSelectedDate: DateTime.now(),
                                  selectionColor: style.appColor,
                                  selectedTextColor: Colors.white,
                                  onDateChange: (date) {
                                      setState(() {
                                          selectedValue = date;
                                          debugPrint(selectedValue.toString());
                                      });
                                  },
                              ),
                          ),

                          Container(
                              padding: EdgeInsets.all(16),
                              decoration: titleContainer(),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                      Text('Add Services', style: titleLabel()),
                                      serviceBox(),
                                  ],
                              ),
                          ),

                          ListView(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              children: services.map((e) {
                                  return _buildSingleService(e);
                              }).toList(),
                          )

                    ],
                ),
          ),
        );
    }

    titleContainer() {
        return BoxDecoration(
            color: Color.fromARGB(255, 245, 245, 245),
            border: Border(
                bottom: BorderSide(
                    width: 2,
                    color: Color.fromARGB(255, 234, 234, 234)
                )
            )
        );
    }

    titleLabel() {
        return TextStyle(
            fontSize: 18,
            fontFamily: 'medium'
        );
    }

    borderContainer() {
        return BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    width: 2,
                    color: Color.fromARGB(255, 234, 234, 234)
                )
            )
        );
    }

    Widget _buildTimeContainer() {
        return ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: List.generate(slots.length, (index) {
                return InkWell(
                    onTap: () {
                        setState(() {
                            currentSlot = slots[index];
                        });
                    },
                    child: _buildTimeLabel(slots[index]),
                );
            }),
        );
    }

    Widget _buildTimeLabel(time) {
        return Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
                gradient: currentSlot == time ?
                LinearGradient(
                    begin: Alignment.topRight,
                    end : Alignment.topLeft,
                    colors: [style.appColor2, style.appColor],
                ) :
                LinearGradient(
                    begin: Alignment.topRight,
                    end : Alignment.topLeft,
                    colors: [Colors.transparent, Colors.transparent],
                ),
                border: Border.all(
                    width: 1,
                    color: (Colors.grey[300])!
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(5)
                )
            ),
            child: Text(time,
                style: TextStyle(
                    fontFamily: 'medium',
                    color: time == currentSlot ? Colors.white: Colors.black
                ),
            ),
        );
    }

    serviceBox() {
        return Container(
            height: 34,
            width: 34,
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                    width: 1,
                    color: (Colors.grey[300])!
                ),
                borderRadius: BorderRadius.all(
                    Radius.circular(5)
                )
            ),
            child: Image(
                image: AssetImage('assets/images/woman.png'),
            ),
        );
    }

    Widget _buildSingleService(val) {
        return Container(
            padding: EdgeInsets.all(16),
            decoration: borderContainer(),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Row(
                        children: [
                            Container(
                                height: 50,
                                width: 50,
                                margin: EdgeInsets.only(right: 16),
                                decoration: style.avatarImage(val.img),
                            ),
                            Text(val.name,
                                style: TextStyle(
                                    fontSize: 16
                                ),
                            ) ,
                        ],
                    ),
                    Container(
                        height: 34,
                        width: 34,
                        decoration: actionBox(),
                        child: Icon(Icons.remove, color: Color.fromARGB(255, 166, 166, 166)),
                    )
                ],
            ),
        );
    }

    actionBox() {
        return BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(100)
            ),
            border: Border.all(
                width: 2,
                color: Color.fromARGB(255, 230, 230, 230)
            )
        );
    }

}

class Item {
  const Item(this.img, this.name);
  final String img;
  final String name;
}