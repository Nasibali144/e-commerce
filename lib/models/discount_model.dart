class Discount {
  int id;
  String name;
  String? desc;
  double discountPercent;
  String createdAt;
  String? modifiedAt;

  Discount(
    this.id,
    this.name,
    this.discountPercent,
    this.createdAt, [
    this.desc,
  ]);
}
