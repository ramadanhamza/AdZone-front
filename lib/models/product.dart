import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final int price;
  final bool isFavourite, isPopular;

  Product({
    @required this.id,
    @required this.images,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "images/019.png",
    ],
    title: "300DH GiftCard",
    price: 400,
    description: description,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "images/kfc.png",
    ],
    title: "Nike Sport White - Man Pant",
    price: 500,
    description: description,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "images/istore.png",
    ],
    title: "Gloves XC Omega - Polygon",
    price: 1000,
    description: description,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "images/woolworths.png",
    ],
    title: "Logitech Head",
    price: 600,
    description: description,
    isFavourite: true,
    isPopular: true,
  ),
];

const String description =
    "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n'a pas fait que survivre cinq siècles, mais s'est aussi adapté à la bureautique informatique, sans que son contenu n'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.";