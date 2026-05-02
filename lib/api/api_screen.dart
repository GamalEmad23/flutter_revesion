import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sec_flutter/api/cubit/meal_cubit.dart';
import 'package:sec_flutter/api/meal_details.dart';

class ApiScreen extends StatelessWidget {
  const ApiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Meals",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),

      body: BlocBuilder<MealCubit, MealState>(
        builder: (context, state) {
          if (state is MealLoading) {
            return Center(child: CircularProgressIndicator());
          }

          if (state is MealSuccess) {
            return ListView.separated(
              itemBuilder: (context, i) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            MealDetails(meals: state.mealsData, i: i),
                      ),
                    );
                  },
                  child: Container(
                    height: 180,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Row(
                      mainAxisAlignment: .spaceAround,
                      children: [
                        CircleAvatar(
                          minRadius: 65,

                          backgroundImage: NetworkImage(
                            state.mealsData[i].strMealThumb ?? " ",
                          ),
                        ),

                        Column(
                          mainAxisAlignment: .spaceEvenly,
                          children: [
                            SizedBox(
                              width: 100,
                              child: Text(
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                state.mealsData[i].strMeal ?? " ",
                                style: TextStyle(),
                              ),
                            ),
                            Text(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              state.mealsData[i].strCategory ?? "",
                            ),
                            Text(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              state.mealsData[i].strArea ?? "",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              separatorBuilder: (context, i) => Divider(),
              itemCount: state.mealsData.length,
            );
          }

          if (state is MealFailuer) {
            return Text(state.message);
          }

          return SizedBox();
        },
      ),
    );
  }
}
