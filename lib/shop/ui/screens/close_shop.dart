import 'package:flutter/material.dart';

class CloseShop extends StatefulWidget {
  @override
  _CloseShopState createState() => _CloseShopState();
}

class _CloseShopState extends State<CloseShop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 130,
      color: Colors.blue,
    );
  }
}
