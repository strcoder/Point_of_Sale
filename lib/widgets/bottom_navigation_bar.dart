import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:point_of_sale/widgets/search.dart';
import 'package:point_of_sale/products/ui/screens/product_list.dart';
import 'package:point_of_sale/shop/ui/screens/new_sale.dart';
import 'package:point_of_sale/shop/ui/screens/dashboard.dart';
import 'package:point_of_sale/shop/ui/screens/close_shop.dart';
import 'package:point_of_sale/user/ui/screens/config.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  final pages = [
    NewSale(),
    ProductList(),
    Dashboard(),
    CloseShop(),
    UserConfig(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: <Widget>[
          Icon(Icons.add, size: 30, color: Colors.white,),
          Icon(Icons.list, size: 30, color: Colors.white,),
          Icon(Icons.compare_arrows, size: 30, color: Colors.white,),
          Icon(Icons.call_split, size: 30, color: Colors.white,),
          Icon(Icons.perm_identity, size: 30, color: Colors.white,),
        ],
        color: Colors.indigo[900],
        buttonBackgroundColor: Colors.indigo[900],
        backgroundColor: Colors.grey[200],
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
              _page = index;
            },
          );
        },
      ),
      body: Container(
        color: Colors.grey[200],
        child: Center(
          child: Column(
            children: <Widget>[
              Search(),
//              Text(_page.toString(), textScaleFactor: 10.0),
              pages[_page],
            ],
          ),
        ),
      ),
    );
  }
}