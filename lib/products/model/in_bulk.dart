import 'package:flutter/material.dart';
import 'package:point_of_sale/products/model/product.dart';

class InBulk extends Product {

  double _inBulk;

  InBulk(
      this._inBulk,
      String name,
      String codebar,
      String description,
      String purchasePrice,
      String salePrice,
      String productImage)
      : super(name, codebar, description, purchasePrice, salePrice, productImage);

  InBulk.map(dynamic obj) : super.map(obj){
    this._inBulk = obj['inBulk'];
  }

  double get inBulk => _inBulk;
}