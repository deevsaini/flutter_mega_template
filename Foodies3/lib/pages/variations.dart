/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Flutter UI Kit
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2021-present initappz.
*/
import 'package:flutter/material.dart';
import 'package:gofoodflutter/pages/confirm-order.dart';
import '../helper/style.dart' as style;

class VariationsPage extends StatefulWidget {
    VariationsPage({Key? key, Title? title}) : super(key: key);
    final String title = '';
    static const String page_id = 'Variations';

    @override
    State<VariationsPage> createState() => _VariationsPageState();
}

class _VariationsPageState extends State<VariationsPage> {

    int qty = 1;

    List<SizeItem> sizes = <SizeItem>[
        SizeItem('Size S', '(500 ml)', '\$ 1'),
        SizeItem('Size M', '(750 ml)', '\$ 1.5'),
        SizeItem('Size L', '(1100 ml)', '\$ 2'),
    ];
    String _currentSize = 'Size S';

    List<String> addons = <String>[
        'Add Lemon', 'Add Ice'
    ];
    String _currentAddon = 'Add Lemon';

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: _buildBody(context),
            bottomNavigationBar: _buildBottomContainer(),
        );
    }

    Widget _buildBody(context) {
        return SingleChildScrollView(
            child: Container(
                color: style.appGrey,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                        Container(
                            padding: EdgeInsets.all(16),
                            color: Colors.white,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                    Text('Add New Item',style: style.smallTitle()),

                                    SizedBox(height: 16),

                                    _buildFoodDetail(),
                                ],
                            ),
                        ),

                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                    _buildGreyText('Size'),
                                    _buildGreyText('Price'),
                                ],
                            ),
                        ),

                        Container(
                            padding: EdgeInsets.only(left: 4, right: 16),
                            color: Colors.white,
                            child: Column(
                                children: [
                                    _buildSizeList(),
                                ],
                            ),
                        ),

                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                    _buildGreyText('Options')
                                ],
                            ),
                        ),

                        Container(
                            padding: EdgeInsets.only(left: 4, right: 16),
                            color: Colors.white,
                            child: Column(
                                children: [
                                    _buildAddonList(),
                                ],
                            ),
                        ),

                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                    _buildGreyText('Note')
                                ],
                            ),
                        ),

                        Container(
                            padding: EdgeInsets.all(16),
                            color: Colors.white,
                            child: TextField(
                                maxLines: 3,
                                decoration: style.textAreaDecoration('Type note here!'),
                            ),
                        ),

                    ],
                ),
            ),
        );
    }

    Widget _buildFoodDetail() {
        return Row(
            children: [
                Container(
                    height: 80,
                    width: 85,
                    margin: EdgeInsets.only(right: 16),
                    decoration: style.roundedImage('assets/images/food1.jpg'),
                ),
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text('Lemon Juice Fresh',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'medium'
                                ),
                            ),
                            Row(
                                children: [
                                    Row(
                                        children: [
                                            Icon(Icons.shopping_bag_outlined, color: style.appGreyText, size: 16),
                                            Padding(
                                                padding: EdgeInsets.only(left: 3, right: 3),
                                                child: Text('25',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: style.appGreyText
                                                    ),
                                                ),
                                            ),
                                          Icon(Icons.add, color: style.appGreyText, size: 16)
                                        ],
                                    ),
                                    Text('|', style: TextStyle(color: style.appGreyText)),
                                    Row(
                                        children: [
                                            Icon(Icons.thumb_up_outlined, color: style.appGreyText, size: 16),
                                            Padding(
                                                padding: EdgeInsets.only(left: 3),
                                                child: Text('25',
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: style.appGreyText
                                                    ),
                                                ),
                                            ),
                                        ],
                                    ),
                                ],
                            ),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                    Text('\$2.9',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'medium',
                                            color: style.appColor
                                        ),
                                    ),
                                    Row(
                                        children: [
                                            InkWell(
                                                onTap: () {
                                                    setState(() {
                                                        if(qty > 1) {
                                                          qty = qty - 1;
                                                        }
                                                    });
                                                },
                                                child: Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.all(
                                                            Radius.circular(100)
                                                        ),
                                                        color: Color.fromARGB(255, 243, 243, 243)
                                                    ),
                                                    child: Icon(Icons.remove, size: 20),
                                                )
                                            ),
                                            Padding(
                                                padding: EdgeInsets.symmetric(horizontal: 12),
                                                child: Text('$qty',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontFamily: 'medium'
                                                    ),
                                                )
                                            ),
                                            InkWell(
                                                onTap: () {
                                                    setState(() {
                                                        if(qty < 10) {
                                                          qty = qty + 1;
                                                        }
                                                    });
                                                },
                                                child: Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.all(
                                                            Radius.circular(100)
                                                        ),
                                                        color: style.appColor
                                                    ),
                                                    child: Icon(Icons.add, size: 20, color: Colors.white),
                                                )
                                            ),
                                        ],
                                    )
                                ],
                            )
                        ],
                    )
                )
            ],
        );
    }

    Widget _buildGreyText(val) {
        return Text('$val',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 15
            ),
        );
    }

    Widget _buildSizeList() {
        return ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: List.generate(sizes.length, (index) {
                return ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
                    title: Align(
                        child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: sizes[index].size+" ",
                                style: TextStyle(fontSize: 16, color: Colors.black, fontFamily: 'medium'),
                                children: <TextSpan>[
                                    TextSpan(text: sizes[index].qty,
                                        style: TextStyle(color: style.appGreyText)
                                    ),
                                ],
                            ),
                        ),
                        alignment: Alignment(-1.2, 0),
                    ),
                    leading: Radio(
                        value: sizes[index].size,
                        groupValue: _currentSize,
                        onChanged: (e) {
                            setState(() {
                                _currentSize = sizes[index].size;
                            });
                        },
                        activeColor: style.appColor,
                    ),
                    trailing: Text(sizes[index].price,
                        style: TextStyle(
                            fontFamily: 'medium'
                        ),
                    ),
                );
            }),
        );
    }

    Widget _buildAddonList() {
        return ListView(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: List.generate(addons.length, (index) {
                return ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 0.0),
                    title: Align(
                        child: Text(addons[index],
                          style: TextStyle(fontFamily: 'medium'),
                        ),
                        alignment: Alignment(-1.2, 0),
                    ),
                    leading: Radio(
                        value: addons[index],
                        groupValue: _currentAddon,
                        onChanged: (e) {
                            setState(() {
                              _currentAddon = addons[index];
                            });
                        },
                        activeColor: style.appColor,
                    ),
                );
            }),
        );
    }

    Widget _buildBottomContainer() {
        return Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        width: 1,
                        color: (Colors.grey[300])!
                    )
                )
            ),
            child: Container(
                height: 71,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: style.appColor,
                    borderRadius: BorderRadius.all(
                        Radius.circular(8)
                    ),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Text('1 Item'.toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.grey[400],
                                        fontSize: 15
                                    ),
                                ),
                                Text('\$3.0', style: TextStyle(color: Colors.white, fontSize: 16)),
                            ],
                        ),
                        InkWell(
                            onTap: () {
                                Navigator.push(context, new MaterialPageRoute(
                                    builder: (context) => new ConfirmOrderPage()
                                ));
                            },
                            child: Text('Add to Cart', style: TextStyle(color: Colors.white, fontFamily: 'medium', fontSize: 16))
                        ),
                    ],
                ),
            ),
        );
    }

}

class SizeItem {
    const SizeItem(this.size, this.qty, this.price);
    final String size;
    final String qty;
    final String price;
}

