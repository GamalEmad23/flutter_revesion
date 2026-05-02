class ApiModel {
  List<Meals>? meals;

  ApiModel({this.meals});

  ApiModel.fromJson(Map<String, dynamic> json) {
    if (json['meals'] != null) {
      meals = [];
      json['meals'].forEach((v) {
        meals!.add(Meals.fromJson(v));
      });
    }
  }
}

class Meals {
  String? idMeal;
  String? strMeal;
  String? strMealAlternate;
  String? strCategory;
  String? strArea;
  String? strCountry;
  String? strInstructions;
  String? strMealThumb;
  String? strTags;
  String? strYoutube;

  List<String> ingredients = [];
  List<String> measures = [];

  String? strSource;
  String? strImageSource;
  String? strCreativeCommonsConfirmed;
  String? dateModified;

  Meals({
    this.idMeal,
    this.strMeal,
    this.strMealAlternate,
    this.strCategory,
    this.strArea,
    this.strCountry,
    this.strInstructions,
    this.strMealThumb,
    this.strTags,
    this.strYoutube,
    this.strSource,
    this.strImageSource,
    this.strCreativeCommonsConfirmed,
    this.dateModified,
  });

  Meals.fromJson(Map<String, dynamic> json) {
    idMeal = json['idMeal']?.toString();
    strMeal = json['strMeal']?.toString();
    strMealAlternate = json['strMealAlternate']?.toString();
    strCategory = json['strCategory']?.toString();
    strArea = json['strArea']?.toString();
    strCountry = json['strCountry']?.toString();
    strInstructions = json['strInstructions']?.toString();
    strMealThumb = json['strMealThumb']?.toString();
    strTags = json['strTags']?.toString();
    strYoutube = json['strYoutube']?.toString();

    for (int i = 1; i <= 20; i++) {
      final ingredient = json['strIngredient$i'];
      final measure = json['strMeasure$i'];

      if (ingredient != null && ingredient.toString().trim().isNotEmpty) {
        ingredients.add(ingredient.toString());
        measures.add(measure?.toString() ?? '');
      }
    }

    strSource = json['strSource']?.toString();
    strImageSource = json['strImageSource']?.toString();
    strCreativeCommonsConfirmed =
        json['strCreativeCommonsConfirmed']?.toString();
    dateModified = json['dateModified']?.toString();
  }
}