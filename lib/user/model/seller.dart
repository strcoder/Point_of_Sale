import 'package:flutter/material.dart';
import 'package:point_of_sale/user/model/user.dart';

class Seller extends User {
  int _sales;
  double _earnings;

  Seller(
      this._sales,
      this._earnings,
      String uid,
      String name,
      String email,
      String photoURL)
      : super(uid, name, email, photoURL);
}