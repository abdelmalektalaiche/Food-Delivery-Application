import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class MenuItems extends Equatable {
  final int id;
  final int restaurentId;
  final String name;
  final String category;
  final String description;
  final double price;
  //final String imageUrl;

  MenuItems({
    required this.id,
    required this.restaurentId,
    required this.name,
    required this.category,
    required this.description,
    required this.price,
  });

  @override 
  List<Object?> get props => [
    id,
    restaurentId,
    name,
    category,
    description,
    price,
  ];
  
  static List<MenuItems> menuItems = [
    MenuItems(
      id: 1,
      restaurentId: 1,
      name: 'Margherita',
      category: 'Pizza',
      description: 'Tomatos, Basil, Mozaarila',
      price: 4.99,
    ),
    MenuItems(
      id: 2,
      restaurentId: 1,
      name: '4 Fromage',
      category: 'Pizza',
      description: 'Chedar, fromage blan, Mozzarila, tomatos',
      price: 5.99,
    ),
    MenuItems(
      id: 3,
      restaurentId: 1,
      name: 'Margherita',
      category: 'Pizza',
      description: 'Tomatos, Basil, Mozaarila',
      price: 4.99,
    ),
    MenuItems(
      id: 4,
      restaurentId: 1,
      name: '4 Fromage',
      category: 'Pizza',
      description: 'Chedar, fromage blan, Mozzarila, tomatos',
      price: 5.99,
    ),
    MenuItems(
      id: 5,
      restaurentId: 1,
      name: 'Fruit de mer',
      category: 'Pizza',
      description: 'crevette, tomate, rand, basil',
      price: 9.99,
    ),
    MenuItems(
      id: 6,
      restaurentId: 1,
      name: 'viande',
      category: 'Pizza',
      description: 'viande, l7am, bsal, tomatos',
      price: 7.99,
    ),
    MenuItems(
      id: 1,
      restaurentId: 1,
      name: 'Coca Cola',
      category: 'Drinks',
      description: 'A fresh drink',
      price: 1.56,
    ),
    MenuItems(
      id: 2,
      restaurentId: 1,
      name: 'sprite',
      category: 'Drinks',
      description: 'A fresh drink',
      price: 1.56,
    ),
  ];
}