import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavouritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  const FavouritesScreen(this.favoriteMeals, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return const Center(
        child: Text('You have no favourites yet!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, i) {
          return MealItem(
            id: favoriteMeals[i].id,
            title: favoriteMeals[i].title,
            imageURL: favoriteMeals[i].imageURL,
            duration: favoriteMeals[i].duration,
            complexity: favoriteMeals[i].complexity,
            affordability: favoriteMeals[i].affordability,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
