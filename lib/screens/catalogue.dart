// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:ui/widgets/catalogoueCards.dart';

class Catalogue extends StatelessWidget {
  Catalogue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  'Products',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Tab(
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
          title: const Text('Catalougue'),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 13.0),
              child: Icon(Icons.search_outlined),
            ),
          ],
        ),
        body: ListView(
          children: [
            ItemCard(),
          ],
        ),
      ),
    );
  }
}

class ListItem {
  String title;
  String subtitle;
  Image img;
  Text price;
  ListItem(
      {required this.title,
      required this.subtitle,
      required this.img,
      required this.price});
}
