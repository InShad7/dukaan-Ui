import 'package:flutter/material.dart';
import 'package:ui/screens/Additional_Information.dart';
import 'package:ui/screens/DukaanPremium.dart';

import 'package:ui/screens/catalogue.dart';
// import 'package:ui/screens/gallery/Gallery.dart';
import 'package:ui/screens/manageStore.dart';
import 'package:ui/screens/order.dart';
import 'package:ui/screens/payments.dart';
import 'package:ui/widgets/Custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List myListItems = [
    'Additional Information',
    'Manage Store',
    'Payments',
    'Dukaan Premium',
    'Order',
    'Catalougue',
    // 'Gallery'
  ];
  List myNavList = [
    Additional_Info(),
    ManageStore(),
    payments(),
    DukaanPremium(),
    OrderScreen(),
    Catalogue(),
    // gallery()
  ];

  Widget myList() {
    return ListView.separated(
        itemBuilder: ((BuildContext context, index) {
          return ListTile(
            title: Text('${myListItems[index]}'),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => myNavList[index]));
            },
          );
        }),
        separatorBuilder: (context, index) => Divider(),
        itemCount: 6);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom_AppBar(
        myAppBarIcon: Icon(null),
        myAppBarTitle: 'Home',
        elvtn: 5,
        bgclr: Colors.blue.shade800,
      ),
      body: Container(
        child: myList(),
      ),
    );
  }
}
