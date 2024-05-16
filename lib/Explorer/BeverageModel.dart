List<BeverageModel> beverages = [
  BeverageModel(name: 'Diet Coke', capacity: '355ml,\n Price', price: 1.99),
  BeverageModel(name: 'Sprite Can', capacity: '325ml,\n Price', price: 1.50),
  BeverageModel(name: 'Apple & Grape', capacity: '2L, Price', price: 5.99),
  BeverageModel(name: 'Orenge Juice', capacity: '2L, Price', price: 8.99),
];

class BeverageModel {
  final String name;
  final String capacity;
  final double price;

  BeverageModel({
    required this.name,
    required this.capacity,
    required this.price,
  });
}
