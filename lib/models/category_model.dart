class Category {
  int id;
  String name;
  String? desc;
  String createdAt;
  String? modifiedAt;

  Category(this.id, this.name, this.createdAt, [this.desc, this.modifiedAt]);

  @override
  String toString() {
    return name;
  }
}