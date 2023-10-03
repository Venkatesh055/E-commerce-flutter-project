import 'dart:convert';

List<Product> ProductFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String ProductToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  int id;
  int Quantity;
  final String brand;
  final String name;
  final double price;
  final String link;

  Product({
    required this.id,
    required this.brand,
    required this.name,
    required this.Quantity,
    required this.price,
    required this.link,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        brand: json["Brand"],
        name: json["ModelName"],
        price: json["Price"],
        Quantity: json["Quantity"],
        link: json["link"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "Brand": brand,
        "name": name,
        "Price": price,
        "Quantity": Quantity,
        "link": link,
      };
}
