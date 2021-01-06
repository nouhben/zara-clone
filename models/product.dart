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
    this.images,
    this.colors,
    this.uid,
    this.title,
    this.rating,
    this.isFavorite = false,
    this.isPopular = false,
    this.description,
    this.price,
    this.barcode,
  });
}
