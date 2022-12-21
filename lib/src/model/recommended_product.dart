import 'package:proyecto_flutter/core/app_color.dart';
import 'package:flutter/material.dart';

class RecommendedProduct {
  Color? cardBackgroundColor;
  Color? buttonTextColor;
  Color? buttonBackgroundColor;
  String? imagePath;

  RecommendedProduct(
      {this.cardBackgroundColor,
        this.buttonTextColor = AppColor.green,
        this.buttonBackgroundColor = Colors.white,
        this.imagePath});
}