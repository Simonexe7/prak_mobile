import 'package:flutter/material.dart';
import 'package:prak_mobile/Product.dart';
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
    final List<Product> products = [
      Product(
        name: "HP Victus", 
        category: "Laptop",
        imagePath: "assets/images/laptop.jpg", 
        description: "Prosesor AMD Ryzen 5 8645HS (6 Cores – 12 Threads) 4.3GHz Up to 5.0GHz | Layar IPS 15.6″ Full HD 144Hz | Nvidia RTX 4050 6GB | SSD 512GB | RAM 8GB DDR5 | Backlight Keyboard | Dual Fan | WiFi | Bluetooth | Webcam | OS Windows 11",
        price: 14600000,
      ),
      Product(
        name: "iPhone 16 Pro", 
        category: "Handphone",
        imagePath: "assets/images/iphone.jpg", 
        description: "DESAIN TITANIUM YANG MEMUKAU — iPhone 16 Pro memiliki desain titanium yang kuat dan ringan dengan layar Super Retina XDR 6,3 inci yang lebih besar.(1) Desain ini sangat kokoh dengan material Ceramic Shield generasi terbaru yang 2x lebih tangguh dibandingkan kaca ponsel pintar mana pun.", 
        price: 17499000,
      ),
      Product(
        name: "Huawei Matepad Papermatte 11.5S", 
        category: "Tablet",
        imagePath: "assets/images/matepad.jpg", 
        description: "HUAWEI MatePad 11.5'S hadir dalam pilihan warna menakjubkan, dan dilapisi dengan lapisan matte, menjadikannya enak digenggam dan dilihat. Bodi metalik yang terintegrasi terlihat minimalis dan ramping, serta memberikan genggaman yang nyaman dengan lekukan permukaan samping yang halus.", 
        price: 6999000,
      ),
      Product(
        name: "Apple Watch Ultra 2", 
        category: "Watch",
        imagePath: "assets/images/watch.png", 
        description: "Ketahanan Terhadap Air dan Debu: Apple Watch SE dan Apple Watch Series 10 memiliki level tahan air 50 meter menurut standar ISO 22810:2010 dan bisa digunakan untuk aktivitas air dangkal, seperti berenang di kolam renang atau di laut. Apple Watch Series 10 juga bisa digunakan untuk snorkeling hingga kedalaman 6 meter. Jam ini tidak boleh digunakan untuk scuba diving, ski air, atau aktivitas lainnya yang melibatkan air berkecepatan tinggi atau perendaman melebihi kedalaman dangkal.", 
        price: 12499000,
      ),
      Product(
        name: "Samsung 55KS9000", 
        category: "TV",
        imagePath: "assets/images/tv.jpg", 
        description: "Tentunya sebagai televisi kelas atas, kualitas gambar juga wajib menjadi prioritas utama. Satu fitur baru yang dimiliki KS9000 adalah teknologi Quantum Dot. Menurut Samsung, TV dengan teknologi ini akan dapat menampilkan warna yang lebih kaya. Dengan Quantum Dot, TV TV mampu menampilkan gradasi warna yang lebih luas dibandingkan TV tanpa Quantum Dot.", 
        price: 17499000,
      ),
      Product(
        name: "Fantech Atom PRO97 MK918", 
        category: "Keyboard",
        imagePath: "assets/images/keyboard.png", 
        description: "Keyboard ATOM PRO97 MK918 telah dilengkapi dengan fitur 3 mode konektivitas. Mulai dari koneksi wired menggunakan kabel USB Type-C, wireless 2.4GHz yang stabil, hingga Bluetooth. Dengan fitur ini kamu bisa sambungkan keyboard pada berbagai perangkat yang diinginkan.", 
        price: 685000,
      ),
    ];
  
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
            title: Text(product.category),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => DetailPage(
                  name: product.name,
                  imagePath: product.imagePath,
                  description: product.description,
                  price: product.price,
                )));
            },
          );
        },
      ),
    );
  }
}