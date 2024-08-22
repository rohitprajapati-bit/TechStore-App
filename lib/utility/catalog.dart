class CatalogModel {
  static List<Item> items = [
    Item(
        id: 1,
        name: "iPhone 15 Pro Max",
        description: "Apple iPhone 15 Pro Max (256 GB) - Black Titanium.",
        price: 146999,
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP6mkFtCHcnvG_55fRC912F9NAn-5YnQXztw&s",
        link: " https://amzn.in/d/2FaLaLJ")
  ];
}

class Item {
  final int id;
  final String name;
  final String description;
  final num price;
  final String image;
  final String link;

  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.link,
  });

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      description: map["description"],
      price: map["price"],
      image: map["image"],
      link: map["link"],
    );
  }
  toMap() => {
        "id": id,
        "name": name,
        "desc": description,
        "price": price,
        "image": image,
        "link": link
      };
}
