import 'package:flutter/material.dart';
import 'package:secondprojec/utility/catalog.dart';
import 'package:url_launcher/url_launcher.dart';

class CatalogItem extends StatelessWidget {
  // const ItemWidget({super.key});
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});

  // const CatalogItem({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
              child: Row(children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(
                catalog.image,
                width: 120,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    catalog.name,
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          catalog.description,
                          maxLines: 4,
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("₹", style: TextStyle(fontSize: 22)),
                              SizedBox(
                                width: 1,
                              ),
                              Text(
                                '${catalog.price}',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () async {
                              final Uri _url = Uri.parse(catalog.link.trim());
                              if (!await launchUrl(_url)) {
                                throw Exception('Could not launch $_url');
                              }
                              print(catalog.link);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 248, 223, 3),
                            ),
                            child: Text(
                              "Buy",
                              style: TextStyle(
                                  color: const Color.fromARGB(255, 0, 0, 0)),
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ]))),
      color: Colors.white,
    );
  }
}
