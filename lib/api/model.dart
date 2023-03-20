class Data {
  final int id;
  final String name;
  final String description;
  final String measure;
  final String price;

  Data({
    required this.id,
    required this.name,
    required this.description,
    required this.measure,
    required this.price,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String,
      measure: json['measure'] as String,
      price: json['price'] as String,
    );
  }
}