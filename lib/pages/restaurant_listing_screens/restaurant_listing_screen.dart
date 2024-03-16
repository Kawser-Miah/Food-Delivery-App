import 'package:flutter/material.dart';
import '../../widget/widgets.dart';
import '../../model/models.dart';


class RestaurantListingScreen extends StatelessWidget {

  final List<Restaurant> restaurant;
  const RestaurantListingScreen({super.key, required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Restaurants",style: TextStyle(fontSize: 18),),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: restaurant.length,
            itemBuilder: (context,index){
            return RestaurantCard(restaurant: restaurant[index]);
            }),
      ),
    );
  }
}
