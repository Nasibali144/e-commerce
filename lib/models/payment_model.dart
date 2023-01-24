class Payment {
  int id;
  int orderId;
  String provider;
  String status;
  String createdAt;
  String? modifiedAt;

  Payment(this.id, this.orderId, this.provider, this.status, this.createdAt,
      [this.modifiedAt]);
}