import 'package:flutter/material.dart';

class UserConfig extends StatefulWidget {
  @override
  _UserConfigState createState() => _UserConfigState();
}

class _UserConfigState extends State<UserConfig> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 130,
      color: Colors.grey,
    );
  }
}
