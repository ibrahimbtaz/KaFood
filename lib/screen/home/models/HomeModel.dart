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
    price: 4.4,
    name: "Kue Lapis",
    image: "dessertkuelapis-9.png",
    description:
    "Dessert is a dish served at the end of a meal. This dish consists of drinks and sweets. In some parts of the world, such as in Central and West Africa, and most of China, there is no tradition of dessert to end their meal.",
    rate: 4.7,
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
    price: 4.2,
    name: "Tenderloin Eggstra",
    image: "ricebox-tenderloineggstra-7.png",
    description:
    "a food dish consisting of rice and its side dishes and packed in a box/box. In 2020, rice boxes have become a very popular culinary business. This phenomenon has also made many culinary entrepreneurs sell rice in boxes.",
    rate: 4.5,
  ),
  FoodModel(
    id: 5,
    price: 6.5,
    name: "Tumpeng Mini 2",
    image: "tumpengmini-2-removebg-preview.png",
    description:
    "Tumpeng is an Indonesian cone-shaped rice dish with side dishes of vegetables and meat originating from Javanese cuisine of Indonesia. Traditionally featured in the slamatan ceremony, the rice is made by using a cone-shaped woven bamboo container. The rice itself may be plain steamed rice, uduk rice, or yellow rice.",
    rate: 4.0,
  ),
  FoodModel(
    id: 6,
    price: 3.4,
    name: "Olivier Salad",
    image: "Olivier Salad-7.png",
    description:
    "Salad is usually served in star hotels as the main meal and is much loved by those who are on a diet or have a healthy lifestyle because it is proven to contain lots of vitamins and protein which are sourced directly from vegetables and fruits.",
    rate: 4.7,
  ),
  FoodModel(
    id: 7,
    price: 1.5,
    name: "Banana Juice",
    image: "juice-pisang-4.png",
    description:
    "Juice is one of the drinks of choice to quench thirst and refresh the body. Moreover, the nutritional content of the fruit used makes it have many health benefits. As is known, fruit is a source of fiber. This fiber is very important to maximize nutrient absorption.",
    rate: 4.0,
  ),
  FoodModel(
    id: 8,
    price: 4.4,
    name: "Kue Lapis",
    image: "dessertkuelapis-9.png",
    description:
    "Dessert is a dish served at the end of a meal. This dish consists of drinks and sweets. In some parts of the world, such as in Central and West Africa, and most of China, there is no tradition of dessert to end their meal.",
    rate: 4.7,
  ),
];


List<FoodModel> foodFavorite = [
  FoodModel(
    id: 1,
    price: 3.6,
    name: "Klepon",
    image: "dessertklepon-10.png",
    description:
    "Dessert is a dish served at the end of a meal. This dish consists of drinks and sweets. In some parts of the world, such as in Central and West Africa, and most of China, there is no tradition of dessert to end their meal.",
    rate: 4.2,
  ),
  FoodModel(
    id: 2,
    price: 1.4,
    name: "Mango Juice",
    image: "juice-mango-8.png",
    description:
    "Juice is one of the drinks of choice to quench thirst and refresh the body. Moreover, the nutritional content of the fruit used makes it have many health benefits. As is known, fruit is a source of fiber. This fiber is very important to maximize nutrient absorption.",
    rate: 4.2,
  ),
  FoodModel(
    id: 3,
    price: 4.5,
    name: "Martabak Manis",
    image: "dessertmartabakmanis-6.png",
    description:
    "Dessert is a dish served at the end of a meal. This dish consists of drinks and sweets. In some parts of the world, such as in Central and West Africa, and most of China, there is no tradition of dessert to end their meal.",
    rate: 4.0,
  ),
  FoodModel(
    id: 4,
    price: 3.6,
    name: "Beef Sambal Matah",
    image: "ricebox-BeefSambalgeprek-1.png",
    description:
    "a food dish consisting of rice and its side dishes and packed in a box/box. In 2020, rice boxes have become a very popular culinary business. This phenomenon has also made many culinary entrepreneurs sell rice in boxes.",
    rate: 4.2,
  ),
  FoodModel(
    id: 5,
    price: 4.5,
    name: "Beef Slice",
    image: "ricebox-beefslice-2.png",
    description:
    "a food dish consisting of rice and its side dishes and packed in a box/box. In 2020, rice boxes have become a very popular culinary business. This phenomenon has also made many culinary entrepreneurs sell rice in boxes.",
    rate: 4.0,
  ),
  FoodModel(
    id: 6,
    price: 3.6,
    name: "Bound Salad",
    image: "Bound Salad-1.png",
    description:
    "Salad is usually served in star hotels as the main meal and is much loved by those who are on a diet or have a healthy lifestyle because it is proven to contain lots of vitamins and protein which are sourced directly from vegetables and fruits.",
    rate: 4.2,
  ),
];

List<FoodModel> dessertList = [
  FoodModel(
    id: 1,
    price: 3.6,
    name: "Klepon",
    image: "dessertklepon-10.png",
    description:
        "Dessert is a dish served at the end of a meal. This dish consists of drinks and sweets. In some parts of the world, such as in Central and West Africa, and most of China, there is no tradition of dessert to end their meal.",
    rate: 4.2,
  ),
  FoodModel(
    id: 2,
    price: 4.5,
    name: "Martabak Manis",
    image: "dessertmartabakmanis-6.png",
    description:
        "Dessert is a dish served at the end of a meal. This dish consists of drinks and sweets. In some parts of the world, such as in Central and West Africa, and most of China, there is no tradition of dessert to end their meal.",
    rate: 4.0,
  ),
  FoodModel(
    id: 3,
    price: 4.4,
    name: "Kue Lapis",
    image: "dessertkuelapis-9.png",
    description:
        "Dessert is a dish served at the end of a meal. This dish consists of drinks and sweets. In some parts of the world, such as in Central and West Africa, and most of China, there is no tradition of dessert to end their meal.",
    rate: 4.7,
  ),
  FoodModel(
    id: 4,
    price: 4.3,
    name: "Japanese Cheese",
    image: "dessertjapanesecheesecake-3.png",
    description:
        "Dessert is a dish served at the end of a meal. This dish consists of drinks and sweets. In some parts of the world, such as in Central and West Africa, and most of China, there is no tradition of dessert to end their meal.",
    rate: 4.5,
  ),
  FoodModel(
    id: 5,
    price: 4.7,
    name: "Kue Pukis",
    image: "dessertkuepukis-8.png",
    description:
        "Dessert is a dish served at the end of a meal. This dish consists of drinks and sweets. In some parts of the world, such as in Central and West Africa, and most of China, there is no tradition of dessert to end their meal.",
    rate: 5.0,
  ),
  FoodModel(
    id: 6,
    price: 5.2,
    name: "Red Velvet",
    image: "dessertredvelvetstuffednutella-4.png",
    description:
        "Dessert is a dish served at the end of a meal. This dish consists of drinks and sweets. In some parts of the world, such as in Central and West Africa, and most of China, there is no tradition of dessert to end their meal.",
    rate: 4.8,
  ),
  FoodModel(
    id: 7,
    price: 5.5,
    name: "Nutella Brownis",
    image: "dessertnutellafudgybrownis-1.png",
    description:
        "Dessert is a dish served at the end of a meal. This dish consists of drinks and sweets. In some parts of the world, such as in Central and West Africa, and most of China, there is no tradition of dessert to end their meal.",
    rate: 4.8,
  ),
  FoodModel(
    id: 8,
    price: 4.9,
    name: "Nutella Lamington",
    image: "dessertnutellalamington-5.png",
    description:
        "Dessert is a dish served at the end of a meal. This dish consists of drinks and sweets. In some parts of the world, such as in Central and West Africa, and most of China, there is no tradition of dessert to end their meal.",
    rate: 4.8,
  ),
];

List<FoodModel> juiceList = [
  FoodModel(
    id: 1,
    price: 1.4,
    name: "Mango Juice",
    image: "juice-mango-8.png",
    description:
        "Juice is one of the drinks of choice to quench thirst and refresh the body. Moreover, the nutritional content of the fruit used makes it have many health benefits. As is known, fruit is a source of fiber. This fiber is very important to maximize nutrient absorption.",
    rate: 4.2,
  ),
  FoodModel(
    id: 2,
    price: 1.5,
    name: "Banana Juice",
    image: "juice-pisang-4.png",
    description:
        "Juice is one of the drinks of choice to quench thirst and refresh the body. Moreover, the nutritional content of the fruit used makes it have many health benefits. As is known, fruit is a source of fiber. This fiber is very important to maximize nutrient absorption.",
    rate: 4.0,
  ),
  FoodModel(
    id: 3,
    price: 1.4,
    name: "Guava Juice",
    image: "juice-guava-6.png",
    description:
        "Juice is one of the drinks of choice to quench thirst and refresh the body. Moreover, the nutritional content of the fruit used makes it have many health benefits. As is known, fruit is a source of fiber. This fiber is very important to maximize nutrient absorption.",
    rate: 4.7,
  ),
  FoodModel(
    id: 4,
    price: 1.7,
    name: "Orange Juice",
    image: "juice-jeruk-5.png",
    description:
        "Juice is one of the drinks of choice to quench thirst and refresh the body. Moreover, the nutritional content of the fruit used makes it have many health benefits. As is known, fruit is a source of fiber. This fiber is very important to maximize nutrient absorption.",
    rate: 4.5,
  ),
  FoodModel(
    id: 5,
    price: 1.3,
    name: "Dragon Fruit Juice",
    image: "juice-buahnaga-1.png",
    description:
        "Juice is one of the drinks of choice to quench thirst and refresh the body. Moreover, the nutritional content of the fruit used makes it have many health benefits. As is known, fruit is a source of fiber. This fiber is very important to maximize nutrient absorption.",
    rate: 5.0,
  ),
  FoodModel(
    id: 6,
    price: 1.4,
    name: "Kiwi Juice",
    image: "juice-kiwi-2.png",
    description:
        "Juice is one of the drinks of choice to quench thirst and refresh the body. Moreover, the nutritional content of the fruit used makes it have many health benefits. As is known, fruit is a source of fiber. This fiber is very important to maximize nutrient absorption.",
    rate: 4.8,
  ),
  FoodModel(
    id: 7,
    price: 1.4,
    name: "Avocado Juice",
    image: "juice-alpukat-3.png",
    description:
        "Juice is one of the drinks of choice to quench thirst and refresh the body. Moreover, the nutritional content of the fruit used makes it have many health benefits. As is known, fruit is a source of fiber. This fiber is very important to maximize nutrient absorption.",
    rate: 4.5,
  ),
  FoodModel(
    id: 8,
    price: 1.5,
    name: "Apple Juice",
    image: "juice-apple-7.png",
    description:
        "Juice is one of the drinks of choice to quench thirst and refresh the body. Moreover, the nutritional content of the fruit used makes it have many health benefits. As is known, fruit is a source of fiber. This fiber is very important to maximize nutrient absorption.",
    rate: 4.5,
  ),
];

List<FoodModel> riceboxList = [
  FoodModel(
    id: 1,
    price: 3.6,
    name: "Beef Sambal Matah",
    image: "ricebox-BeefSambalgeprek-1.png",
    description:
        "a food dish consisting of rice and its side dishes and packed in a box/box. In 2020, rice boxes have become a very popular culinary business. This phenomenon has also made many culinary entrepreneurs sell rice in boxes.",
    rate: 4.2,
  ),
  FoodModel(
    id: 2,
    price: 4.5,
    name: "Beef Slice",
    image: "ricebox-beefslice-2.png",
    description:
        "a food dish consisting of rice and its side dishes and packed in a box/box. In 2020, rice boxes have become a very popular culinary business. This phenomenon has also made many culinary entrepreneurs sell rice in boxes.",
    rate: 4.0,
  ),
  FoodModel(
    id: 3,
    price: 4.4,
    name: "Chicken Sambal Matah",
    image: "ricebox-chickensambalgeprek-8.png",
    description:
        "a food dish consisting of rice and its side dishes and packed in a box/box. In 2020, rice boxes have become a very popular culinary business. This phenomenon has also made many culinary entrepreneurs sell rice in boxes.",
    rate: 4.7,
  ),
  FoodModel(
    id: 4,
    price: 4.2,
    name: "Tenderloin Eggstra",
    image: "ricebox-tenderloineggstra-7.png",
    description:
        "a food dish consisting of rice and its side dishes and packed in a box/box. In 2020, rice boxes have become a very popular culinary business. This phenomenon has also made many culinary entrepreneurs sell rice in boxes.",
    rate: 4.5,
  ),
  FoodModel(
    id: 5,
    price: 4.3,
    name: "Beef Sosis",
    image: "ricebox-beefsosis-3.png",
    description:
        "a food dish consisting of rice and its side dishes and packed in a box/box. In 2020, rice boxes have become a very popular culinary business. This phenomenon has also made many culinary entrepreneurs sell rice in boxes.",
    rate: 5.0,
  ),
  FoodModel(
    id: 6,
    price: 5.2,
    name: "Chicken Eggstra",
    image: "ricebox-chickeneggstra-4.png",
    description:
        "a food dish consisting of rice and its side dishes and packed in a box/box. In 2020, rice boxes have become a very popular culinary business. This phenomenon has also made many culinary entrepreneurs sell rice in boxes.",
    rate: 4.8,
  ),
  FoodModel(
    id: 7,
    price: 4.7,
    name: "Dory Sambal Matah",
    image: "ricebox-dorysambalgeprek-5.png",
    description:
        "a food dish consisting of rice and its side dishes and packed in a box/box. In 2020, rice boxes have become a very popular culinary business. This phenomenon has also made many culinary entrepreneurs sell rice in boxes.",
    rate: 4.8,
  ),
  FoodModel(
    id: 8,
    price: 4.9,
    name: "Saikoro Rice",
    image: "ricebox-saikororice-6.png",
    description:
        "a food dish consisting of rice and its side dishes and packed in a box/box. In 2020, rice boxes have become a very popular culinary business. This phenomenon has also made many culinary entrepreneurs sell rice in boxes.",
    rate: 4.8,
  ),
];

List<FoodModel> saladList = [
  FoodModel(
    id: 1,
    price: 3.6,
    name: "Bound Salad",
    image: "Bound Salad-1.png",
    description:
        "Salad is usually served in star hotels as the main meal and is much loved by those who are on a diet or have a healthy lifestyle because it is proven to contain lots of vitamins and protein which are sourced directly from vegetables and fruits.",
    rate: 4.2,
  ),
  FoodModel(
    id: 2,
    price: 4.5,
    name: "Caesar Salad",
    image: "Caesar Salad-2.png",
    description:
        "Salad is usually served in star hotels as the main meal and is much loved by those who are on a diet or have a healthy lifestyle because it is proven to contain lots of vitamins and protein which are sourced directly from vegetables and fruits.",
    rate: 4.0,
  ),
  FoodModel(
    id: 3,
    price: 3.4,
    name: "Olivier Salad",
    image: "Olivier Salad-7.png",
    description:
        "Salad is usually served in star hotels as the main meal and is much loved by those who are on a diet or have a healthy lifestyle because it is proven to contain lots of vitamins and protein which are sourced directly from vegetables and fruits.",
    rate: 4.7,
  ),
  FoodModel(
    id: 4,
    price: 3.4,
    name: "Rujak Salad",
    image: "Rujak Salad-8.png",
    description:
        "Salad is usually served in star hotels as the main meal and is much loved by those who are on a diet or have a healthy lifestyle because it is proven to contain lots of vitamins and protein which are sourced directly from vegetables and fruits.",
    rate: 4.5,
  ),
  FoodModel(
    id: 5,
    price: 4.7,
    name: "Fruit Salad",
    image: "Fruit Salad-3.png",
    description:
        "Salad is usually served in star hotels as the main meal and is much loved by those who are on a diet or have a healthy lifestyle because it is proven to contain lots of vitamins and protein which are sourced directly from vegetables and fruits.",
    rate: 5.0,
  ),
  FoodModel(
    id: 6,
    price: 5.1,
    name: "Gado Gado",
    image: "Gado Gado-6.png",
    description:
        "Salad is usually served in star hotels as the main meal and is much loved by those who are on a diet or have a healthy lifestyle because it is proven to contain lots of vitamins and protein which are sourced directly from vegetables and fruits.",
    rate: 4.8,
  ),
  FoodModel(
    id: 7,
    price: 3.9,
    name: "Greek Salad",
    image: "Greek Salad-5.png",
    description:
        "Salad is usually served in star hotels as the main meal and is much loved by those who are on a diet or have a healthy lifestyle because it is proven to contain lots of vitamins and protein which are sourced directly from vegetables and fruits.",
    rate: 4.8,
  ),
  FoodModel(
    id: 8,
    price: 3.9,
    name: "Kue Ape",
    image: "dessertkueape-7.png",
    description:
        "Salad is usually served in star hotels as the main meal and is much loved by those who are on a diet or have a healthy lifestyle because it is proven to contain lots of vitamins and protein which are sourced directly from vegetables and fruits.",
    rate: 4.8,
  ),
];

List<FoodModel> tumpengList = [
  FoodModel(
    id: 1,
    price: 7.6,
    name: "Tumpeng Mini 1",
    image: "tumpengmini-1-removebg-preview.png",
    description:
        "Tumpeng is an Indonesian cone-shaped rice dish with side dishes of vegetables and meat originating from Javanese cuisine of Indonesia. Traditionally featured in the slamatan ceremony, the rice is made by using a cone-shaped woven bamboo container. The rice itself may be plain steamed rice, uduk rice, or yellow rice.",
    rate: 4.2,
  ),
  FoodModel(
    id: 2,
    price: 6.5,
    name: "Tumpeng Mini 2",
    image: "tumpengmini-2-removebg-preview.png",
    description:
        "Tumpeng is an Indonesian cone-shaped rice dish with side dishes of vegetables and meat originating from Javanese cuisine of Indonesia. Traditionally featured in the slamatan ceremony, the rice is made by using a cone-shaped woven bamboo container. The rice itself may be plain steamed rice, uduk rice, or yellow rice.",
    rate: 4.0,
  ),
  FoodModel(
    id: 3,
    price: 7.2,
    name: "Tumpeng Mini 3",
    image: "tumpengmini-3-removebg-preview.png",
    description:
        "Tumpeng is an Indonesian cone-shaped rice dish with side dishes of vegetables and meat originating from Javanese cuisine of Indonesia. Traditionally featured in the slamatan ceremony, the rice is made by using a cone-shaped woven bamboo container. The rice itself may be plain steamed rice, uduk rice, or yellow rice.",
    rate: 4.7,
  ),
  FoodModel(
    id: 4,
    price: 8.0,
    name: "Tumpeng Mini 4",
    image: "tumpengmini-4-removebg-preview.png",
    description:
        "Tumpeng is an Indonesian cone-shaped rice dish with side dishes of vegetables and meat originating from Javanese cuisine of Indonesia. Traditionally featured in the slamatan ceremony, the rice is made by using a cone-shaped woven bamboo container. The rice itself may be plain steamed rice, uduk rice, or yellow rice.",
    rate: 4.5,
  ),
  FoodModel(
    id: 5,
    price: 6.9,
    name: "Tumpeng Mini 5",
    image: "tumpengmini-5-removebg-preview.png",
    description:
        "Tumpeng is an Indonesian cone-shaped rice dish with side dishes of vegetables and meat originating from Javanese cuisine of Indonesia. Traditionally featured in the slamatan ceremony, the rice is made by using a cone-shaped woven bamboo container. The rice itself may be plain steamed rice, uduk rice, or yellow rice.",
    rate: 5.0,
  ),
  FoodModel(
    id: 6,
    price: 8.4,
    name: "Tumpeng Mini 6",
    image: "tumpengmini-6-removebg-preview.png",
    description:
        "Tumpeng is an Indonesian cone-shaped rice dish with side dishes of vegetables and meat originating from Javanese cuisine of Indonesia. Traditionally featured in the slamatan ceremony, the rice is made by using a cone-shaped woven bamboo container. The rice itself may be plain steamed rice, uduk rice, or yellow rice.",
    rate: 4.8,
  ),
  FoodModel(
    id: 7,
    price: 7.8,
    name: "Tumpeng Mini 7",
    image: "tumpengmini-7-removebg-preview.png",
    description:
        "Tumpeng is an Indonesian cone-shaped rice dish with side dishes of vegetables and meat originating from Javanese cuisine of Indonesia. Traditionally featured in the slamatan ceremony, the rice is made by using a cone-shaped woven bamboo container. The rice itself may be plain steamed rice, uduk rice, or yellow rice.",
    rate: 4.8,
  ),
  FoodModel(
    id: 8,
    price: 8.1,
    name: "Tumpeng Mini 8",
    image: "tumpengmini-8-removebg-preview.png",
    description:
        "Tumpeng is an Indonesian cone-shaped rice dish with side dishes of vegetables and meat originating from Javanese cuisine of Indonesia. Traditionally featured in the slamatan ceremony, the rice is made by using a cone-shaped woven bamboo container. The rice itself may be plain steamed rice, uduk rice, or yellow rice.",
    rate: 4.8,
  ),
];
