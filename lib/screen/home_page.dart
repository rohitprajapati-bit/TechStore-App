import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:secondprojec/utility/home_details.dart';
import 'package:secondprojec/utility/catalog.dart';
import 'package:secondprojec/utility/drawer.dart';
import 'package:secondprojec/utility/items.dart';
import 'package:secondprojec/utility/route.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson = await rootBundle.loadString("assets/file/catalog.json");
    final decodeData = jsonDecode(catalogJson);
    var productData = decodeData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dumylist = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRoutes.CartRoute),
        backgroundColor: Colors.amber[400],
        child: Icon(CupertinoIcons.cart),
      ),
      appBar: AppBar(
        title: Text(
          "TechStore App",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        // backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];

          return InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HomeDetailRoute(catalog: catalog))),
              child: CatalogItem(catalog: catalog));
          // return ItemWidget(item: CatalogModel.items[index]);
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
