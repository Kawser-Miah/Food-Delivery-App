import 'dart:ui';

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
        id: 2, name: 'Pizza', image: SvgPicture.asset(Assets.iconsPizza)),
    Category(
        id: 3, name: 'Biryani', image: SvgPicture.asset(Assets.iconsBiryani,)),
    Category(
        id: 4, name: 'Chinese', image: SvgPicture.asset(Assets.iconsChinese)),
    Category(
        id: 5, name: 'Drinks', image: SvgPicture.asset(Assets.iconsDrinks)),
    Category(
        id: 6, name: 'Dessert', image: SvgPicture.asset(Assets.iconsDessert)),
      ];
}
