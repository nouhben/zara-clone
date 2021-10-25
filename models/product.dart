import 'package:flutter/material.dart';

class Product {
  final String uid, barcode;
  final String title, description;
  final double price;
  final List<String> images;
  final List<Colors> colors;
  double rating;
  bool isFavorite, isPopular;

  Product({
    required this.images,
    required this.colors,
    required this.uid,
    required this.title,
    required this.rating,
    this.isFavorite = false,
    this.isPopular = false,
    required this.description,
    required this.price,
    required this.barcode,
  });
}
