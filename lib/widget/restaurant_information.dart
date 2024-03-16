import 'package:flutter/material.dart';
import '../model/models.dart';
import 'widgets.dart';

class RestaurantInformation extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantInformation({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            restaurant.name,
            style: Theme.of(context)
                .textTheme
                .displaySmall
                ?.copyWith(color: Theme.of(context).primaryColor),
          ),
          const SizedBox(
            height: 10,
          ),
          RestaurantTags(
            restaurant: restaurant,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
              '${restaurant.distance}km away - tk${restaurant.deliveryFee} delivery fee',
              style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(
            height: 10,
          ),
          Text('Restaurant Information',
              style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(
            height: 5,
          ),
          Text(
              restaurant.restInformation,
              style: Theme.of(context).textTheme.bodyLarge),
        ],
      ),
    );
  }
}
