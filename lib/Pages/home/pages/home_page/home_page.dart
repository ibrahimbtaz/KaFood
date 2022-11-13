import 'package:flutter/material.dart';
import 'package:mycatering/Pages/home/data/data.dart';
import 'package:mycatering/Pages/home/models/food_model.dart';
import 'package:mycatering/Pages/home/pages/details_page/details_page.dart';
import 'package:mycatering/Pages/home/pages/home_page/components/food_item.dart';
import 'package:mycatering/Pages/home/pages/home_page/components/home_deliver_ads.dart';
import 'package:mycatering/models/asset.dart';

Size? size;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static final GlobalKey<ScaffoldState> _scaffoldkey =
      GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: Row(
          children: const [
            Image(
              height: 48,
              image: AssetImage("assets/images/logo.png"),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "MyCatering",
              style: TextStyle(color: maincolor, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          Container(
            child: Row(children: [
              IconButton(
                onPressed: () {
                  showSearch(
                      context: context, delegate: CustomSearchDelegate());
                },
                icon: const Icon(Icons.search, color: maincolor),
              ),
            ]),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size!.width * .070),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text("Promo Today",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 20)),
              const SizedBox(
                height: 20,
              ),
              const HomeDeliverAds(),
              const SizedBox(height: 20),
              Text("Favorites Menu",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontSize: 20)),
              const SizedBox(height: 20),
              GridView.builder(
                itemCount: foodList.length,
                shrinkWrap: true,
                primary: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 25,
                ),
                itemBuilder: (context, index) {
                  FoodModel foodModel = foodList[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) {
                            return FadeTransition(
                              opacity: animation,
                              child: Detail_Page(
                                foodModel: foodModel,
                              ),
                            );
                          },
                        ),
                      );
                    },
                    child: FoodItem(
                      foodModel: foodModel,
                      tag: foodModel.image,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
// Demo list to show querying
  List<String> searchTerms = [
    "Tumpeng",
    "Dessert Red Velvet",
    "Nasi Padang",
    "Pear",
    "Snack Box",
    "Chocolate Cake",
    "Salad Buah"
  ];

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
