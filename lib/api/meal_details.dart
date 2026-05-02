import 'package:flutter/material.dart';
import 'package:sec_flutter/api/api_model.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({super.key, required this.meals, required this.i});

  final List<Meals> meals;
  final int i;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${meals[i].strMeal}")),
      body: Column(
        children: [
          CircleAvatar(
            minRadius: 100,

            backgroundImage: NetworkImage(meals[i].strMealThumb ?? " "),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: meals[i].ingredients.length,
              itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                child: Row(
                  mainAxisAlignment: .spaceBetween,
                  children: [
                    Text(meals[i].ingredients[index]),
                    Text(meals[i].measures[index]),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
