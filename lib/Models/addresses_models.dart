class Address {
  String title, address, street, image;
  Address({
    this.title,
    this.address,
    this.street,
    this.image,
  });
}

List<Address> addresses = [
  Address(
    title: "Home Address",
    address: "OxFord St.No:2",
    street: "Street x12",
    image: "assets/map1.png",
  ),
  Address(
    title: "Office Address",
    address: "Eye St. No:2456",
    street: "Street x12",
    image: "assets/map2.png",
  ),
  Address(
    title: "Other Address",
    address: "OxFord St.No:2",
    street: "Street x12",
    image: "assets/map1.png",
  ),
];
