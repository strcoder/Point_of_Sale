import 'package:flutter/material.dart';
import 'package:point_of_sale/products/model/product.dart';
import 'package:point_of_sale/user/model/user.dart';

class Shop {
  User _admin;
  List<User> _sellers;
  List<Product> _products;

  Shop (
    this._admin,
    this._sellers,
    this._products,
  );

  List<User> get sellers => _sellers;
  List<Product> get products => _products;
}