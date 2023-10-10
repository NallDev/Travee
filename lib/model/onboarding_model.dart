import 'package:flutter/material.dart';

class OnBoardingModel {
  final String title;
  final String image;
  final Color btnColor;
  final RadialGradient backgroundColor;

  OnBoardingModel({
    required this.title,
    required this.image,
    required this.btnColor,
    required this.backgroundColor,
  });
}

List<OnBoardingModel> contents = [
  OnBoardingModel(
    title: "Explorer the world",
    image: "images/bottom_1.png",
    btnColor: Color(0xFFFF5900),
    backgroundColor: const RadialGradient(
      radius: 3.7958,
      center: Alignment(1.5128, -1.0278),
      colors: [
        Color(0xFFFFBD80),
        Color(0xFFFFF6EF),
      ],
    ),
  ),
  OnBoardingModel(
    title: "Safe and easy",
    image: "images/bottom_2.png",
    btnColor: Color(0xFF24B24C),
    backgroundColor: const RadialGradient(
      radius: 3.7958,
      center: Alignment(1.5128, -1.0278),
      colors: [
        Color(0xFF8BFFA5),
        Color(0xFFF3FFEF),
      ],
    ),
  ),
  OnBoardingModel(
    title: "Welcome to Travee",
    image: "images/bottom_3.png",
    btnColor: Color(0xFF1F41F4),
    backgroundColor: const RadialGradient(
      radius: 3.7958,
      center: Alignment(1.5128, -1.0278),
      colors: [
        Color(0xFF88C6FF),
        Color(0xFFFFFFFF),
      ],
    ),
  ),
];