import 'package:flutter/material.dart';
import '../model/models.dart';

class RestaurantTags extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantTags({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: restaurant.tags
            .map((tag) => restaurant.tags.indexOf(tag) ==
            restaurant.tags.length - 1
            ? Text(
          tag,
          style: Theme.of(context).textTheme.bodyLarge,
        )
            : Text(
          '$tag, ',
          style: Theme.of(context).textTheme.bodyLarge,
        ))
            .toList(),
      ),
    );
  }
}
