class User {
  int id;
  String email;
  String password;
  String firstName;
  String lastName;
  String address;
  String telephone;
  String createdAt;
  String? modifiedAt;

  User(
    this.id,
    this.email,
    this.password,
    this.firstName,
    this.lastName,
    this.address,
    this.telephone,
    this.createdAt,
  );
}
