import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;


  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "메가커피 아메리카노 기프티콘",
      price: 2000,
      size: 12,
      description: dummyText,
      image: "assets/images/megacoffee.png",
      color: Colors.transparent),
  Product(
      id: 2,
      title: "화가 많이 난 달이 이모티콘",
      price: 500,
      size: 8,
      description: dummyText,
      image: "assets/images/emoji.jpg",
      color: Colors.transparent),
  Product(
      id: 3,
      title: "어린이 돕기",
      price: 100,
      size: 10,
      description: dummyText,
      image: "assets/images/help.jpg",
      color: Colors.transparent),
  Product(
      id: 4,
      title: "스타벅스 카페라떼 기프티콘",
      price: 5000,
      size: 11,
      description: dummyText,
      image: "assets/images/starbucks.jpg",
      color: Colors.transparent),

];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
