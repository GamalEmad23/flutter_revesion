// ignore_for_file: empty_catches

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:sec_flutter/api/api_model.dart';

part 'meal_state.dart';

class MealCubit extends Cubit<MealState> {
  MealCubit() : super(MealInitial());

  Future<void> getApiData() async {
    Dio dio = Dio();
    emit(MealLoading());

    try {
      var res = await dio.get(
        "https://www.themealdb.com/api/json/v1/1/search.php?f=a",
      );
      var data = ApiModel.fromJson(res.data);
      emit(MealSuccess(mealsData: data.meals!));
    } catch (e) {
      emit(MealFailuer(message: e.toString()));
    }
  }
}
