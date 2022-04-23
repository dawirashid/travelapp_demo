class Hotel {
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/hotel1.jpeg',
    name: 'Hotel 1',
    address : ' Jalan Tik tok',
    price: 175,
  ),
  Hotel(
    imageUrl: 'assets/hotel2.jpeg',
    name: 'Hotel 2',
    address : ' Jalan  Puchong',
    price: 100,
  ),
  Hotel(
    imageUrl: 'assets/hotel3.jpeg',
    name: 'Hotel 3',
    address : ' Jalan pPrima',
    price: 113,
  ),
];
