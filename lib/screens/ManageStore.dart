import 'package:flutter/material.dart';
import 'package:ui/widgets/Custom_appbar.dart';
import 'package:ui/widgets/navigationBar.dart';

class ManageStore extends StatelessWidget {
  ManageStore({Key? key}) : super(key: key);

  Widget cardList(
      {required String cardName,
      required cardIcon,
      required iconBgColor,
      required newIcon}) {
    return Container(
      height: 450,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    // padding: EdgeInsets.all(0),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      color: iconBgColor,
                    ),

                    child: Padding(
                      padding: EdgeInsets.all(4),
                      child: cardIcon,
                    ),
                  ),
                  Container(
                    child: newIcon,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Container(
                width: 100,
                child: Text(
                  cardName,
                  style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom_AppBar(
        myAppBarIcon: Icon(null),
        myAppBarTitle: 'Manage Store',
        elvtn: 5,
        bgclr: Colors.blue.shade800,
      ),
      body: Container(
        color: Colors.grey.shade100,
        child: GridView.count(
            childAspectRatio: 1.19,
            // primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              cardList(
                  iconBgColor: Colors.orange,
                  cardName: 'Marketing Design',
                  cardIcon: const Icon(
                    Icons.volume_up_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                  newIcon: null),
              cardList(
                  iconBgColor: Colors.green,
                  cardName: 'Online Payments',
                  cardIcon: const Icon(
                    Icons.currency_rupee_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                  newIcon: null),
              cardList(
                  iconBgColor: Colors.orange[300],
                  cardName: 'Discount Coupons',
                  cardIcon: const Icon(
                    Icons.discount_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                  newIcon: null),
              cardList(
                  iconBgColor: Colors.teal,
                  cardName: 'My Customer',
                  cardIcon: const Icon(
                    Icons.group,
                    color: Colors.white,
                    size: 40,
                  ),
                  newIcon: null),
              cardList(
                  iconBgColor: Colors.grey,
                  cardName: 'Store Qr Code',
                  cardIcon: const Icon(
                    Icons.crop_free_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                  newIcon: null),
              cardList(
                  iconBgColor: Colors.purple,
                  cardName: 'Extra Charges',
                  cardIcon: const Icon(
                    Icons.payment_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                  newIcon: null),
              cardList(
                  iconBgColor: Colors.pink,
                  cardName: 'Order Form',
                  cardIcon: const Icon(
                    Icons.format_align_left_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                  newIcon: const Icon(
                    Icons.fiber_new_rounded,
                    size: 40,
                    color: Colors.green,
                  )),
            ]),
      ),
      bottomNavigationBar: navigationBar(),
    );
  }
}
