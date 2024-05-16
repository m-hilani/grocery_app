List<CartModel> cart = [
  CartModel(name: 'Bell Pepper Red', capacity: '1 kg,  Price', price: 4.99),
  CartModel(name: 'Egg Chicken Red', capacity: '4pcs, Price', price: 1.99),
  CartModel(name: 'Organic Bananas', capacity: '12kg, Price', price: 3.00),
  CartModel(name: 'Ginger', capacity: '250gm, Price', price: 2.99),
];

class CartModel {
  final String name;
  final String capacity;
  final double price;

  CartModel({
    required this.name,
    required this.capacity,
    required this.price,
  });
}
