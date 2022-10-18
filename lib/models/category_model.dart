import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Category extends Equatable {
  final int id;
  final String name;
  final Image image;

  Category({
    required this.id,
    required this.name,
    required this.image,
  });
  
  @override
  List<Object?> get props => [id, name, image];

  static List<Category> categories = [
    Category(
      id: 1,
      name: 'Pizza',
      image: Image.asset('assets/pizza.svg'),
    ),
    Category(
      id: 2,
      name: 'Burger',
      image: Image.asset('assets/burger.svg'),
    ),
    Category(
      id: 3,
      name: 'salad',
      image: Image.asset('assets/avocado.svg'),
    ),
    Category(
      id: 4,
      name: 'Desser',
      image: Image.asset('assets/pancake.svg'),
    ),
    Category(
      id: 5,
      name: 'Drink',
      image: Image.asset('assets/juice-6.svg'),
    ),
  ];
}