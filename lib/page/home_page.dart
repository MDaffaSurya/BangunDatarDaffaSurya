import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Home Page", style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF90A4AE)),
      body: ListView
        (children: [
          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "assets/persegi.jpeg",title: "persegi")),
              Expanded(child: CustomMenu(imageAsset: "assets/persegi.jpeg",title: "persegi")),
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "assets/segitiga.jpeg",title: "segitiga")),
              Expanded(child: CustomMenu(imageAsset: "assets/segitiga.jpeg",title: "segitiga")),
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "assets/lingkaran.jpeg",title: "lingkaran")),
              Expanded(child: CustomMenu(imageAsset: "assets/lingkaran.jpeg",title: "lingkaran")),
            ],
          ),
          Row(
            children: [
              Expanded(child: CustomMenu(imageAsset: "assets/persegipanjang.jpeg",title: "persegipanjang")),
              Expanded(child: CustomMenu(imageAsset: "assets/persegipanjang.jpeg",title: "persegipanjang")),
            ],
          ),

        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key, required this.imageAsset, required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.blueGrey.shade300,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [Image.asset(imageAsset, height: 100,),
        Text("title", style: TextStyle(color: Colors.white),),
        ],
      ));
  }
}
