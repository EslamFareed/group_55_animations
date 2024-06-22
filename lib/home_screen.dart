import 'package:flutter/material.dart';
import 'package:group_55_animations/product_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetails(),
                    ));
              },
              leading: Hero(
                tag: "image",
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://5.imimg.com/data5/ECOM/Default/2023/5/307403622/QT/OF/AY/60773986/4875659616-1543528886-500x500.jpg"),
                ),
              ),
              title: Text("Shoes"),
              subtitle: Text("1900"),
            ),
          )
        ],
      ),
    );
  }
}
