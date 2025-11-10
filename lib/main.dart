import 'package:flutter/material.dart';
import 'package:prak_mobile/detailPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation Flutter",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> products = [
      'Laptop', 'HP', 'TV', 'SmartWatch', 'Tablet'
    ];
    // final List <String> ImagesProduct = [
    //    'YogaBook.jpg',
    //    'Xiaomi17.jpeg',
    //    'smartTv.jpg',
    //    'itelSmartWatch.jpg',
    //    'GalaxyTab.jpg',
    // ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Daftar Produk"),
        backgroundColor: Colors.indigo,
        foregroundColor: const Color.fromARGB(255, 34, 0, 0),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          // final image   = ImagesProduct[index]; 
          return ListTile(
            title: Text(product),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => DetailPage(itemTitle: product,)));
            },
          );
        },
      ),
    );
  }
}