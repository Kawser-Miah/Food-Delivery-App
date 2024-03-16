import 'package:equatable/equatable.dart';
import 'package:food_delivery_app/generated/assets.dart';
import 'models.dart';

class Restaurant extends Equatable {
  final int id;
  final String name;
  final String imgUrl;
  final String restInformation;
  final List<String> tags;
  final List<MenuItem> menuItems;

  final int deliveryTime;
  final double deliveryFee;
  final double distance;
  const Restaurant(
      {required this.id,
      required this.deliveryTime,
      required this.deliveryFee,
      required this.restInformation,
      required this.menuItems,
      required this.distance,
      required this.name,
      required this.imgUrl,
      required this.tags});

  @override
  List<Object?> get props => [
        id,
        name,
        imgUrl,
        tags,
        deliveryTime,
        deliveryFee,
        distance,
        menuItems,
        restInformation
      ];
  static List<Restaurant> restaurants = [
    Restaurant(
        id: 1,
        deliveryTime: 59,
        deliveryFee: 60,
        distance: 6.0,
        name: 'Sultan Dine',
        imgUrl: Assets.imagesSultanDine,
        tags: MenuItem.menuItems
            .where((menuItem) => menuItem.restaurantId == 1)
            .map((menuItem) => menuItem.category)
            .toSet()
            .toList(),
        menuItems: MenuItem.menuItems
            .where((element) => element.restaurantId == 1)
            .toList(),
        restInformation:
            'Sultan\'s Dine is a restaurant in Dhaka, Bangladesh that serves authentic and halal food. It\'s known for its kachchi biryani, which is made with seasoned potatoes, rich flavors, and fat lamb. Other dishes include chicken tandoori, mutton rezala, and zafrani sarbat.'),
    Restaurant(
        id: 2,
        deliveryTime: 45,
        deliveryFee: 53,
        distance: 4.0,
        name: 'Kacchi Bhai',
        imgUrl: Assets.imagesKacchiBhai,
        tags: MenuItem.menuItems
            .where((menuItem) => menuItem.restaurantId == 2)
            .map((menuItem) => menuItem.category)
            .toSet()
            .toList(),
        menuItems: MenuItem.menuItems
            .where((element) => element.restaurantId == 2)
            .toList(),
        restInformation:
            'Kacchi Bhai is a family-style restaurant in Dhaka, Bangladesh that serves traditional kachi. The restaurant offers a variety of packages, including Kacchi Khadok, Bashmoti Kacchi, and Plain Polau. '),
    Restaurant(
        id: 3,
        deliveryTime: 58,
        deliveryFee: 57,
        distance: 6.4,
        name: 'Pizza Burg',
        imgUrl: Assets.imagesPizzaBurg,
        tags: MenuItem.menuItems
            .where((menuItem) => menuItem.restaurantId == 3)
            .map((menuItem) => menuItem.category)
            .toSet()
            .toList(),
        menuItems: MenuItem.menuItems
            .where((element) => element.restaurantId == 3)
            .toList(),
        restInformation:
            'PizzaBurg is a local pizza chain in Dhaka, Bangladesh that offers 13 different flavors of pizza and burgers. The chain was founded in 2018 by Mir Mehadi, the same entrepreneur who created peri pasta. As of September 2022, PizzaBurg has nine outlets in Dhaka and one in Narayanganj, and plans to expand nationwide.'),
    Restaurant(
        id: 4,
        deliveryTime: 20,
        deliveryFee: 31,
        distance: 0.5,
        name: 'Tasty Treat',
        imgUrl: Assets.imagesTastyTreat,
        tags: MenuItem.menuItems
            .where((menuItem) => menuItem.restaurantId == 4)
            .map((menuItem) => menuItem.category)
            .toSet()
            .toList(),
        menuItems: MenuItem.menuItems
            .where((element) => element.restaurantId == 4)
            .toList(),
        restInformation:
            'Tasty Treat is a brand that offers a variety of ready-to-eat foods, including biscuits, beverages, sauces, snacks, frozen snacks, candies, and mithai. Tasty Treat has a strong social media presence, with over one million followers on Facebook, and also has an Instagram page and YouTube channel.'),
    Restaurant(
        id: 5,
        deliveryTime: 45,
        deliveryFee: 51,
        distance: 5.4,
        name: 'Burger Xpress-Mirpur',
        imgUrl: Assets.imagesBurgerXpress,
        tags: MenuItem.menuItems
            .where((menuItem) => menuItem.restaurantId == 5)
            .map((menuItem) => menuItem.category)
            .toSet()
            .toList(),
        menuItems: MenuItem.menuItems
            .where((element) => element.restaurantId == 5)
            .toList(),
        restInformation:
            'Burger Xpress is a burger shop with multiple locations in Dhaka, Bangladesh that serves halal food in a family-friendly setting. The menu includes burgers, sandwiches, chowmein, pizza, rice bowls, and other dishes. Some say the food is fresh and flavorful, and the prices are reasonable.'),
  ];
}
