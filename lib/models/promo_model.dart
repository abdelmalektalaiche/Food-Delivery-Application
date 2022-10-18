import 'package:equatable/equatable.dart';

class Promo extends Equatable {
  final int id;
  final String title;
  final String description;
  final String imageUrl;

  Promo({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
  });
  
  @override
  List<Object?> get props => [
    id,
    title,
    description,
    imageUrl
  ];

  static List<Promo> promos = [
    Promo(
      id: 1,
      title: 'Free Delivery on Your First 3 Orders',
      description: 'Place an order of \$10 or more and the delivery fee is on us',
      imageUrl: 'https://images.squarespace-cdn.com/content/v1/53b839afe4b07ea978436183/1608506169128-S6KYNEV61LEP5MS1UIH4/traditional-food-around-the-world-Travlinmad.jpg',
    ),
    Promo(
      id: 2,
      title: '20% off on Selected Restaurents',
      description: 'Get a discount at more than 200+ restaurents',
      imageUrl: 'https://www.advantour.com/img/china/food/sea-food-market.jpg',
    ),
  ];
}