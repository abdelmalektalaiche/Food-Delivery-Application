import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:delivery_food/models/models.dart';

import 'menu_item_model.dart';

class Restaurent extends Equatable {
  final int id;
  final String imageUrl;
  final String name;
  final List<String> tags;
  final List<MenuItems> menuItems;
  final int deliveryTime;
  final double deliveryFee;
  final double distance;

  Restaurent({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.tags,
    required this.menuItems,
    required this.deliveryTime,
    required this.deliveryFee,
    required this.distance,
  });

  @override 
  List<Object?> get props => [
    id,
    imageUrl,
    name,
    tags,
    menuItems,
    deliveryTime,
    deliveryFee,
    distance,
  ];

  static List<Restaurent> restaurent = [
    Restaurent(
      id: 1,
      imageUrl: 'https://www.lovevalencia.com/wp-content/uploads/2015/05/Gelateria-Central-en-Valencia.jpg',
      name: 'Golden Ice Gelato Artigianale',
      tags: MenuItems.menuItems.where((menuItem) => menuItem.restaurentId == 1).map((menuItem) => menuItem.category).toSet().toList(),
      menuItems: MenuItems.menuItems.where((menuItem) => menuItem.restaurentId == 1).toList(),
      deliveryTime: 30,
      deliveryFee: 2.99,
      distance: 0.1,
    ),
    Restaurent(
      id: 2,
      imageUrl: 'https://media-cdn.tripadvisor.com/media/photo-s/1a/51/df/c0/mcdonald-s.jpg',
      name: 'mcdonald''s',
      tags: MenuItems.menuItems.where((menuItem) => menuItem.restaurentId == 2).map((menuItem) => menuItem.category).toSet().toList(),
      menuItems: MenuItems.menuItems.where((menuItem) => menuItem.restaurentId == 2).toList(),
      deliveryTime: 15,
      deliveryFee: 1.85,
      distance: 1.3,
    ),
    Restaurent(
      id: 3,
      imageUrl: 'https://www.la-viande.fr/sites/default/files/inline-images/sandwich-roti-boeuf.jpg',
      name: 'Green Snack',
      tags: MenuItems.menuItems.where((menuItem) => menuItem.restaurentId == 3).map((menuItem) => menuItem.category).toSet().toList(),
      menuItems: MenuItems.menuItems.where((menuItem) => menuItem.restaurentId == 3).toList(),
      deliveryTime: 26,
      deliveryFee: 5.99,
      distance: 5.0,
    ),
    Restaurent(
      id: 4,
      imageUrl: 'https://cdn.chefclub.tools/uploads/recipes/cover-thumbnail/9e20d70e-2c0c-4163-bf0b-4b594a77c890.jpg',
      name: 'Fratello',
      tags: MenuItems.menuItems.where((menuItem) => menuItem.restaurentId == 4).map((menuItem) => menuItem.category).toSet().toList(),
      menuItems: MenuItems.menuItems.where((menuItem) => menuItem.restaurentId == 4).toList(),
      deliveryTime: 30,
      deliveryFee: 2.99,
      distance: 0.1,
    ),
    Restaurent(
      id: 5,
      imageUrl: 'https://www.lovevalencia.com/wp-content/uploads/2015/05/Gelateria-Central-en-Valencia.jpg',
      name: 'Golden Ice Gelato Artigianale',
      tags: MenuItems.menuItems.where((menuItem) => menuItem.restaurentId == 5).map((menuItem) => menuItem.category).toSet().toList(),
      menuItems: MenuItems.menuItems.where((menuItem) => menuItem.restaurentId == 5).toList(),
      deliveryTime: 30,
      deliveryFee: 2.99,
      distance: 0.1,
    ),
  ];
}