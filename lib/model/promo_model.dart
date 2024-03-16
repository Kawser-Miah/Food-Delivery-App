import 'package:equatable/equatable.dart';
import 'package:food_delivery_app/generated/assets.dart';

class Promo extends Equatable {
  final int id;
  final String title;
  final String description;
  final String imageUrl;

  const Promo(
      {required this.id,
      required this.title,
      required this.description,
      required this.imageUrl});

  @override
  List<Object?> get props => [id, title, description, imageUrl];

  static List<Promo> promos = [
    const Promo(
        id: 1,
        title: 'Free Delivery on Your First 3 Orders.',
        description: 'Place an order of tk10 or more and the fee is on us',
        imageUrl: Assets.imagesPromo1),
    const Promo(
        id: 2,
        title: '20% off on Selected Restaurants.',
        description: 'Get a discount at more than 200+ restaurants',
        imageUrl: Assets.imagesPromo2),
    const Promo(
        id: 3,
        title: 'Tk. 200 off | Apply-BOX200',
        description: 'Burger Xpress: Happiness in every bite, any mood',
        imageUrl: Assets.imagesPromo3),
  ];
}
