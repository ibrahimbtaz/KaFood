import 'package:flutter/material.dart';
import 'package:mycatering/screen/cart/components/CartDB.dart';
import 'package:mycatering/screen/cart/components/CartModel.dart';
import 'package:mycatering/screen/home/Home.dart';
import 'package:mycatering/screen/inputlogin/auth/auth.dart';
import 'package:mycatering/utils/Constant.dart';

class MainCart extends StatefulWidget {
  const MainCart({super.key});

  @override
  State<MainCart> createState() => _MainCartState();
}

class _MainCartState extends State<MainCart> {
  List<CartModel> dataListFavorite = [];
  bool isLoading = false;
  Future read() async {
    setState(() {
      isLoading = true;
    });
    dataListFavorite = await CartDB.instance.readAll();
    print("Length List ${dataListFavorite.length}");
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    read();
  }

  showDeleteDialog(BuildContext context, String? name) {
    // set up the button
    Widget cancelButton = TextButton(
        child: const Text("Tidak"),
        onPressed: () {
          Navigator.of(context, rootNavigator: true).pop('dialog');
        });
    Widget okButton = TextButton(
        child: const Text("Hapus"),
        onPressed: () async {
          setState(() {
            isLoading = true;
          });
          await CartDB.instance.delete(name);
          read();
          setState(() {
            isLoading = false;
          });
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const MyHomePage()));
          Navigator.pop(context);
          Navigator.of(context, rootNavigator: true).pop('dialog');
        });

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content: const Text("Apakah anda yakin ingin menghapus?"),
      actions: [cancelButton, okButton],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final Auth auth = Auth();
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Your Cart",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 26, fontWeight: FontWeight.bold, color: secondary),
          )),
      body: Center(
        child: Container(
          child: isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : dataListFavorite.isEmpty
                  ? const Center(
                      child: Text("Kamu tidak memiliki tim Favorit"),
                    )
                  : ListView.builder(
                      itemCount: dataListFavorite.length,
                      itemBuilder: (c, index) {
                        final item = dataListFavorite[index];
                        return Padding(
                          padding: const EdgeInsets.only(
                              top: 6, left: 10, right: 10),
                          child: Card(
                            child: Container(
                              margin: const EdgeInsets.all(15),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                      margin: const EdgeInsets.only(right: 20),
                                      child: FutureBuilder(
                                        future: auth.downloadURL(
                                          item.image,
                                        ),
                                        builder: (BuildContext context,
                                            AsyncSnapshot<String> snapshot) {
                                          if (snapshot.connectionState ==
                                                  ConnectionState.done &&
                                              snapshot.hasData) {
                                            return SizedBox(
                                              height: 40,
                                              width: 40,
                                              child: Image.network(
                                                snapshot.data!,
                                                fit: BoxFit.cover,
                                              ),
                                            );
                                          }
                                          if (snapshot.connectionState ==
                                                  ConnectionState.waiting ||
                                              !snapshot.hasData) {
                                            return const CircularProgressIndicator();
                                          }
                                          return Container();
                                        },
                                      )),
                                  Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          item.name,
                                        ),
                                        Text(
                                          item.price,
                                        ),
                                      ]),
                                  const Spacer(),
                                  IconButton(
                                    onPressed: () {
                                      showDeleteDialog(context, item.name);
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
        ),
      ),
    );
  }
}
