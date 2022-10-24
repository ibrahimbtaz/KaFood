class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'My Catering',
    image: 'lib/asset/logo.png',
    discription: "My Catering is the Best Food Delivery Application in Indonesia"
  ),
  UnbordingContent(
    title: 'Healthy Food',
    image: 'lib/asset/food.png',
    discription: "Many Kinds of Healthy, Delicious and Halal Food"

  ),
  UnbordingContent(
    title: 'Fast Delevery',
    image: 'lib/asset/delivery.png',
    discription: "My Catering is a Delivery Application That Has Super Fast Delivery"

  ),
];
