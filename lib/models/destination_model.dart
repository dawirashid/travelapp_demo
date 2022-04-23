import 'package:travelapp_demo/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/Afamosa .jpeg',
    name: 'Melaka ',
    type: 'History of Mallaca',
    startTimes: ['9AM-6PM'],
    rating: 5,
    price: 10,
  ),
  Activity(
    imageUrl: 'assets/port dickson.jpeg',
    name: 'Negri 9 ',
    type: 'Beach',
    startTimes: ['9AM-6PM'],
    rating: 3,
    price: 10,
  ),
  Activity(
    imageUrl: 'assets/Gua_Tempurung.jpeg',
    name: 'Perak ',
    type: 'Cave Adventure',
    startTimes: ['9AM-6PM'],
    rating: 4,
    price: 10,
  ),
  Activity(
    imageUrl: 'assets/sepang.jpeg',
    name: 'Selangor',
    type: 'Beach',
    startTimes: ['9AM-6PM'],
    rating: 3,
    price: 10,
  ),
];

List<Destination> destination = [
  Destination(
    imageUrl: 'assets/melaka.png',
    city: ' Banda Hilir',
    country: 'Melaka',
    description: 'Visit Melaka',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/negri sembilan.jpeg',
    city: ' Seremban',
    country: 'Negri Sembilan',
    description: 'Visit Negri 9',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/perak.jpeg',
    city: ' Ipoh',
    country: 'Perak',
    description: 'Visit Perak',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/selangor.png',
    city: ' Shah Alam',
    country: 'Selangor',
    description: 'Visit Selangor',
    activities: activities,
  ),
];
