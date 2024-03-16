import 'package:equatable/equatable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/generated/assets.dart';

class Category extends Equatable {
  final int id;
  final String name;
  final SvgPicture image;

  const Category({required this.id, required this.name, required this.image});

  @override
  List<Object?> get props => [id, name, image];

  static List<Category> categors = [
    Category(
        id: 1, name: 'Burger', image: SvgPicture.asset(Assets.iconsBurger)),
    Category(
        id: 6, name: 'Drinks', image: SvgPicture.asset(Assets.iconsDrinks)),
    Category(
        id: 2, name: 'Ice Cream', image: SvgPicture.asset(Assets.iconsIceCream)),
    Category(
        id: 3, name: 'Pizza', image: SvgPicture.asset(Assets.iconsPizza)),
    Category(
        id: 4, name: 'Salad', image: SvgPicture.asset(Assets.iconsSalad)),
    Category(
        id: 5, name: 'Dessert', image: SvgPicture.asset(Assets.iconsDessert)),
  ];
}
