// TODO Implement this library.
class CartItemModel {
  String image;
  String titel;
  String discripion;
  double price;
  int quantity;

  CartItemModel({
    required this.image,
    required this.titel,
    required this.discripion,
    required this.price,
    this.quantity = 1,
  });
}
