class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      image: 'assets/images/project - icon.png',
      title: 'More Delicious Food',
      discription: "There Are a Variety of Delicious Food That You Can Taste"),
  UnbordingContent(
      image: 'assets/images/food.png',
      title: 'Delicacy of Healthy Food',
      discription:
          "A Variety of Healthy and Nutritious Food That You Can Taste is Also Halal Certified!"),
  UnbordingContent(
      image: 'assets/images/delivery.png',
      title: 'Super Fast Food Delivery',
      discription:
          "Super-fast Food Delivery That Exceeds the Speed of Light and Can Blow Your Mind"),
];
