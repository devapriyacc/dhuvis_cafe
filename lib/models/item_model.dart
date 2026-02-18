class DishItem {
  String name;
  List<String> ingredients;
  List<double> baseRatio;

  DishItem({
    required this.name,
    required this.ingredients,
    required this.baseRatio,
  });

  Map<String, dynamic> toJson() => {
    "name": name,
    "ingredients": ingredients,
    "baseRatio": baseRatio,
  };

  factory DishItem.fromJson(Map<String, dynamic> json) {
    return DishItem(
      name: json["name"],
      ingredients: List<String>.from(json["ingredients"]),
      baseRatio: List<double>.from(json["baseRatio"]),
    );
  }
}
