import 'package:flutter/material.dart';

class Product {
  String _id;
  String _name;
  String _codebar;
  String _description;
  String _purchasePrice;
  String _salePrice;
  String _productImage;

  Product(
    this._name,
    this._codebar,
    this._description,
    this._purchasePrice,
    this._salePrice,
    this._productImage,
  );

  Product.map(dynamic obj){
    this._name = obj['name'];
    this._codebar = obj['codebar'];
    this._description = obj['description'];
    this._purchasePrice = obj['purchasePrice'];
    this._salePrice = obj['_salePrice'];
    this._productImage = obj['ProductImage'];
  }

  String get id => _id;
  String get name => _name;
  String get codebar => _codebar;
  String get description => _description;
  String get purchasePrice => _purchasePrice;
  String get salePrice => _salePrice;
  String get productImage => _productImage;

//  Product.fromSnapShot(DataSnapshot snapshot){
//    _id = snapshot.key;
//    _name = snapshot.value['name'];
//    _codebar = snapshot.value['codebar'];
//    _description = snapshot.value['description'];
//    _purchasePrice = snapshot.value['purchasePrice'];
//    _salePrice = snapshot.value['salePrice'];
//    _productImage = snapshot.value['ProductImage'];
//  }
}