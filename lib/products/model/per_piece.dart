import 'package:flutter/material.dart';
import 'package:point_of_sale/products/model/product.dart';

class PerPiece extends Product {
  int _pieces;

  PerPiece(
      this._pieces,
      String name,
      String codebar,
      String description,
      String purchasePrice,
      String salePrice,
      String productImage)
      : super(name, codebar, description, purchasePrice, salePrice, productImage);

  PerPiece.map(dynamic obj) : super.map(obj){
    this._pieces = obj['pieces'];
  }

  int get pieces => _pieces;
}