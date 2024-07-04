// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';

class ProductModel {
  String name;
  String model;
  String imgAddress;
  String description;
  Color modelColor;
  double price;

  ProductModel({
    required this.name,
    required this.model,
    required this.price,
    required this.imgAddress,
    required this.modelColor,
    required this.description,
  });
}



 
