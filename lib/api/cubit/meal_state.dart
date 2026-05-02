part of 'meal_cubit.dart';

@immutable
sealed class MealState {}

final class MealInitial extends MealState {}

final class MealLoading extends MealState {}

final class MealSuccess extends MealState {
  final List<Meals> mealsData;

  MealSuccess({required this.mealsData});
}

final class MealFailuer extends MealState {
  final String message;
  MealFailuer({required this.message});
}
