class FoodModel {
  final int id;
  final double price, rate;
  final String name, description, image;
  FoodModel({
    required this.id,
    required this.price,
    required this.name,
    required this.description,
    required this.image,
    required this.rate,
  });
}

List<FoodModel> foodList = [
  FoodModel(
    id: 1,
    price: 17.5,
    name: "Tumpeng",
    image: "tumpeng.png",
    description:
        "Tumpeng is an Indonesian cone-shaped rice dish with side dishes of vegetables and meat originating from Javanese cuisine of Indonesia. Traditionally featured in the slamatan ceremony, the rice is made by using a cone-shaped woven bamboo container. The rice itself may be plain steamed rice, uduk rice, or yellow rice.",
    rate: 4.2,
  ),
  FoodModel(
    id: 2,
    price: 1.5,
    name: "Juice",
    image: "juice.jpg",
    description:
        "Juice is a drink made from the extraction or pressing of the natural liquid contained in fruit and vegetables. It can also refer to liquids that are flavored with concentrate or other biological food sources, such as meat or seafood, such as clam juice.",
    rate: 4.0,
  ),
  FoodModel(
    id: 3,
    price: 2.5,
    name: "Dessert Red Velvet",
    image: "cake-1.png",
    description:
        "Soft Red Velvet cake layered with thick sweet cream and grated cheese. The sprinkling part uses the remaining grated or coarsely chopped cake so that no material is wasted. Come on, try the recipe for this weekend.",
    rate: 4.7,
  ),
  FoodModel(
    id: 4,
    price: 2.5,
    name: "Snack Box",
    image: "snack.png",
    description:
        "Snack Box is a complement to consumption that is usually present at an event, for meetings, gatherings, social gatherings, house celebrations, building inauguration up to recitation.",
    rate: 4.5,
  ),
  FoodModel(
    id: 5,
    price: 5.5,
    name: "Chocolate Cake",
    image: "cake-2.png",
    description:
        "Chocolate cake is a cake flavored with melted chocolate, cocoa powder, or both. This cake is perfect for Birthday Events",
    rate: 5.0,
  ),
  FoodModel(
    id: 6,
    price: 3.5,
    name: "Fruit Salad",
    image: "fruit-salad.png",
    description:
        "Fruit salad is a dish consisting of various kinds of fruit, sometimes served in a liquid, either their juices or a syrup. In different forms, fruit salad can be served as an appetizer, a side salad. When served as an appetizer, a fruit salad is sometimes known as a fruit cocktail, or fruit cup.",
    rate: 4.8,
  ),
];
