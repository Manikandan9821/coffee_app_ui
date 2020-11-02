import 'package:coffee_app/models/product_items.dart';

final _drink =
    Products(icon: 'assets/icons/drink.png', title: 'Drink', itemCount: '12',);

final _coffee =
    Products(icon: 'assets/icons/coffee.png', title: 'Coffee', itemCount: '15',);

final _desert =
    Products(icon: 'assets/icons/desert.png', title: 'Desert', itemCount: '10',);

final List<Products> productData = [
  _drink,
  _coffee,
  _desert,
  _desert,
];

final _person1 = Persons('assets/images/persons/iron_man.jpg');
final _person2 = Persons('assets/images/persons/joker.jpg');
final _person3 = Persons('assets/images/persons/man.jpg');

final _persn1 = 'assets/images/persons/iron_man.jpg';
final _persn2 = 'assets/images/persons/joker.jpg';
final _persn3 = 'assets/images/persons/man.jpg';

final  ratingPersons = [
_persn1,
_persn2,
_persn3,
];

final _coldCoffee = Items(
  prodImage: 'assets/images/coffee/cold_coffee.png',
  prodName: 'Cold Coffee',
  prodRating: '4.0',
  ratingPersons: [
    _person1,
    _person2,
    _person3,
  ],
  details: 'The warmth, richness and soaring aroma of freshly brewed coffee. '
      'There nothing like it. Steaming mugs on weekday mornings to slap us awake and leisurely cups on the weekends to celebrate the day. '
      'This versatile beverage offers limitless variations and we have listed a few of them that you can make at home.',
  price: '250.0',
);
final _dalgonaCoffee = Items(
  prodImage: 'assets/images/coffee/dalgona_coffee.jpg',
  prodName: 'Dalgona Coffee',
  prodRating: '4.2',
  ratingPersons: [
    _person1,
    _person2,
    _person3,
  ],
  details: ' A traditional iced coffee contains higher levels of acidity than cold brew coffee because of this.'
      'The melting ice will also yield a thinner taste.',
  price: '150.0',
);

final List<Items> itemData = [
  _coldCoffee,
  _dalgonaCoffee,
];
