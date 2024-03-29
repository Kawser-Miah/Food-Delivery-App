import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/restaurant_listing_screens/restaurant_listing_screen.dart';
import '../model/models.dart';

class CategoryBox extends StatelessWidget {
  final Category category;
  const CategoryBox({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final List<Restaurant> restaurant = Restaurant.restaurants
        .where((restaurant) => restaurant.categoryId.contains(category.id))
        .toList();
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    RestaurantListingScreen(restaurant: restaurant)));
      },
      child: Container(
        width: 80,
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(5.0)),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                height: 50,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: category.image,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  category.name,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
