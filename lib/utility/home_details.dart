import 'package:flutter/material.dart';
import 'package:secondprojec/utility/catalog.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeDetailRoute extends StatelessWidget {
  // const HomeDetailPage({super.key});

  final Item catalog;

  const HomeDetailRoute({super.key, required this.catalog});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Hero(
                      tag: Key(catalog.id.toString()),
                      child: Image.network(
                        catalog.image,
                        height: 350,
                        width: 350,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "₹",
                              style: TextStyle(fontSize: 35),
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Text(
                              '${catalog.price}',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 15),
                            Text(
                              "(Inclusive of all taxes)",
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Text(
                          catalog.name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                catalog.description,
                                style: TextStyle(fontSize: 16),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            MaterialButton(
              onPressed: () async {
                final Uri _url = Uri.parse(catalog.link.trim());
                if (!await launchUrl(_url)) {
                  throw Exception('Could not launch $_url');
                }
              },
              minWidth: double.maxFinite,
              height: 60,
              color: Colors.amber[400],
              child: Text("Buy now",
                  style: TextStyle(
                    fontSize: 20,
                  )),
              // style: ElevatedButton.styleFrom(
              //   backgroundColor: Colors.amber[400],
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(0),
              //   ),
              // ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
//  style: ElevatedButton.styleFrom(
//                         backgroundColor:
//                             Colors.purple, // Button ka background color
//                         minimumSize: Size(130, 40),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),