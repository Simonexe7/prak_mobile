import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String itemTitle;
  const DetailPage({super.key, required this.itemTitle});

  String getImage (String title){
    String titleClean = title.replaceAll(' ', '').replaceAll('-', '').toLowerCase();

    if (titleClean.contains('laptop')) return 'laptop.jpg';
    if (titleClean.contains('hp')) return 'iphone.jpg';
    if (titleClean.contains('tv')) return 'tv.jpg';
    if (titleClean.contains('watch')) return 'watch.png';
    if (titleClean.contains('tablet')) return 'matepad.jpg';
  
    return 'default.jpg';

  }

  @override
  Widget build(BuildContext context) {
      final String Imagename = getImage(itemTitle);
      final String imagePath ='images/$Imagename';

    return Scaffold(
      appBar:AppBar(
        title: Text("ItemTitle"),
        backgroundColor: Colors.indigo,
        foregroundColor: const Color.fromARGB(255, 34, 0, 0),
      ),
      body: Center(
        child: Column(    
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset(
            imagePath,
            width: 200,
            height: 200,
          ),
            Text(
              "Ini Adalah Halaman Detail Untuk : ",
              style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 16,),
              Text(
                itemTitle,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
          ],
        ),
      ),
      );
  }
}