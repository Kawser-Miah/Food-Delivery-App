import 'package:equatable/equatable.dart';

class MenuItem extends Equatable{
  final int id;
  final int restaurantId;
  final String category;
  final String name;
  final String description;
  final double price;
// final String imgUrl;

  const MenuItem(
      {required this.id, required this.restaurantId, required this.name, required this.category,required this.description, required this.price});

  @override
  List<Object?> get props => [id,restaurantId,name,description,price];
static List<MenuItem> menuItems = [
  const MenuItem(id: 1, restaurantId: 1, name: 'Basmati Kacchi - Half', description: 'A delightful preparation of slow cooked aromatic basmati rice layered with potatoes, marinated mutton pcs, in a delicate blend of whole spices', price: 299, category: 'Basmati Kacchi'),
  const MenuItem(id: 2, restaurantId: 1, name: 'Basmati Kacchi - 1:2', description: 'A delightful preparation of slow cooked aromatic basmati rice layered with potatoes, marinated mutton pcs, in a delicate blend of whole spices', price: 799, category: 'Basmati Kacchi'),
  const MenuItem(id: 3, restaurantId: 1, name: 'Basmati Kacchi - 1:3', description: 'A delightful preparation of slow cooked aromatic basmati rice layered with potatoes, marinated mutton pcs, in a delicate blend of whole spices', price: 1349, category: 'Basmati Kacchi'),
  const MenuItem(id: 4, restaurantId: 1, name: 'Borhani', description: '1 glass of refreshing borhani as a perfect accompaniment to a meal', price: 70, category: 'Beverage'),
  const MenuItem(id: 5, restaurantId: 1, name: 'Zafrani Sharbat', description: 'A delectable sweet drink with the natural essence', price: 90, category: 'Beverage'),
  const MenuItem(id: 6, restaurantId: 1, name: 'Chicken Roast', description: 'Traditional chicken roast cooked with herbs & spices', price: 150, category: 'Curry'),
  const MenuItem(id: 7, restaurantId: 1, name: 'Firni', description: 'Shahi firni with rich & creamy flavour', price: 70, category: 'Dessert'),

  const MenuItem(id: 8, restaurantId: 2, name: 'Basmati Kacchi - 1:1', description: '1:1 - Popular dish prepared of slow-cooked aromatic basmati rice layered with potatoes, marinated mutton pcs, in a delicate blend of whole spices', price: 300, category: 'Kacchi'),
  const MenuItem(id: 9, restaurantId: 2, name: 'Kacchi Khadok - 1:1', description: '1:1 - With 4 pcs meat', price: 490, category: 'Kacchi'),
  const MenuItem(id: 10, restaurantId: 2, name: 'Basmati Kacchi with Borhani & Firni - 1:3', description: 'A delightful preparation of slow-cooked aromatic basmati rice layered with potatoes, marinated mutton pcs, in a delicate blend of whole spices', price: 1240, category: 'Kacchi Platter'),
  const MenuItem(id: 11, restaurantId: 2, name: 'Jali Kebab', description: 'A special dhakaiya kebab', price: 90, category: 'Sides'),
  const MenuItem(id: 12, restaurantId: 2, name: 'Doi', description: '1:1 - Traditional sweet yogurt prepared with milk & sugar', price: 70, category: 'Dessert'),
  const MenuItem(id: 13, restaurantId: 2, name: 'Borhani', description: 'A refreshing yogurt drink with a blend of coriander & mint', price: 70, category: 'Beverage'),

  const MenuItem(id: 14, restaurantId: 3, name: 'BBQ Meat Machine Pizza', description: 'Topped with beef & chicken both with freshly cut vegetables, cheese & in a soft pizza dough', price: 315, category: 'Pizza'),
  const MenuItem(id: 15, restaurantId: 3, name: 'Sausage Carnival Pizza', description: 'Big Big Sausage, Mushroom, Spice.', price: 315, category: 'Pizza'),
  const MenuItem(id: 16, restaurantId: 3, name: 'American Fries', description: 'Large - Slender baton-cut potatoes fried to crispy perfection', price: 179, category: 'Snacks'),
  const MenuItem(id: 17, restaurantId: 3, name: 'Chicken Lollipop', description: '6 pcs - Lollipop decorated with garden salad & a cup of secret sauce', price: 199, category: 'Snacks'),
  const MenuItem(id: 18, restaurantId: 3, name: 'Iced Lemon Tea', description: '1:1 - A refreshing drink to boost up your energy', price: 169, category: 'Mocktail'),
  const MenuItem(id: 19, restaurantId: 3, name: 'Blue Ocean', description: '1:1 - A refreshing drink to brighten up your mood', price: 169, category: 'Mocktail'),

  const MenuItem(id: 20, restaurantId: 4, name: 'Steamed Chicken Momo', description: '5 pcs - Yummy momo center filled with delicious chicken & served with mouth watering sauce', price: 150, category: 'Savoury'),
  const MenuItem(id: 21, restaurantId: 4, name: 'Tasty Treat Popcorn', description: '1:1 - Prepared with corn kernels, palm oil, sugar, corn syrup, salt, coconut oil, sodium bicarbonate, soya lecithin & caramel flavor', price: 100, category: 'Savoury'),
  const MenuItem(id: 22, restaurantId: 4, name: 'Sausage Delight Pizza', description: '140 gm - Topped with special hot tomato sauce chili sauce, capsicum & chicken sausage', price: 85, category: 'Pizza'),
  const MenuItem(id: 23, restaurantId: 4, name: 'Mini Cherry Layer Cake - 100 gm', description: '100 gm - Luscious cake prepared with soft vanilla sponge & vanilla butter mixed with cherry for layer. It\'s fully covered with pink chocolate garnish. It\'s decorated with sweet balls & fondant flower', price: 150, category: 'Cake'),
  const MenuItem(id: 24, restaurantId: 4, name: 'Choco-Vanilla Cake - 500 gm', description: '500 gm - This cake is prepared with soft chocolate & vanilla sponge. Filling with chocolate & vanilla butter cream. It is covered with white & dark chocolate ganash. It is well decorated with dark chocolate bar, leaf, roll & cherry', price: 900, category: 'Cake'),
  const MenuItem(id: 25, restaurantId: 4, name: 'Butter Bun - 100 gm', description: '100 gm - Generously laden with dollops of butter. A morning can be good by dipping the bun into tea to savor every bite', price: 40, category: 'Bread & Bun'),
  const MenuItem(id: 26, restaurantId: 4, name: 'Milk Bread - 700 gm', description: '1 pc - Milky & soft in taste, it’s a specialty bread prepared with cow milk, egg, yeast, bread improver & butter', price: 130, category: 'Bread & Bun'),

  const MenuItem(id: 27, restaurantId: 5, name: 'Chicken Cheese Burger', description: 'Prepared with 1x single chicken patty, 1x sliced cheddar cheese, secret sauce, sliced onion, tomato & lettuce', price: 199, category: 'Chicken Burger'),
  const MenuItem(id: 28, restaurantId: 5, name: 'Smokey BBQ Chicken Cheese Burger', description: 'Prepared with 1x single chicken patty, bbq sauce, 1x sliced cheddar cheese, secret sauce, sliced onion, tomato & lettuce', price: 229, category: 'Chicken Burger'),
  const MenuItem(id: 29, restaurantId: 5, name: 'Beef & Bacon Bite Burger', description: 'Prepared with 1x single beef patty, 2x beef bacon, bbq sauce 1x sliced cheddar cheese, secret sauce, sliced onion, tomato & lettuce', price: 273, category: 'Beef Burger'),
  const MenuItem(id: 30, restaurantId: 5, name: 'Smokey BBQ Beef Burger', description: 'Prepared with 1x single beef patty, bbq sauce, sliced onion, tomato & lettuce', price: 213, category: 'Beef Burger'),
  const MenuItem(id: 31, restaurantId: 5, name: 'Garlic Mushroom', description: 'Prepared with olive oil, garlic, button mushroom & fresh thyme', price: 218, category: 'Appetizers'),
  const MenuItem(id: 32, restaurantId: 5, name: 'Smokey BBQ Sub Sandwich', description: 'Prepared with chicken scotch fillet, caramelized onion & smokey bbq sauce', price: 218, category: 'Subway Sandwich'),
  const MenuItem(id: 33, restaurantId: 5, name: 'Cheesy Chicken Nachos', description: '1:1 - Prepared with chicken thigh, sour cream, shredded chicken, corn chip & chicken broth', price: 196, category: 'Nachos'),
  const MenuItem(id: 34, restaurantId: 5, name: 'Chicken & Mushroom Chowmein', description: 'Prepared with chowmein, oyster sauce, soy sauce, bean sprouts & mushroom', price: 282, category: 'Chowmein'),
  const MenuItem(id: 35, restaurantId: 5, name: 'Coca Cola (600 ml)', description: 'Carbonated Soft Drink', price: 50, category: 'Drinks'),
  const MenuItem(id: 36, restaurantId: 5, name: 'Fanta (600 ml)', description: 'Soft drink with a tingly, fruity taste.', price: 60, category: 'Drinks'),
  ];


}