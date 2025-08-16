import 'package:e_comm_app/Inovant_Ecom/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  Product2? _product;
  String? _selectedColor;
  int _quantity = 1;

  int get quantity => _quantity;
  Product2? get product => _product;
  String? get selectedColor => _selectedColor;

  void setProduct(Product2 product) {
    _product = product;
    _selectedColor = product.colors.isNotEmpty ? product.colors[0] : null;
    notifyListeners();
  }

  void selectColor(String color) {
    _selectedColor = color;
    notifyListeners();
  }

  void setQuantity(int quantity) {
    _quantity = quantity;
    notifyListeners();
  }
}