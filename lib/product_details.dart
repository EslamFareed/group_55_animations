import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Hero(
            tag: "image",
            child: Image.network(
                "https://5.imimg.com/data5/ECOM/Default/2023/5/307403622/QT/OF/AY/60773986/4875659616-1543528886-500x500.jpg"),
          ),
          Text("Shoes"),
          Text("1900"),
        ],
      ),
    );
  }
}
